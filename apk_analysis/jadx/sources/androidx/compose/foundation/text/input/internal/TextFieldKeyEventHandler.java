package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import androidx.collection.MutableLongSet;
import androidx.compose.foundation.text.DeadKeyCombiner;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.KeyEventHelpers_androidKt;
import androidx.compose.foundation.text.KeyMapping;
import androidx.compose.foundation.text.KeyMapping_androidKt;
import androidx.compose.foundation.text.StringsHelpers_jvmAndAndroidKt;
import androidx.compose.foundation.text.TextFieldKeyInput_androidKt;
import androidx.compose.foundation.text.input.internal.selection.SelectionMovementDeletionContext;
import androidx.compose.foundation.text.input.internal.selection.TextFieldPreparedSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.TextRange;
import androidx.media3.muxer.MuxerUtil;
import defpackage.eg0;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.t2;

/* JADX INFO: loaded from: classes.dex */
public abstract class TextFieldKeyEventHandler {
    public static final int $stable = 8;
    private MutableLongSet currentlyConsumedDownKeys;
    private final TextFieldPreparedSelectionState preparedSelectionState = new TextFieldPreparedSelectionState();
    private final DeadKeyCombiner deadKeyCombiner = new DeadKeyCombiner();
    private final KeyMapping keyMapping = KeyMapping_androidKt.getPlatformDefaultKeyMapping();

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

