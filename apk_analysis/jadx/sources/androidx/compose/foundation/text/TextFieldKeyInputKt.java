package androidx.compose.foundation.text;

import androidx.compose.foundation.text.TextFieldKeyInputKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qe4;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldKeyInputKt {
    /* JADX INFO: renamed from: textFieldKeyInput-2WJ9YEU, reason: not valid java name */
    public static final Modifier m2614textFieldKeyInput2WJ9YEU(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldSelectionManager textFieldSelectionManager, final TextFieldValue textFieldValue, final nl3<? super TextFieldValue, j59> nl3Var, final boolean z, final boolean z2, final OffsetMapping offsetMapping, final UndoManager undoManager, final int i) {
        return ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: er8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return TextFieldKeyInputKt.textFieldKeyInput_2WJ9YEU$lambda$1(legacyTextFieldState, textFieldSelectionManager, textFieldValue, z, z2, offsetMapping, undoManager, nl3Var, i, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textFieldKeyInput_2WJ9YEU$lambda$0(TextFieldValue textFieldValue) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier textFieldKeyInput_2WJ9YEU$lambda$1(LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z, boolean z2, OffsetMapping offsetMapping, UndoManager undoManager, nl3 nl3Var, int i, Modifier modifier, Composer composer, int i2) {
        composer.startReplaceGroup(851809892);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(851809892, i2, -1, "androidx.compose.foundation.text.textFieldKeyInput.<anonymous> (TextFieldKeyInput.kt:256)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = new TextPreparedSelectionState();
            composer.updateRememberedValue(objRememberedValue);
        }
        TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new DeadKeyCombiner();
            composer.updateRememberedValue(objRememberedValue2);
        }
        TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(legacyTextFieldState, textFieldSelectionManager, textFieldValue, z, z2, textPreparedSelectionState, offsetMapping, undoManager, (DeadKeyCombiner) objRememberedValue2, null, nl3Var, i, 512, null);
        Modifier.Companion companion2 = Modifier.Companion;
        boolean zChangedInstance = composer.changedInstance(textFieldKeyInput);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new TextFieldKeyInputKt$textFieldKeyInput$2$1$1(textFieldKeyInput);
            composer.updateRememberedValue(objRememberedValue3);
        }
        Modifier modifierOnKeyEvent = KeyInputModifierKt.onKeyEvent(companion2, (nl3) ((qe4) objRememberedValue3));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierOnKeyEvent;
    }
}
