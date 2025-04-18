
from frontend import *


class Dialog(Gtk.MessageDialog):
    def __init__(self, style, buttons, title, text, text2=None, parent=None):
        err(text)
        Gtk.MessageDialog.__init__(self, parent, 0, style, buttons)
        self.set_position(Gtk.WindowPosition.CENTER)
        self.set_icon_from_file("./branding/icon.png")
        self.set_title(title)
        if text:
            self.set_property("text",text)
            self.desc = text[:30] + ' ...' if len(text) > 30 else text
        if text2:
            self.set_property("secondary_text",text2)
        if parent:
            self.set_transient_for(parent)
            self.set_modal(True)

    def show(self):
        try:
            response = self.run()
            if response in (Gtk.ResponseType.YES, Gtk.ResponseType.APPLY,
                            Gtk.ResponseType.OK, Gtk.ResponseType.ACCEPT):
                return True
            else:
                return False
        finally:
            self.destroy()


def MessageDialog(*args):
    dialog = Dialog(Gtk.MessageType.INFO, Gtk.ButtonsType.NONE, *args)
    dialog.add_button(_("OK"), Gtk.ResponseType.OK)
    return dialog.show()


def QuestionDialog(*args):
    dialog = Dialog(Gtk.MessageType.QUESTION, Gtk.ButtonsType.NONE, *args)
    dialog.add_button(_("No"), Gtk.ResponseType.NO)
    dialog.add_button(_("Yes"), Gtk.ResponseType.YES)
    return dialog.show()


def WarningDialog(*args):
    dialog = Dialog(Gtk.MessageType.WARNING, Gtk.ButtonsType.NONE, *args)
    dialog.add_button(_("OK"), Gtk.ResponseType.OK)
    return dialog.show()


def ErrorDialog(*args):
    dialog = Dialog(Gtk.MessageType.ERROR, Gtk.ButtonsType.NONE, *args)
    dialog.add_button(_("OK"), Gtk.ResponseType.OK)
    return dialog.show()
