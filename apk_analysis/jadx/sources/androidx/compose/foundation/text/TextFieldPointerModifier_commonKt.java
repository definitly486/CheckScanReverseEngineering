package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.TextFieldPointerModifier_commonKt;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.input.OffsetMapping;
import defpackage.a32;
import defpackage.bz0;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldPointerModifier_commonKt {
    public static final Modifier defaultTextFieldPointer(Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final boolean z, MutableInteractionSource mutableInteractionSource, final LegacyTextFieldState legacyTextFieldState, final FocusRequester focusRequester, final boolean z2, final OffsetMapping offsetMapping) {
        return PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(TextFieldPressGestureFilterKt.tapPressTextFieldModifier(SelectionGesturesKt.updateSelectionTouchMode(modifier, new bz0(legacyTextFieldState, 4)), mutableInteractionSource, z, new nl3() { // from class: kr8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldPointerModifier_commonKt.defaultTextFieldPointer$lambda$1(legacyTextFieldState, focusRequester, z2, z, textFieldSelectionManager, offsetMapping, (Offset) obj);
            }
        }), textFieldSelectionManager.getMouseSelectionObserver$foundation(), textFieldSelectionManager.getTouchSelectionObserver$foundation(), new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt.defaultTextFieldPointer.3
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures(pointerInputScope, textFieldSelectionManager.getMouseSelectionObserver$foundation(), textFieldSelectionManager.getTouchSelectionObserver$foundation(), e02Var);
                return objAwaitSelectionGestures == a32.COROUTINE_SUSPENDED ? objAwaitSelectionGestures : j59.a;
            }
        }), PointerIcon.Companion.getText(), false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 defaultTextFieldPointer$lambda$0(LegacyTextFieldState legacyTextFieldState, boolean z) {
        legacyTextFieldState.setInTouchMode(z);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 defaultTextFieldPointer$lambda$1(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z, boolean z2, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, Offset offset) {
        CoreTextFieldKt.requestFocusAndShowKeyboardIfNeeded(legacyTextFieldState, focusRequester, !z);
        if (legacyTextFieldState.getHasFocus() && z2) {
            if (legacyTextFieldState.getHandleState() != HandleState.Selection) {
                TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                if (layoutResult != null) {
                    TextFieldDelegate.Companion.m2607setCursorOffsetULxng0E$foundation(offset.m5997unboximpl(), layoutResult, legacyTextFieldState.getProcessor(), offsetMapping, legacyTextFieldState.getOnValueChange());
                    if (legacyTextFieldState.getTextDelegate().getText().length() > 0) {
                        legacyTextFieldState.setHandleState(HandleState.Cursor);
                    }
                }
            } else {
                textFieldSelectionManager.m3037deselect_kEHs6E$foundation(offset);
            }
        }
        return j59.a;
    }
}
