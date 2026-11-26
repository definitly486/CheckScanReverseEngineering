package androidx.compose.foundation.text;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.text.TextFieldSizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.y;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSizeKt {
    public static final Modifier legacyTextFieldMinSize(Modifier modifier, final TextStyle textStyle) {
        return ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: bs8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return TextFieldSizeKt.legacyTextFieldMinSize$lambda$0(textStyle, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier legacyTextFieldMinSize$lambda$0(TextStyle textStyle, Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(-390200690);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-390200690, i, -1, "androidx.compose.foundation.text.legacyTextFieldMinSize.<anonymous> (TextFieldSize.kt:163)");
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
        Object objRememberedValue3 = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new LegacyTextFieldSize(layoutDirection, density, resolver, textStyle, state.getValue());
            composer.updateRememberedValue(objRememberedValue3);
        }
        final LegacyTextFieldSize legacyTextFieldSize = (LegacyTextFieldSize) objRememberedValue3;
        legacyTextFieldSize.update(layoutDirection, density, resolver, textStyle2, state.getValue());
        Modifier.Companion companion2 = Modifier.Companion;
        boolean zChangedInstance = composer.changedInstance(legacyTextFieldSize);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue4 == companion.getEmpty()) {
            objRememberedValue4 = new dm3() { // from class: androidx.compose.foundation.text.n
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return TextFieldSizeKt.legacyTextFieldMinSize$lambda$0$4$0(legacyTextFieldSize, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        Modifier modifierLayout = LayoutModifierKt.layout(companion2, (dm3) objRememberedValue4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult legacyTextFieldMinSize$lambda$0$4$0(LegacyTextFieldSize legacyTextFieldSize, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        long jM2560getMinSizeYbymL2g = legacyTextFieldSize.m2560getMinSizeYbymL2g();
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(constraints.m9001unboximpl(), kx6.f((int) (jM2560getMinSizeYbymL2g >> 32), Constraints.m8997getMinWidthimpl(constraints.m9001unboximpl()), Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl())), 0, kx6.f((int) (jM2560getMinSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE), Constraints.m8996getMinHeightimpl(constraints.m9001unboximpl()), Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl())), 0, 10, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new y(1, placeableMo7702measureBRTryo0), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 legacyTextFieldMinSize$lambda$0$4$0$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    public static final Modifier textFieldMinSize(Modifier modifier, TextStyle textStyle) {
        return ComposeFoundationFlags.isBasicTextFieldMinSizeOptimizationEnabled ? modifier.then(new TextFieldSizeElement(textStyle)) : legacyTextFieldMinSize(modifier, textStyle);
    }
}
