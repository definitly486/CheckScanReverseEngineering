package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jv2;
import defpackage.mg;
import defpackage.qn1;
import defpackage.x07;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class EditProcessor {
    public static final int $stable = 8;
    private TextFieldValue mBufferState = new TextFieldValue(AnnotatedStringKt.emptyAnnotatedString(), TextRange.Companion.m8496getZerod9O1mEE(), (TextRange) null, (jh2) null);
    private EditingBuffer mBuffer = new EditingBuffer(this.mBufferState.getAnnotatedString(), this.mBufferState.m8741getSelectiond9O1mEE(), (jh2) (0 == true ? 1 : 0));

    private final String generateBatchErrorMessage(List<? extends EditCommand> list, EditCommand editCommand) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error while applying EditCommand batch to buffer (length=" + this.mBuffer.getLength$ui_text() + ", composition=" + this.mBuffer.m8653getCompositionMzsxiRA$ui_text() + ", selection=" + ((Object) TextRange.m8494toStringimpl(this.mBuffer.m8654getSelectiond9O1mEE$ui_text())) + "):");
        sb.append('\n');
        qn1.Z(list, sb, "\n", new jv2(0, editCommand, this), 60);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence generateBatchErrorMessage$lambda$0$0(EditCommand editCommand, EditProcessor editProcessor, EditCommand editCommand2) {
        return (editCommand == editCommand2 ? " > " : "   ") + editProcessor.toStringForLog(editCommand2);
    }

    private final String toStringForLog(EditCommand editCommand) {
        if (editCommand instanceof CommitTextCommand) {
            StringBuilder sb = new StringBuilder("CommitTextCommand(text.length=");
            CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
            sb.append(commitTextCommand.getText().length());
            sb.append(", newCursorPosition=");
            sb.append(commitTextCommand.getNewCursorPosition());
            sb.append(')');
            return sb.toString();
        }
        if (editCommand instanceof SetComposingTextCommand) {
            StringBuilder sb2 = new StringBuilder("SetComposingTextCommand(text.length=");
            SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
            sb2.append(setComposingTextCommand.getText().length());
            sb2.append(", newCursorPosition=");
            sb2.append(setComposingTextCommand.getNewCursorPosition());
            sb2.append(')');
            return sb2.toString();
        }
        if (editCommand instanceof SetComposingRegionCommand) {
            return ((SetComposingRegionCommand) editCommand).toString();
        }
        if (editCommand instanceof DeleteSurroundingTextCommand) {
            return ((DeleteSurroundingTextCommand) editCommand).toString();
        }
        if (editCommand instanceof DeleteSurroundingTextInCodePointsCommand) {
            return ((DeleteSurroundingTextInCodePointsCommand) editCommand).toString();
        }
        if (editCommand instanceof SetSelectionCommand) {
            return ((SetSelectionCommand) editCommand).toString();
        }
        if (editCommand instanceof FinishComposingTextCommand) {
            return ((FinishComposingTextCommand) editCommand).toString();
        }
        if (editCommand instanceof BackspaceCommand) {
            return ((BackspaceCommand) editCommand).toString();
        }
        if (editCommand instanceof MoveCursorCommand) {
            return ((MoveCursorCommand) editCommand).toString();
        }
        if (editCommand instanceof DeleteAllCommand) {
            return ((DeleteAllCommand) editCommand).toString();
        }
        String strF = x07.a(editCommand.getClass()).f();
        if (strF == null) {
            strF = "{anonymous EditCommand}";
        }
        return "Unknown EditCommand: ".concat(strF);
    }

    public final TextFieldValue apply(List<? extends EditCommand> list) {
        EditCommand editCommand;
        try {
            int size = list.size();
            int i = 0;
            editCommand = null;
            while (i < size) {
                try {
                    EditCommand editCommand2 = list.get(i);
                    try {
                        editCommand2.applyTo(this.mBuffer);
                        i++;
                        editCommand = editCommand2;
                    } catch (Exception e) {
                        e = e;
                        editCommand = editCommand2;
                        mg.e(generateBatchErrorMessage(list, editCommand), e);
                        return null;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            AnnotatedString annotatedString$ui_text = this.mBuffer.toAnnotatedString$ui_text();
            long jM8654getSelectiond9O1mEE$ui_text = this.mBuffer.m8654getSelectiond9O1mEE$ui_text();
            TextRange textRangeM8479boximpl = TextRange.m8479boximpl(jM8654getSelectiond9O1mEE$ui_text);
            textRangeM8479boximpl.m8495unboximpl();
            TextRange textRange = TextRange.m8490getReversedimpl(this.mBufferState.m8741getSelectiond9O1mEE()) ? null : textRangeM8479boximpl;
            TextFieldValue textFieldValue = new TextFieldValue(annotatedString$ui_text, textRange != null ? textRange.m8495unboximpl() : TextRangeKt.TextRange(TextRange.m8488getMaximpl(jM8654getSelectiond9O1mEE$ui_text), TextRange.m8489getMinimpl(jM8654getSelectiond9O1mEE$ui_text)), this.mBuffer.m8653getCompositionMzsxiRA$ui_text(), (jh2) null);
            this.mBufferState = textFieldValue;
            return textFieldValue;
        } catch (Exception e3) {
            e = e3;
            editCommand = null;
        }
    }

    public final EditingBuffer getMBuffer$ui_text() {
        return this.mBuffer;
    }

    public final TextFieldValue getMBufferState$ui_text() {
        return this.mBufferState;
    }

    public final void reset(TextFieldValue textFieldValue, TextInputSession textInputSession) {
        boolean zE = aa4.e(textFieldValue.m8740getCompositionMzsxiRA(), this.mBuffer.m8653getCompositionMzsxiRA$ui_text());
        boolean z = true;
        boolean z2 = false;
        if (!aa4.e(this.mBufferState.getAnnotatedString().getText(), textFieldValue.getAnnotatedString().getText())) {
            this.mBuffer = new EditingBuffer(textFieldValue.getAnnotatedString(), textFieldValue.m8741getSelectiond9O1mEE(), (jh2) null);
        } else if (TextRange.m8484equalsimpl0(this.mBufferState.m8741getSelectiond9O1mEE(), textFieldValue.m8741getSelectiond9O1mEE())) {
            z = false;
        } else {
            this.mBuffer.setSelection$ui_text(TextRange.m8489getMinimpl(textFieldValue.m8741getSelectiond9O1mEE()), TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE()));
            z2 = true;
            z = false;
        }
        if (textFieldValue.m8740getCompositionMzsxiRA() == null) {
            this.mBuffer.commitComposition$ui_text();
        } else if (!TextRange.m8485getCollapsedimpl(textFieldValue.m8740getCompositionMzsxiRA().m8495unboximpl())) {
            this.mBuffer.setComposition$ui_text(TextRange.m8489getMinimpl(textFieldValue.m8740getCompositionMzsxiRA().m8495unboximpl()), TextRange.m8488getMaximpl(textFieldValue.m8740getCompositionMzsxiRA().m8495unboximpl()));
        }
        if (z || (!z2 && !zE)) {
            this.mBuffer.commitComposition$ui_text();
            textFieldValue = TextFieldValue.m8736copy3r_uNRQ$default(textFieldValue, (AnnotatedString) null, 0L, (TextRange) null, 3, (Object) null);
        }
        TextFieldValue textFieldValue2 = this.mBufferState;
        this.mBufferState = textFieldValue;
        if (textInputSession != null) {
            textInputSession.updateState(textFieldValue2, textFieldValue);
        }
    }

    public final TextFieldValue toTextFieldValue() {
        return this.mBufferState;
    }
}
