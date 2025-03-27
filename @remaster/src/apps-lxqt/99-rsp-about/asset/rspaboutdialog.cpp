/* BEGIN_COMMON_COPYRIGHT_HEADER
 * (c)LGPL2+
 *
 * RSp - The Lightweight Desktop Environment
 * https://rsp-project.org
 *
 * Copyright: 2011-12 Razor Team;  2012-2020 RSp Project
 * Authors:
 *   Petr Vanek <petr@scribus.info>
 *
 * This program or library is free software; you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General
 * Public License along with this library; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * END_COMMON_COPYRIGHT_HEADER */

#include "rspaboutdialog.h"
#include "ui_rspaboutdialog.h"
#include "rspaboutdialog_p.h"
#include "technicalinfo.h"
#include "translatorsinfo/translatorsinfo.h"

#include <QDebug>
#include <QDate>
#include <QClipboard>
#include <QDesktopServices>

AboutDialogPrivate::AboutDialogPrivate()
{
    setupUi(this);

    QString css=QStringLiteral("<style TYPE='text/css'> "
                    "body { font-family: sans-serif;} "
                    ".name { font-size: 16pt; } "
                    "a { white-space: nowrap ;} "
                    "h2 { font-size: 10pt;} "
                    "li { line-height: 120%;} "
                    ".techInfoKey { white-space: nowrap ; margin: 0 20px 0 16px; } "
                "</style>")
            ;

    iconLabel->setFixedSize(48, 48);
    iconLabel->setScaledContents(true);
    iconLabel->setPixmap(QPixmap(QStringLiteral(RSP_SHARE_DIR) + QStringLiteral("/graphics/rsp_logo.png")));

    nameLabel->setText(css + titleText());

    aboutBrowser->setHtml(css + aboutText());
    aboutBrowser->viewport()->setAutoFillBackground(false);

    autorsBrowser->setHtml(css + authorsText());
    autorsBrowser->viewport()->setAutoFillBackground(false);

    thanksBrowser->setHtml(css + thanksText());
    thanksBrowser->viewport()->setAutoFillBackground(false);

    translationsBrowser->setHtml(css + translationsText());
    translationsBrowser->viewport()->setAutoFillBackground(false);

    TechnicalInfo info;
    techBrowser->setHtml(info.html());
    techBrowser->viewport()->setAutoFillBackground(false);
    techBrowser->setOpenLinks(false);
    connect(techBrowser, &QTextBrowser::anchorClicked, this, [](const QUrl &link) {
        QDesktopServices::openUrl(link);
    });

    connect(techCopyToClipboardButton, &QPushButton::clicked, this, &AboutDialogPrivate::copyToCliboardTechInfo);
    this->setAttribute(Qt::WA_DeleteOnClose);
    show();

}

QString AboutDialogPrivate::titleText() const
{
    return QStringLiteral("<div class=name>%1</div><div class=ver>%2</div>").arg(QStringLiteral("RSp"),
                tr("Version: %1").arg(QStringLiteral(RSP_VERSION)));

}

QString AboutDialogPrivate::aboutText() const
{
    return QStringLiteral(
        "<p>%1</p>"
        "<p>%2</p>"
        "<p>%3</p>"
        "<p>%4</p>"
        "<p>%5</p>"
        "<p>%6</p>"
        "<p>%7</p>"
        )
        .arg(
            tr("Advanced, easy-to-use, and fast desktop environment based on Qt technologies.",
               "About dialog, 'About' tab text"),
            tr("RSp focus on wayland experience; Desktop Environment is remastery of @lxqt plus @KDEPlasma.",
               "About dialog, 'About' tab text").arg(QStringLiteral("href=\"https://blog.lxde.org/2014/11/21/in-memory-of-razor-qt/\"")),
            tr("Copyright: © %1-%2 %3", "About dialog, 'About' tab text")
                .arg(QStringLiteral("2010"), QDate::currentDate().toString(QStringLiteral("yyyy")), QStringLiteral("RSp team")),
            tr("Homepage: %1", "About dialog, 'About' tab text")
                .arg(QStringLiteral("<a href=\"https://rsp-project.org\">https://rsp-project.org</a>")),
           tr("Wiki: %1", "About dialog, 'About' tab text")
                .arg(QStringLiteral("<a href=\"https://github.com/rsp/rsp/wiki\">https://github.com/rsp/rsp/wiki</a>")),
           tr("Development: %1", "About dialog, 'About' tab text")
                .arg(QStringLiteral("<a href=\"https://github.com/rsp/\">https://github.com/rsp</a>")),
            tr("License: %1", "About dialog, 'About' tab text")
                .arg(QStringLiteral("<a href=\"https://www.gnu.org/licenses/lgpl-2.1.html\">GNU Lesser General Public License version 2.1 or later</a>"
                     " and partly under the "
                     "<a href=\"https://www.gnu.org/licenses/gpl-2.0.html\">GNU General Public License version 2</a>"))
            );
}

QString AboutDialogPrivate::authorsText() const
{
    return QStringLiteral("<p>%1</p><p>%2</p>").arg(
                tr("@RSp is developed by <a %1>@ropsoft</a>.", "About dialog, 'Authors' tab text")
                    .arg(QStringLiteral(" href=\"https://github.com/rsp\"")),
                tr("Focused on wayland; based on @lxqt & @KDE.", "About dialog, 'Authors' tab text")
                    .arg(QStringLiteral("href=\"https://github.com/orgs/rsp/people\""))
                );
}


QString AboutDialogPrivate::thanksText() const
{
    return QStringLiteral(
                "%1"
                "<ul>"
                "<li>@KDE</li>"
                "<li>@lxqt</li>"
                "<li>@ropsoft</li>"
                "</ul>"
                ).arg(tr("Special thanks to everyone!"));
}

QString AboutDialogPrivate::translationsText() const
{
    TranslatorsInfo translatorsInfo;
    return QStringLiteral("%1<p><ul>%2</ul>").arg(
                tr("RSp is going to be translated into many languages in the next major.", "About dialog, 'Translations' tab text")
                .arg(QStringLiteral("href=\"https://translate.rsp-project.org\"")),
                translatorsInfo.asHtml()
                );
}

AboutDialog::AboutDialog()
{
    d_ptr = new AboutDialogPrivate();
}

void AboutDialogPrivate::copyToCliboardTechInfo()
{
    TechnicalInfo info;
    QClipboard *clipboard = QApplication::clipboard();
    clipboard->setText(info.text());
}
