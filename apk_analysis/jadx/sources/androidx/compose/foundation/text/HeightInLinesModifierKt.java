package androidx.compose.foundation.text;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.HeightInLinesModifierKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;

/* JADX INFO: loaded from: classes.dex */
public final class HeightInLinesModifierKt {
    public static final int DefaultMinLines = 1;

    public static final Modifier heightInLines(Modifier modifier, TextStyle textStyle, int i, int i2) {
        validateMinMaxLines(i, i2);
        if (i == 1 && i2 == Integer.MAX_VALUE) {
            return modifier;
        }
        return ComposeFoundationFlags.isBasicTextFieldMinSizeOptimizationEnabled ? modifier.then(new HeightInLinesElement(textStyle, i, i2)) : legacyHeightInLines(modifier, textStyle, i, i2);
    }

    public static /* synthetic */ Modifier heightInLines$default(Modifier modifier, TextStyle textStyle, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return heightInLines(modifier, textStyle, i, i2);
    }

    public static final Modifier legacyHeightInLines(Modifier modifier, final TextStyle textStyle, final int i, final int i2) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new HeightInLinesModifierKt$legacyHeightInLines$$inlined$debugInspectorInfo$1(i, i2, textStyle) : InspectableValueKt.getNoInspectorInfo(), new dm3() { // from class: tv3
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return HeightInLinesModifierKt.legacyHeightInLines$lambda$1(textStyle, i, i2, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        });
    }

    public static /* synthetic */ Modifier legacyHeightInLines$default(Modifier modifier, TextStyle textStyle, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return legacyHeightInLines(modifier, textStyle, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier legacyHeightInLines$lambda$1(TextStyle textStyle, int i, int i2, Modifier modifier, Composer composer, int i3) {
        composer.startReplaceGroup(595899793);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(595899793, i3, -1, "androidx.compose.foundation.text.legacyHeightInLines.<anonymous> (HeightInLinesModifier.kt:297)");
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        FontFamily.Resolver resolver = (FontFamily.Resolver) composer.consume(CompositionLocalsKt.getLocalFontFamilyResolver());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        boolean zChanged = composer.changed(textStyle) | composer.changed(layoutDirection.ordinal());
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = TextStyleKt.resolveDefaults(textStyle, layoutDirection);
            composer.updateRememberedValue(objRememberedValue);
        }
        TextStyle textStyle2 = (TextStyle) objRememberedValue;
        boolean zChanged2 = composer.changed(resolver) | composer.changed(textStyle2);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            FontFamily fontFamily = textStyle2.getFontFamily();
            FontWeight fontWeight = textStyle2.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle fontStyleM8523getFontStyle4Lr2A7w = textStyle2.m8523getFontStyle4Lr2A7w();
            int iM8606unboximpl = fontStyleM8523getFontStyle4Lr2A7w != null ? fontStyleM8523getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA();
            FontSynthesis fontSynthesisM8524getFontSynthesisZQGJjVo = textStyle2.m8524getFontSynthesisZQGJjVo();
            objRememberedValue2 = resolver.mo8576resolveDPcqOEQ(fontFamily, fontWeight, iM8606unboximpl, fontSynthesisM8524getFontSynthesisZQGJjVo != null ? fontSynthesisM8524getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU());
            composer.updateRememberedValue(objRememberedValue2);
        }
        State state = (State) objRememberedValue2;
        boolean zChanged3 = composer.changed(state.getValue()) | composer.changed(density) | composer.changed(resolver) | composer.changed(textStyle) | composer.changed(layoutDirection.ordinal());
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChanged3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
            objRememberedValue3 = Integer.valueOf((int) (TextFieldDelegateKt.computeSizeForDefaultText(textStyle2, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement(), 1) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            composer.updateRememberedValue(objRememberedValue3);
        }
        int iIntValue = ((Number) objRememberedValue3).intValue();
        boolean zChanged4 = composer.changed(textStyle) | composer.changed(density) | composer.changed(resolver) | composer.changed(layoutDirection.ordinal()) | composer.changed(state.getValue());
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChanged4 || objRememberedValue4 == Composer.Companion.getEmpty()) {
            objRememberedValue4 = Integer.valueOf((int) (TextFieldDelegateKt.computeSizeForDefaultText(textStyle2, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement() + '\n' + TextFieldDelegateKt.getEmptyTextReplacement(), 2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            composer.updateRememberedValue(objRememberedValue4);
        }
        int iIntValue2 = ((Number) objRememberedValue4).intValue() - iIntValue;
        Integer numValueOf = i == 1 ? null : Integer.valueOf(((i - 1) * iIntValue2) + iIntValue);
        Integer numValueOf2 = i2 != Integer.MAX_VALUE ? Integer.valueOf(((i2 - 1) * iIntValue2) + iIntValue) : null;
        Modifier modifierM2086heightInVpY3zN4 = SizeKt.m2086heightInVpY3zN4(Modifier.Companion, numValueOf != null ? density.mo1431toDpu2uoSUM(numValueOf.intValue()) : Dp.Companion.m9062getUnspecifiedD9Ej5fM(), numValueOf2 != null ? density.mo1431toDpu2uoSUM(numValueOf2.intValue()) : Dp.Companion.m9062getUnspecifiedD9Ej5fM());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierM2086heightInVpY3zN4;
    }

    public static final void validateMinMaxLines(int i, int i2) {
        if (!(i > 0 && i2 > 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("both minLines " + i + " and maxLines " + i2 + " must be greater than zero");
        }
        if (i <= i2) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("minLines " + i + " must be less than or equal to maxLines " + i2);
    }
}
