package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.aa4;
import defpackage.b3;
import defpackage.dr8;
import defpackage.gn6;
import defpackage.hg0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.mf5;
import defpackage.n07;
import defpackage.n62;
import defpackage.nl3;
import defpackage.nx0;
import defpackage.qc7;
import defpackage.qn1;
import defpackage.u96;
import defpackage.z2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldKeyInput {
    public static final int $stable = 8;
    private final boolean editable;
    private final int imeAction;
    private final DeadKeyCombiner keyCombiner;
    private final KeyMapping keyMapping;
    private final OffsetMapping offsetMapping;
    private final nl3<TextFieldValue, j59> onValueChange;
    private final TextPreparedSelectionState preparedSelectionState;
    private final TextFieldSelectionManager selectionManager;
    private final boolean singleLine;
    private final LegacyTextFieldState state;
    private final UndoManager undoManager;
    private final TextFieldValue value;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KeyCommand.values().length];
            try {
                iArr[KeyCommand.COPY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KeyCommand.PASTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KeyCommand.CUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[KeyCommand.LEFT_CHAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[KeyCommand.RIGHT_CHAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[KeyCommand.LEFT_WORD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[KeyCommand.RIGHT_WORD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[KeyCommand.PREV_PARAGRAPH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[KeyCommand.NEXT_PARAGRAPH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[KeyCommand.UP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[KeyCommand.DOWN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[KeyCommand.PAGE_UP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[KeyCommand.PAGE_DOWN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[KeyCommand.LINE_START.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[KeyCommand.LINE_END.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[KeyCommand.LINE_LEFT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[KeyCommand.LINE_RIGHT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[KeyCommand.HOME.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[KeyCommand.END.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[KeyCommand.DELETE_PREV_CHAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[KeyCommand.DELETE_NEXT_CHAR.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[KeyCommand.DELETE_PREV_WORD.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[KeyCommand.DELETE_NEXT_WORD.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[KeyCommand.DELETE_FROM_LINE_START.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[KeyCommand.DELETE_TO_LINE_END.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[KeyCommand.NEW_LINE.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[KeyCommand.TAB.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[KeyCommand.SELECT_ALL.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[KeyCommand.SELECT_LEFT_CHAR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[KeyCommand.SELECT_RIGHT_CHAR.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[KeyCommand.SELECT_LEFT_WORD.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[KeyCommand.SELECT_RIGHT_WORD.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[KeyCommand.SELECT_PREV_PARAGRAPH.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[KeyCommand.SELECT_NEXT_PARAGRAPH.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[KeyCommand.SELECT_LINE_START.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[KeyCommand.SELECT_LINE_END.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[KeyCommand.SELECT_LINE_LEFT.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[KeyCommand.SELECT_LINE_RIGHT.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[KeyCommand.SELECT_UP.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[KeyCommand.SELECT_DOWN.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[KeyCommand.SELECT_PAGE_UP.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[KeyCommand.SELECT_PAGE_DOWN.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[KeyCommand.SELECT_HOME.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[KeyCommand.SELECT_END.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[KeyCommand.DESELECT.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[KeyCommand.UNDO.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[KeyCommand.REDO.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[KeyCommand.CHARACTER_PALETTE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[KeyCommand.CENTER.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ TextFieldKeyInput(LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z, boolean z2, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, DeadKeyCombiner deadKeyCombiner, KeyMapping keyMapping, nl3 nl3Var, int i, int i2, jh2 jh2Var) {
        this(legacyTextFieldState, textFieldSelectionManager, (i2 & 4) != 0 ? new TextFieldValue((String) null, 0L, (TextRange) null, 7, (jh2) null) : textFieldValue, (i2 & 8) != 0 ? true : z, (i2 & 16) != 0 ? false : z2, textPreparedSelectionState, (i2 & 64) != 0 ? OffsetMapping.Companion.getIdentity() : offsetMapping, (i2 & 128) != 0 ? null : undoManager, deadKeyCombiner, (i2 & 512) != 0 ? KeyMapping_androidKt.getPlatformDefaultKeyMapping() : keyMapping, (i2 & 1024) != 0 ? new gn6(2) : nl3Var, i, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(TextFieldValue textFieldValue) {
        return j59.a;
    }

    private final void apply(List<? extends EditCommand> list) {
        EditProcessor processor = this.state.getProcessor();
        ArrayList arrayListV0 = qn1.v0(list);
        arrayListV0.add(0, new FinishComposingTextCommand());
        this.onValueChange.invoke(processor.apply(arrayListV0));
    }

    private final void commandExecutionContext(nl3<? super TextFieldPreparedSelection, j59> nl3Var) {
        TextFieldPreparedSelection textFieldPreparedSelection = new TextFieldPreparedSelection(this.value, this.offsetMapping, this.state.getLayoutResult(), this.preparedSelectionState);
        nl3Var.invoke(textFieldPreparedSelection);
        if (TextRange.m8484equalsimpl0(textFieldPreparedSelection.m2962getSelectiond9O1mEE(), this.value.m8741getSelectiond9O1mEE()) && aa4.e(textFieldPreparedSelection.getAnnotatedString(), this.value.getAnnotatedString())) {
            return;
        }
        this.onValueChange.invoke(textFieldPreparedSelection.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 process_ZmokQxo$lambda$1(KeyCommand keyCommand, TextFieldKeyInput textFieldKeyInput, n07 n07Var, TextFieldPreparedSelection textFieldPreparedSelection) {
        TextFieldValue textFieldValueUndo;
        TextFieldValue textFieldValueRedo;
        int i = 4;
        int i2 = 0;
        int i3 = 1;
        switch (WhenMappings.$EnumSwitchMapping$0[keyCommand.ordinal()]) {
            case 1:
                textFieldKeyInput.selectionManager.copy$foundation(false);
                return j59.a;
            case 2:
                textFieldKeyInput.selectionManager.paste$foundation();
                return j59.a;
            case 3:
                textFieldKeyInput.selectionManager.cut$foundation();
                return j59.a;
            case 4:
                textFieldPreparedSelection.collapseLeftOr(new hg0(i3));
                return j59.a;
            case 5:
                textFieldPreparedSelection.collapseRightOr(new nx0(2));
                return j59.a;
            case 6:
                textFieldPreparedSelection.moveCursorLeftByWord();
                return j59.a;
            case 7:
                textFieldPreparedSelection.moveCursorRightByWord();
                return j59.a;
            case 8:
                textFieldPreparedSelection.moveCursorPrevByParagraph();
                return j59.a;
            case 9:
                textFieldPreparedSelection.moveCursorNextByParagraph();
                return j59.a;
            case 10:
                textFieldPreparedSelection.moveCursorUpByLine();
                return j59.a;
            case 11:
                textFieldPreparedSelection.moveCursorDownByLine();
                return j59.a;
            case 12:
                textFieldPreparedSelection.moveCursorUpByPage();
                return j59.a;
            case 13:
                textFieldPreparedSelection.moveCursorDownByPage();
                return j59.a;
            case 14:
                textFieldPreparedSelection.moveCursorToLineStart();
                return j59.a;
            case 15:
                textFieldPreparedSelection.moveCursorToLineEnd();
                return j59.a;
            case 16:
                textFieldPreparedSelection.moveCursorToLineLeftSide();
                return j59.a;
            case 17:
                textFieldPreparedSelection.moveCursorToLineRightSide();
                return j59.a;
            case 18:
                textFieldPreparedSelection.moveCursorToHome();
                return j59.a;
            case 19:
                textFieldPreparedSelection.moveCursorToEnd();
                return j59.a;
            case 20:
                List<EditCommand> listDeleteIfSelectedOr = textFieldPreparedSelection.deleteIfSelectedOr(new dr8(i2));
                if (listDeleteIfSelectedOr != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr);
                    j59 j59Var = j59.a;
                }
                return j59.a;
            case 21:
                List<EditCommand> listDeleteIfSelectedOr2 = textFieldPreparedSelection.deleteIfSelectedOr(new mf5(i));
                if (listDeleteIfSelectedOr2 != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr2);
                    j59 j59Var2 = j59.a;
                }
                return j59.a;
            case 22:
                List<EditCommand> listDeleteIfSelectedOr3 = textFieldPreparedSelection.deleteIfSelectedOr(new z2(i));
                if (listDeleteIfSelectedOr3 != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr3);
                    j59 j59Var3 = j59.a;
                }
                return j59.a;
            case 23:
                List<EditCommand> listDeleteIfSelectedOr4 = textFieldPreparedSelection.deleteIfSelectedOr(new n62(i));
                if (listDeleteIfSelectedOr4 != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr4);
                    j59 j59Var4 = j59.a;
                }
                return j59.a;
            case 24:
                List<EditCommand> listDeleteIfSelectedOr5 = textFieldPreparedSelection.deleteIfSelectedOr(new b3(3));
                if (listDeleteIfSelectedOr5 != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr5);
                    j59 j59Var5 = j59.a;
                }
                return j59.a;
            case 25:
                List<EditCommand> listDeleteIfSelectedOr6 = textFieldPreparedSelection.deleteIfSelectedOr(new qc7(i3));
                if (listDeleteIfSelectedOr6 != null) {
                    textFieldKeyInput.apply(listDeleteIfSelectedOr6);
                    j59 j59Var6 = j59.a;
                }
                return j59.a;
            case 26:
                if (textFieldKeyInput.singleLine) {
                    n07Var.b = textFieldKeyInput.state.getOnImeActionPerformedWithResult().invoke(ImeAction.m8656boximpl(textFieldKeyInput.imeAction)).booleanValue();
                } else {
                    textFieldKeyInput.apply(new CommitTextCommand("\n", 1));
                }
                j59 j59Var7 = j59.a;
                return j59.a;
            case 27:
                if (textFieldKeyInput.singleLine) {
                    n07Var.b = false;
                } else {
                    textFieldKeyInput.apply(new CommitTextCommand("\t", 1));
                }
                j59 j59Var8 = j59.a;
                return j59.a;
            case 28:
                textFieldPreparedSelection.selectAll();
                return j59.a;
            case 29:
                textFieldPreparedSelection.moveCursorLeft().selectMovement();
                return j59.a;
            case 30:
                textFieldPreparedSelection.moveCursorRight().selectMovement();
                return j59.a;
            case 31:
                textFieldPreparedSelection.moveCursorLeftByWord().selectMovement();
                return j59.a;
            case 32:
                textFieldPreparedSelection.moveCursorRightByWord().selectMovement();
                return j59.a;
            case 33:
                textFieldPreparedSelection.moveCursorPrevByParagraph().selectMovement();
                return j59.a;
            case 34:
                textFieldPreparedSelection.moveCursorNextByParagraph().selectMovement();
                return j59.a;
            case 35:
                textFieldPreparedSelection.moveCursorToLineStart().selectMovement();
                return j59.a;
            case 36:
                textFieldPreparedSelection.moveCursorToLineEnd().selectMovement();
                return j59.a;
            case 37:
                textFieldPreparedSelection.moveCursorToLineLeftSide().selectMovement();
                return j59.a;
            case 38:
                textFieldPreparedSelection.moveCursorToLineRightSide().selectMovement();
                return j59.a;
            case 39:
                textFieldPreparedSelection.moveCursorUpByLine().selectMovement();
                return j59.a;
            case 40:
                textFieldPreparedSelection.moveCursorDownByLine().selectMovement();
                return j59.a;
            case 41:
                textFieldPreparedSelection.moveCursorUpByPage().selectMovement();
                return j59.a;
            case 42:
                textFieldPreparedSelection.moveCursorDownByPage().selectMovement();
                return j59.a;
            case 43:
                textFieldPreparedSelection.moveCursorToHome().selectMovement();
                return j59.a;
            case 44:
                textFieldPreparedSelection.moveCursorToEnd().selectMovement();
                return j59.a;
            case 45:
                textFieldPreparedSelection.deselect();
                return j59.a;
            case 46:
                UndoManager undoManager = textFieldKeyInput.undoManager;
                if (undoManager != null) {
                    undoManager.makeSnapshot(textFieldPreparedSelection.getValue());
                }
                UndoManager undoManager2 = textFieldKeyInput.undoManager;
                if (undoManager2 != null && (textFieldValueUndo = undoManager2.undo()) != null) {
                    textFieldKeyInput.onValueChange.invoke(textFieldValueUndo);
                    j59 j59Var9 = j59.a;
                }
                return j59.a;
            case 47:
                UndoManager undoManager3 = textFieldKeyInput.undoManager;
                if (undoManager3 != null && (textFieldValueRedo = undoManager3.redo()) != null) {
                    textFieldKeyInput.onValueChange.invoke(textFieldValueRedo);
                    j59 j59Var10 = j59.a;
                }
                return j59.a;
            case 48:
                KeyEventHelpers_androidKt.showCharacterPalette();
            case 49:
                j59 j59Var11 = j59.a;
                return j59.a;
            default:
                me0.e();
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 process_ZmokQxo$lambda$1$0(TextFieldPreparedSelection textFieldPreparedSelection) {
        textFieldPreparedSelection.moveCursorLeft();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 process_ZmokQxo$lambda$1$1(TextFieldPreparedSelection textFieldPreparedSelection) {
        textFieldPreparedSelection.moveCursorRight();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$2(TextFieldPreparedSelection textFieldPreparedSelection) {
        int precedingCodePointOrEmojiStartIndex = textFieldPreparedSelection.getPrecedingCodePointOrEmojiStartIndex();
        if (precedingCodePointOrEmojiStartIndex == -1) {
            return null;
        }
        return new DeleteSurroundingTextCommand(TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()) - precedingCodePointOrEmojiStartIndex, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$3(TextFieldPreparedSelection textFieldPreparedSelection) {
        int nextCharacterIndex = textFieldPreparedSelection.getNextCharacterIndex();
        if (nextCharacterIndex != -1) {
            return new DeleteSurroundingTextCommand(0, nextCharacterIndex - TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$4(TextFieldPreparedSelection textFieldPreparedSelection) {
        Integer previousWordOffset = textFieldPreparedSelection.getPreviousWordOffset();
        if (previousWordOffset == null) {
            return null;
        }
        return new DeleteSurroundingTextCommand(TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()) - previousWordOffset.intValue(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$5(TextFieldPreparedSelection textFieldPreparedSelection) {
        Integer nextWordOffset = textFieldPreparedSelection.getNextWordOffset();
        if (nextWordOffset != null) {
            return new DeleteSurroundingTextCommand(0, nextWordOffset.intValue() - TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$6(TextFieldPreparedSelection textFieldPreparedSelection) {
        Integer lineStartByOffset = textFieldPreparedSelection.getLineStartByOffset();
        if (lineStartByOffset == null) {
            return null;
        }
        return new DeleteSurroundingTextCommand(TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()) - lineStartByOffset.intValue(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand process_ZmokQxo$lambda$1$7(TextFieldPreparedSelection textFieldPreparedSelection) {
        Integer lineEndByOffset = textFieldPreparedSelection.getLineEndByOffset();
        if (lineEndByOffset != null) {
            return new DeleteSurroundingTextCommand(0, lineEndByOffset.intValue() - TextRange.m8486getEndimpl(textFieldPreparedSelection.m2962getSelectiond9O1mEE()));
        }
        return null;
    }

    /* JADX INFO: renamed from: typedCommand-ZmokQxo, reason: not valid java name */
    private final CommitTextCommand m2612typedCommandZmokQxo(KeyEvent keyEvent) {
        Integer numM2493consumeZmokQxo;
        if (TextFieldKeyInput_androidKt.m2617isTypedEventZmokQxo(keyEvent) && (numM2493consumeZmokQxo = this.keyCombiner.m2493consumeZmokQxo(keyEvent)) != null) {
            return new CommitTextCommand(StringsHelpers_jvmAndAndroidKt.appendCodePointX(new StringBuilder(), numM2493consumeZmokQxo.intValue()).toString(), 1);
        }
        return null;
    }

    public final boolean getEditable() {
        return this.editable;
    }

    public final OffsetMapping getOffsetMapping() {
        return this.offsetMapping;
    }

    public final TextPreparedSelectionState getPreparedSelectionState() {
        return this.preparedSelectionState;
    }

    public final TextFieldSelectionManager getSelectionManager() {
        return this.selectionManager;
    }

    public final boolean getSingleLine() {
        return this.singleLine;
    }

    public final LegacyTextFieldState getState() {
        return this.state;
    }

    public final UndoManager getUndoManager() {
        return this.undoManager;
    }

    public final TextFieldValue getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: process-ZmokQxo, reason: not valid java name */
    public final boolean m2613processZmokQxo(KeyEvent keyEvent) {
        final KeyCommand keyCommandMo2496mapZmokQxo;
        CommitTextCommand commitTextCommandM2612typedCommandZmokQxo = m2612typedCommandZmokQxo(keyEvent);
        if (commitTextCommandM2612typedCommandZmokQxo != null) {
            if (!this.editable) {
                return false;
            }
            apply(commitTextCommandM2612typedCommandZmokQxo);
            this.preparedSelectionState.resetCachedX();
            return true;
        }
        if (!KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), KeyEventType.Companion.m7398getKeyDownCS__XNY()) || (keyCommandMo2496mapZmokQxo = this.keyMapping.mo2496mapZmokQxo(keyEvent)) == null) {
            return false;
        }
        if (keyCommandMo2496mapZmokQxo.getEditsText() && !this.editable) {
            return false;
        }
        final n07 n07Var = new n07();
        n07Var.b = true;
        commandExecutionContext(new nl3() { // from class: cr8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldKeyInput.process_ZmokQxo$lambda$1(keyCommandMo2496mapZmokQxo, this, n07Var, (TextFieldPreparedSelection) obj);
            }
        });
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.forceNextSnapshot();
        }
        return n07Var.b;
    }

    private final void apply(EditCommand editCommand) {
        apply(u96.h(editCommand));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TextFieldKeyInput(LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z, boolean z2, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, DeadKeyCombiner deadKeyCombiner, KeyMapping keyMapping, nl3<? super TextFieldValue, j59> nl3Var, int i) {
        this.state = legacyTextFieldState;
        this.selectionManager = textFieldSelectionManager;
        this.value = textFieldValue;
        this.editable = z;
        this.singleLine = z2;
        this.preparedSelectionState = textPreparedSelectionState;
        this.offsetMapping = offsetMapping;
        this.undoManager = undoManager;
        this.keyCombiner = deadKeyCombiner;
        this.keyMapping = keyMapping;
        this.onValueChange = nl3Var;
        this.imeAction = i;
    }

    public /* synthetic */ TextFieldKeyInput(LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z, boolean z2, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, DeadKeyCombiner deadKeyCombiner, KeyMapping keyMapping, nl3 nl3Var, int i, jh2 jh2Var) {
        this(legacyTextFieldState, textFieldSelectionManager, textFieldValue, z, z2, textPreparedSelectionState, offsetMapping, undoManager, deadKeyCombiner, keyMapping, nl3Var, i);
    }
}
