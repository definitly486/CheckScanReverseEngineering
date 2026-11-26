package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.aa4;
import defpackage.kx6;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class SetComposingTextCommand implements EditCommand {
    public static final int $stable = 0;
    private final AnnotatedString annotatedString;
    private final int newCursorPosition;

    /* JADX WARN: Multi-variable type inference failed */
    public SetComposingTextCommand(String str, int i) {
        this(new AnnotatedString(str, null, 2, 0 == true ? 1 : 0), i);
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer editingBuffer) {
        if (editingBuffer.hasComposition$ui_text()) {
            int compositionStart$ui_text = editingBuffer.getCompositionStart$ui_text();
            editingBuffer.replace$ui_text(editingBuffer.getCompositionStart$ui_text(), editingBuffer.getCompositionEnd$ui_text(), getText());
            if (getText().length() > 0) {
                editingBuffer.setComposition$ui_text(compositionStart$ui_text, getText().length() + compositionStart$ui_text);
            }
        } else {
            int selectionStart$ui_text = editingBuffer.getSelectionStart$ui_text();
            editingBuffer.replace$ui_text(editingBuffer.getSelectionStart$ui_text(), editingBuffer.getSelectionEnd$ui_text(), getText());
            if (getText().length() > 0) {
                editingBuffer.setComposition$ui_text(selectionStart$ui_text, getText().length() + selectionStart$ui_text);
            }
        }
        int cursor$ui_text = editingBuffer.getCursor$ui_text();
        int i = this.newCursorPosition;
        editingBuffer.setCursor$ui_text(kx6.f(i > 0 ? (cursor$ui_text + i) - 1 : (cursor$ui_text + i) - getText().length(), 0, editingBuffer.getLength$ui_text()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) obj;
        return aa4.e(getText(), setComposingTextCommand.getText()) && this.newCursorPosition == setComposingTextCommand.newCursorPosition;
    }

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    public final int getNewCursorPosition() {
        return this.newCursorPosition;
    }

    public final String getText() {
        return this.annotatedString.getText();
    }

    public int hashCode() {
        return (getText().hashCode() * 31) + this.newCursorPosition;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SetComposingTextCommand(text='");
        sb.append(getText());
        sb.append("', newCursorPosition=");
        return rg.h(sb, this.newCursorPosition, ')');
    }

    public SetComposingTextCommand(AnnotatedString annotatedString, int i) {
        this.annotatedString = annotatedString;
        this.newCursorPosition = i;
    }
}