    private final float getVisibleTextLayoutHeight(TextLayoutState textLayoutState) {
        LayoutCoordinates textLayoutNodeCoordinates = textLayoutState.getTextLayoutNodeCoordinates();
        if (textLayoutNodeCoordinates == null) {
            return Float.NaN;
        }
        Rect rectLocalBoundingBoxOf$default = null;
        if (!textLayoutNodeCoordinates.isAttached()) {
            textLayoutNodeCoordinates = null;
        }
        if (textLayoutNodeCoordinates == null) {
            return Float.NaN;
        }
        LayoutCoordinates decoratorNodeCoordinates = textLayoutState.getDecoratorNodeCoordinates();
        if (decoratorNodeCoordinates != null) {
            if (!decoratorNodeCoordinates.isAttached()) {
                decoratorNodeCoordinates = null;
            }
            if (decoratorNodeCoordinates != null) {
                rectLocalBoundingBoxOf$default = LayoutCoordinates.localBoundingBoxOf$default(decoratorNodeCoordinates, textLayoutNodeCoordinates, false, 2, null);
            }
        }
        if (rectLocalBoundingBoxOf$default != null) {
            return Float.intBitsToFloat((int) (rectLocalBoundingBoxOf$default.m6020getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Float.NaN;
    }

    /* JADX WARN: Code duplicated, block: B:76:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x0218  */
    /* JADX WARN: Code duplicated, block: B:88:0x0225  */
    /* JADX WARN: Code duplicated, block: B:92:0x0239  */
    /* JADX WARN: Code duplicated, block: B:94:0x0242  */
    /* JADX INFO: renamed from: processKeyDownEvent-q0GpTC0, reason: not valid java name */
    private final boolean m2807processKeyDownEventq0GpTC0(KeyEvent keyEvent, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, nl3<? super KeyCommand, ? extends j59> nl3Var, SoftwareKeyboardController softwareKeyboardController, boolean z, boolean z2, ll3<Boolean> ll3Var) {
        WedgeAffinity wedgeAffinity;
        Integer numM2493consumeZmokQxo;
        boolean zBooleanValue = false;
        int i = 1;
        if (TextFieldKeyInput_androidKt.m2617isTypedEventZmokQxo(keyEvent) && (numM2493consumeZmokQxo = this.deadKeyCombiner.m2493consumeZmokQxo(keyEvent)) != null) {
            String string = StringsHelpers_jvmAndAndroidKt.appendCodePointX(new StringBuilder(2), numM2493consumeZmokQxo.intValue()).toString();
            if (!z) {
                return false;
            }
            TransformedTextFieldState.replaceSelectedText$default(transformedTextFieldState, string, true, null, !TextFieldKeyEventHandler_androidKt.m2809isFromSoftKeyboardZmokQxo(keyEvent), 4, null);
            this.preparedSelectionState.resetCachedX();
            return true;
        }
        KeyCommand keyCommandMo2496mapZmokQxo = this.keyMapping.mo2496mapZmokQxo(keyEvent);
        if (keyCommandMo2496mapZmokQxo != null && (!keyCommandMo2496mapZmokQxo.getEditsText() || z)) {
            SelectionMovementDeletionContext selectionMovementDeletionContext = new SelectionMovementDeletionContext(transformedTextFieldState, textLayoutState.getLayoutResult(), TextFieldKeyEventHandler_androidKt.m2809isFromSoftKeyboardZmokQxo(keyEvent), getVisibleTextLayoutHeight(textLayoutState), this.preparedSelectionState);
            switch (WhenMappings.$EnumSwitchMapping$0[keyCommandMo2496mapZmokQxo.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    nl3Var.invoke(keyCommandMo2496mapZmokQxo);
                    j59 j59Var = j59.a;
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP || keyCommandMo2496mapZmokQxo == KeyCommand.DOWN || keyCommandMo2496mapZmokQxo == KeyCommand.LEFT_CHAR || keyCommandMo2496mapZmokQxo == KeyCommand.RIGHT_CHAR) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null && (wedgeAffinity = selectionMovementDeletionContext.getWedgeAffinity()) != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 4:
                    selectionMovementDeletionContext.collapseLeftOr(new eg0(i));
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 5:
                    selectionMovementDeletionContext.collapseRightOr(new t2(3));
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 6:
                    selectionMovementDeletionContext.moveCursorLeftByWord();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 7:
                    selectionMovementDeletionContext.moveCursorRightByWord();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 8:
                    selectionMovementDeletionContext.moveCursorPrevByParagraph();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 9:
                    selectionMovementDeletionContext.moveCursorNextByParagraph();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 10:
                    selectionMovementDeletionContext.moveCursorUpByLine();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 11:
                    selectionMovementDeletionContext.moveCursorDownByLine();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 12:
                    selectionMovementDeletionContext.moveCursorUpByPage();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 13:
                    selectionMovementDeletionContext.moveCursorDownByPage();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 14:
                    selectionMovementDeletionContext.moveCursorToLineStart();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 15:
                    selectionMovementDeletionContext.moveCursorToLineEnd();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 16:
                    selectionMovementDeletionContext.moveCursorToLineLeftSide();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 17:
                    selectionMovementDeletionContext.moveCursorToLineRightSide();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 18:
                    selectionMovementDeletionContext.moveCursorToHome();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 19:
                    selectionMovementDeletionContext.moveCursorToEnd();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 20:
                    selectionMovementDeletionContext.moveCursorPrevByCodePointOrEmoji().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 21:
                    selectionMovementDeletionContext.moveCursorNextByChar().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 22:
                    selectionMovementDeletionContext.moveCursorPrevByWord().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 23:
                    selectionMovementDeletionContext.moveCursorNextByWord().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 24:
                    selectionMovementDeletionContext.moveCursorToLineStart().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 25:
                    selectionMovementDeletionContext.moveCursorToLineEnd().deleteMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 26:
                    if (z2) {
                        zBooleanValue = ll3Var.invoke().booleanValue();
                    } else {
                        TransformedTextFieldState.replaceSelectedText$default(transformedTextFieldState, "\n", true, null, !TextFieldKeyEventHandler_androidKt.m2809isFromSoftKeyboardZmokQxo(keyEvent), 4, null);
                        zBooleanValue = true;
                    }
                    j59 j59Var2 = j59.a;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 27:
                    if (!z2) {
                        TransformedTextFieldState.replaceSelectedText$default(transformedTextFieldState, "\t", true, null, !TextFieldKeyEventHandler_androidKt.m2809isFromSoftKeyboardZmokQxo(keyEvent), 4, null);
                        zBooleanValue = true;
                    }
                    j59 j59Var3 = j59.a;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 28:
                    selectionMovementDeletionContext.selectAll();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 29:
                    selectionMovementDeletionContext.moveCursorLeftByChar().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 30:
                    selectionMovementDeletionContext.moveCursorRightByChar().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 31:
                    selectionMovementDeletionContext.moveCursorLeftByWord().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 32:
                    selectionMovementDeletionContext.moveCursorRightByWord().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 33:
                    selectionMovementDeletionContext.moveCursorPrevByParagraph().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 34:
                    selectionMovementDeletionContext.moveCursorNextByParagraph().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 35:
                    selectionMovementDeletionContext.moveCursorToLineStart().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 36:
                    selectionMovementDeletionContext.moveCursorToLineEnd().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 37:
                    selectionMovementDeletionContext.moveCursorToLineLeftSide().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 38:
                    selectionMovementDeletionContext.moveCursorToLineRightSide().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 39:
                    selectionMovementDeletionContext.moveCursorUpByLine().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 40:
                    selectionMovementDeletionContext.moveCursorDownByLine().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 41:
                    selectionMovementDeletionContext.moveCursorUpByPage().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 42:
                    selectionMovementDeletionContext.moveCursorDownByPage().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 43:
                    selectionMovementDeletionContext.moveCursorToHome().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 44:
                    selectionMovementDeletionContext.moveCursorToEnd().selectMovement();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 45:
                    selectionMovementDeletionContext.deselect();
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 46:
                    transformedTextFieldState.undo();
                    j59 j59Var4 = j59.a;
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 47:
                    transformedTextFieldState.redo();
                    j59 j59Var5 = j59.a;
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 48:
                    KeyEventHelpers_androidKt.showCharacterPalette();
                    j59 j59Var6 = j59.a;
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                case 49:
                    softwareKeyboardController.show();
                    j59 j59Var7 = j59.a;
                    zBooleanValue = true;
                    if (keyCommandMo2496mapZmokQxo != KeyCommand.UP) {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    } else {
                        zBooleanValue = !TextRange.m8484equalsimpl0(selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE(), selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (!TextRange.m8484equalsimpl0(selectionMovementDeletionContext.m2858getSelectiond9O1mEE(), selectionMovementDeletionContext.getInitialValue().m2665getSelectiond9O1mEE())) {
                        transformedTextFieldState.m2838selectCharsIn5zctL8(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
                    }
                    if (selectionMovementDeletionContext.getWedgeAffinity() != null) {
                        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getUntransformedText().m2665getSelectiond9O1mEE())) {
                            transformedTextFieldState.setSelectionWedgeAffinity(new SelectionWedgeAffinity(wedgeAffinity));
                            return zBooleanValue;
                        }
                        transformedTextFieldState.setSelectionWedgeAffinity(SelectionWedgeAffinity.copy$default(selectionMovementDeletionContext.getInitialWedgeAffinity(), null, wedgeAffinity, 1, null));
                    }
                    break;
                default:
                    me0.e();
                    return false;
            }
        }
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 processKeyDownEvent_q0GpTC0$lambda$0$0(SelectionMovementDeletionContext selectionMovementDeletionContext) {
        selectionMovementDeletionContext.moveCursorLeftByChar();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 processKeyDownEvent_q0GpTC0$lambda$0$1(SelectionMovementDeletionContext selectionMovementDeletionContext) {
        selectionMovementDeletionContext.moveCursorRightByChar();
        return j59.a;
    }

    /* JADX INFO: renamed from: onKeyEvent-8zsqlwg */
    public boolean mo2691onKeyEvent8zsqlwg(KeyEvent keyEvent, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, TextFieldSelectionState textFieldSelectionState, nl3<? super KeyCommand, ? extends j59> nl3Var, SoftwareKeyboardController softwareKeyboardController, boolean z, boolean z2, ll3<Boolean> ll3Var) {
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        int iM7402getTypeZmokQxo = KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent);
        KeyEventType.Companion companion = KeyEventType.Companion;
        if (KeyEventType.m7394equalsimpl0(iM7402getTypeZmokQxo, companion.m7399getKeyUpCS__XNY())) {
            MutableLongSet mutableLongSet = this.currentlyConsumedDownKeys;
            if (mutableLongSet == null || !mutableLongSet.contains(jM7401getKeyZmokQxo)) {
                return false;
            }
            MutableLongSet mutableLongSet2 = this.currentlyConsumedDownKeys;
            if (mutableLongSet2 != null) {
                mutableLongSet2.remove(jM7401getKeyZmokQxo);
            }
            return true;
        }
        if (KeyEventType.m7394equalsimpl0(KeyEvent_androidKt.m7402getTypeZmokQxo(keyEvent), companion.m7400getUnknownCS__XNY()) && !TextFieldKeyInput_androidKt.m2617isTypedEventZmokQxo(keyEvent)) {
            return false;
        }
        boolean zM2807processKeyDownEventq0GpTC0 = m2807processKeyDownEventq0GpTC0(keyEvent, transformedTextFieldState, textLayoutState, nl3Var, softwareKeyboardController, z, z2, ll3Var);
        if (zM2807processKeyDownEventq0GpTC0) {
            MutableLongSet mutableLongSet3 = this.currentlyConsumedDownKeys;
            if (mutableLongSet3 == null) {
                mutableLongSet3 = new MutableLongSet(3);
                this.currentlyConsumedDownKeys = mutableLongSet3;
            }
            mutableLongSet3.plusAssign(jM7401getKeyZmokQxo);
        }
        return zM2807processKeyDownEventq0GpTC0;
    }

    /* JADX INFO: renamed from: onPreKeyEvent-MyFupTE, reason: not valid java name */
    public boolean m2808onPreKeyEventMyFupTE(KeyEvent keyEvent, TransformedTextFieldState transformedTextFieldState, TextFieldSelectionState textFieldSelectionState, FocusManager focusManager, SoftwareKeyboardController softwareKeyboardController) {
        if (TextRange.m8485getCollapsedimpl(transformedTextFieldState.getVisualText().m2665getSelectiond9O1mEE()) || !KeyEventHelpers_androidKt.m2495cancelsTextSelectionZmokQxo(keyEvent)) {
            return false;
        }
        textFieldSelectionState.deselect();
        return true;
    }
}
