package androidx.compose.foundation.text;

import androidx.compose.foundation.text.TextFieldCursorKt;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.kq8;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCursorKt {
    public static final Modifier cursor(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldValue textFieldValue, final OffsetMapping offsetMapping, final Brush brush, boolean z) {
        return z ? ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: lq8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return TextFieldCursorKt.cursor$lambda$0(brush, legacyTextFieldState, textFieldValue, offsetMapping, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier cursor$lambda$0(Brush brush, LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping, Modifier modifier, Composer composer, int i) {
        Modifier modifierDrawWithContent;
        composer.startReplaceGroup(-84507373);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-84507373, i, -1, "androidx.compose.foundation.text.cursor.<anonymous> (TextFieldCursor.kt:46)");
        }
        boolean zBooleanValue = ((Boolean) composer.consume(CompositionLocalsKt.getLocalCursorBlinkEnabled())).booleanValue();
        boolean zChanged = composer.changed(zBooleanValue);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new CursorAnimationState(zBooleanValue);
            composer.updateRememberedValue(objRememberedValue);
        }
        CursorAnimationState cursorAnimationState = (CursorAnimationState) objRememberedValue;
        boolean z = ((brush instanceof SolidColor) && ((SolidColor) brush).m6588getValue0d7_KjU() == 16) ? false : true;
        if (((WindowInfo) composer.consume(CompositionLocalsKt.getLocalWindowInfo())).isWindowFocused() && legacyTextFieldState.getHasFocus() && TextRange.m8485getCollapsedimpl(textFieldValue.m8741getSelectiond9O1mEE()) && z) {
            composer.startReplaceGroup(-707487962);
            AnnotatedString annotatedString = textFieldValue.getAnnotatedString();
            TextRange textRangeM8479boximpl = TextRange.m8479boximpl(textFieldValue.m8741getSelectiond9O1mEE());
            boolean zChangedInstance = composer.changedInstance(cursorAnimationState);
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new TextFieldCursorKt$cursor$1$1$1(cursorAnimationState, null);
                composer.updateRememberedValue(objRememberedValue2);
            }
            EffectsKt.LaunchedEffect(annotatedString, textRangeM8479boximpl, (bm3) objRememberedValue2, composer, 0);
            boolean zChangedInstance2 = composer.changedInstance(cursorAnimationState) | composer.changedInstance(offsetMapping) | composer.changed(textFieldValue) | composer.changedInstance(legacyTextFieldState) | composer.changed(brush);
            Object objRememberedValue3 = composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                Object kq8Var = new kq8(cursorAnimationState, offsetMapping, textFieldValue, legacyTextFieldState, brush, 0);
                composer.updateRememberedValue(kq8Var);
                objRememberedValue3 = kq8Var;
            }
            modifierDrawWithContent = DrawModifierKt.drawWithContent(modifier, (nl3) objRememberedValue3);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-705473241);
            composer.endReplaceGroup();
            modifierDrawWithContent = Modifier.Companion;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierDrawWithContent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 cursor$lambda$0$2$0(CursorAnimationState cursorAnimationState, OffsetMapping offsetMapping, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, Brush brush, ContentDrawScope contentDrawScope) {
        Rect rect;
        TextLayoutResult value;
        contentDrawScope.drawContent();
        float cursorAlpha = cursorAnimationState.getCursorAlpha();
        if (cursorAlpha != 0.0f) {
            int iOriginalToTransformed = offsetMapping.originalToTransformed(TextRange.m8491getStartimpl(textFieldValue.m8741getSelectiond9O1mEE()));
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            if (layoutResult == null || (value = layoutResult.getValue()) == null || (rect = value.getCursorRect(iOriginalToTransformed)) == null) {
                rect = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
            }
            float fFloor = (float) Math.floor(contentDrawScope.mo1434toPx0680j_4(TextFieldCursor_androidKt.getDefaultCursorThickness()));
            float f = fFloor < 1.0f ? 1.0f : fFloor;
            float f2 = f / 2.0f;
            float left = rect.getLeft() + f2;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) - f2;
            if (left > fIntBitsToFloat) {
                left = fIntBitsToFloat;
            }
            if (left >= f2) {
                f2 = left;
            }
            float fFloor2 = ((int) f) % 2 == 1 ? ((float) Math.floor(f2)) + 0.5f : (float) Math.rint(f2);
            DrawScope.m6791drawLine1RTmtNc$default(contentDrawScope, brush, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fFloor2)) << 32) | (((long) Float.floatToRawIntBits(rect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(rect.getBottom())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fFloor2)) << 32)), f, 0, null, cursorAlpha, null, 0, 432, null);
        }
        return j59.a;
    }
}
