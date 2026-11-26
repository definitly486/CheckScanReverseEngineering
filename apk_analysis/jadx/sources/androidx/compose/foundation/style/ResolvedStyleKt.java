package androidx.compose.foundation.style;

import androidx.collection.MutableIntList;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Interpolatable;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.graphics.shadow.ShadowKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.d47;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n07;
import defpackage.yr;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvedStyleKt {
    public static final int AnimateGroup = 1318433304;
    public static final int AnimatedFlag = 16;
    public static final int DrawFlag = 2;
    private static final int FontStyleMask = 3;
    private static final int FontStyleShift = 0;
    private static final int FontSynthesisMask = 15360;
    private static final int FontSynthesisShift = 10;
    private static final int FontWeightMask = 134086656;
    private static final int FontWeightShift = 17;
    private static final int HyphensMask = 768;
    private static final int HyphensShift = 8;
    public static final int InheritedFlags = 96;
    public static final int InnerLayoutFlag = 1;
    public static final int LayerFlag = 4;
    public static final int OuterLayoutFlag = 8;
    private static final int TextAlignMask = 28;
    private static final int TextAlignShift = 2;
    private static final int TextDecorationMask = 114688;
    private static final int TextDecorationShift = 14;
    private static final j59 TextDefaultsResolvedStyle;
    private static final int TextDirectionMask = 112;
    private static final int TextDirectionShift = 4;
    public static final int TextDrawFlag = 64;
    public static final int TextLayoutFlag = 32;
    private static final SpringSpec<Float> DefaultSpringSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
    private static final ResolvedStyle EmptyResolvedStyle = new ResolvedStyle();

    static {
        StyleScopeKt.apply(new ResolvedStyle(), new d47());
        TextDefaultsResolvedStyle = j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TextDefaultsResolvedStyle$lambda$0(StyleScope styleScope) {
        styleScope.mo2379fontSizeR2X_6o(TextUnitKt.getSp(14));
        styleScope.mo2401letterSpacingR2X_6o(TextUnitKt.getSp(0));
        styleScope.mo2360contentColor8_81llA(Color.Companion.m6258getBlack0d7_KjU());
        styleScope.fontWeight(FontWeight.Companion.getNormal());
        styleScope.mo2380fontStylenzbMABs(FontStyle.Companion.m8610getNormal_LCdwA());
        styleScope.mo2381fontSynthesis6p3vJLY(FontSynthesis.Companion.m8620getAllGVVA2EU());
        styleScope.fontFamily(FontFamily.Companion.getDefault());
        styleScope.mo2354baselineShift4Dl_Bck(BaselineShift.Companion.m8793getNoney9eOQZs());
        styleScope.textDecoration(TextDecoration.Companion.getNone());
    }

    public static final int applyTextEnum(int i, int i2) {
        int i3 = i2 & 3;
        int i4 = i & (-4);
        if (i3 != 0) {
            i = i3;
        }
        int i5 = i | i4;
        int i6 = i2 & 28;
        int i7 = i5 & (-29);
        if (i6 != 0) {
            i5 = i6;
        }
        int i8 = i5 | i7;
        int i9 = i2 & TextDirectionMask;
        int i10 = i8 & (-113);
        if (i9 != 0) {
            i8 = i9;
        }
        int i11 = i8 | i10;
        int i12 = i2 & 768;
        int i13 = i11 & (-769);
        if (i12 != 0) {
            i11 = i12;
        }
        int i14 = i11 | i13;
        int i15 = i2 & FontSynthesisMask;
        int i16 = i14 & (-15361);
        if (i15 != 0) {
            i14 = i15;
        }
        int i17 = i14 | i16;
        int i18 = i2 & FontWeightMask;
        int i19 = (-134086657) & i17;
        if (i18 != 0) {
            i17 = i18;
        }
        return i17 | i19;
    }

    public static final String flagsAsString(ResolvedStyle resolvedStyle) {
        return resolvedStyleFlagsToString(resolvedStyle.flags);
    }

    private static final int floorToNearest100(int i) {
        return (i / 100) * 100;
    }

    public static final int getBits(int i, int i2, int i3) {
        return (i & i2) >> i3;
    }

    public static final j59 getTextDefaultsResolvedStyle() {
        return TextDefaultsResolvedStyle;
    }

    public static final void lerp(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, int i, ResolvedStyle resolvedStyle3) {
        int i2 = resolvedStyle.flags | resolvedStyle2.flags;
        resolvedStyle3.flags = i2;
        int i3 = i & i2;
        if ((i3 & 8) != 0) {
            lerpOuterLayout(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
        if ((i3 & 1) != 0) {
            lerpInnerLayout(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
        if ((i3 & 2) != 0) {
            lerpDraw(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
        if ((i3 & 4) != 0) {
            lerpLayer(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
        if ((i3 & 64) != 0) {
            lerpTextDraw(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
        if ((i3 & 32) != 0) {
            lerpTextLayout(resolvedStyle, resolvedStyle2, f, resolvedStyle3);
        }
    }

    /* JADX INFO: renamed from: lerp-wffgcV4, reason: not valid java name */
    private static final Brush m2432lerpwffgcV4(Brush brush, long j, Brush brush2, long j2, float f) {
        jh2 jh2Var = null;
        if (brush == null && brush2 == null) {
            return null;
        }
        if (brush == null) {
            brush = new SolidColor(j, jh2Var);
        } else if (brush2 == null) {
            brush2 = new SolidColor(j2, jh2Var);
        }
        Object objLerp = Interpolatable.Companion.lerp(brush, brush2, f);
        if (objLerp instanceof Brush) {
            return (Brush) objLerp;
        }
        return null;
    }

    public static final Shadow[] lerpArrayShadows(Shadow[] shadowArr, Shadow[] shadowArr2, float f) {
        int iMax = Math.max(shadowArr.length, shadowArr2.length);
        Shadow[] shadowArr3 = new Shadow[iMax];
        for (int i = 0; i < iMax; i++) {
            shadowArr3[i] = null;
        }
        for (int i2 = 0; i2 < iMax; i2++) {
            shadowArr3[i2] = ShadowKt.lerp((Shadow) yr.O(i2, shadowArr), (Shadow) yr.O(i2, shadowArr2), f);
        }
        return shadowArr3;
    }

    public static final void lerpDraw(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        resolvedStyle3.setBorderWidth$foundation(MathHelpersKt.lerp(resolvedStyle.getBorderWidth$foundation(), resolvedStyle2.getBorderWidth$foundation(), f));
        resolvedStyle3.m2415setBorderColor8_81llA$foundation(ColorKt.m6283lerpjxsXWHM(resolvedStyle.m2385getBorderColor0d7_KjU$foundation(), resolvedStyle2.m2385getBorderColor0d7_KjU$foundation(), f));
        resolvedStyle3.setBorderBrush$foundation(m2432lerpwffgcV4(resolvedStyle.getBorderBrush$foundation(), resolvedStyle.m2385getBorderColor0d7_KjU$foundation(), resolvedStyle2.getBorderBrush$foundation(), resolvedStyle2.m2385getBorderColor0d7_KjU$foundation(), f));
        resolvedStyle3.m2413setBackgroundColor8_81llA$foundation(ColorKt.m6283lerpjxsXWHM(resolvedStyle.m2383getBackgroundColor0d7_KjU$foundation(), resolvedStyle2.m2383getBackgroundColor0d7_KjU$foundation(), f));
        resolvedStyle3.setBackgroundBrush$foundation(m2432lerpwffgcV4(resolvedStyle.getBackgroundBrush$foundation(), resolvedStyle.m2383getBackgroundColor0d7_KjU$foundation(), resolvedStyle2.getBackgroundBrush$foundation(), resolvedStyle2.m2383getBackgroundColor0d7_KjU$foundation(), f));
        Brush foregroundBrush$foundation = resolvedStyle.getForegroundBrush$foundation();
        Color.Companion companion = Color.Companion;
        resolvedStyle3.setForegroundBrush$foundation(m2432lerpwffgcV4(foregroundBrush$foundation, companion.m6268getUnspecified0d7_KjU(), resolvedStyle2.getForegroundBrush$foundation(), companion.m6268getUnspecified0d7_KjU(), f));
        resolvedStyle3.setInnerShadow$foundation(lerpShadows(resolvedStyle.getInnerShadow$foundation(), resolvedStyle2.getInnerShadow$foundation(), f));
        resolvedStyle3.setDropShadow$foundation(lerpShadows(resolvedStyle.getDropShadow$foundation(), resolvedStyle2.getDropShadow$foundation(), f));
    }

    public static final void lerpInnerLayout(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        resolvedStyle3.setContentPaddingStart$foundation(MathHelpersKt.lerp(resolvedStyle.getContentPaddingStart$foundation(), resolvedStyle2.getContentPaddingStart$foundation(), f));
        resolvedStyle3.setContentPaddingEnd$foundation(MathHelpersKt.lerp(resolvedStyle.getContentPaddingEnd$foundation(), resolvedStyle2.getContentPaddingEnd$foundation(), f));
        resolvedStyle3.setContentPaddingTop$foundation(MathHelpersKt.lerp(resolvedStyle.getContentPaddingTop$foundation(), resolvedStyle2.getContentPaddingTop$foundation(), f));
        resolvedStyle3.setContentPaddingBottom$foundation(MathHelpersKt.lerp(resolvedStyle.getContentPaddingBottom$foundation(), resolvedStyle2.getContentPaddingBottom$foundation(), f));
    }

    public static final void lerpLayer(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        resolvedStyle3.setAlpha$foundation(MathHelpersKt.lerp(resolvedStyle.getAlpha$foundation(), resolvedStyle2.getAlpha$foundation(), f));
        resolvedStyle3.setScaleX$foundation(MathHelpersKt.lerp(resolvedStyle.getScaleX$foundation(), resolvedStyle2.getScaleX$foundation(), f));
        resolvedStyle3.setScaleY$foundation(MathHelpersKt.lerp(resolvedStyle.getScaleY$foundation(), resolvedStyle2.getScaleY$foundation(), f));
        resolvedStyle3.setTranslationX$foundation(MathHelpersKt.lerp(resolvedStyle.getTranslationX$foundation(), resolvedStyle2.getTranslationX$foundation(), f));
        resolvedStyle3.setTranslationY$foundation(MathHelpersKt.lerp(resolvedStyle.getTranslationY$foundation(), resolvedStyle2.getTranslationY$foundation(), f));
        resolvedStyle3.setRotationX$foundation(MathHelpersKt.lerp(resolvedStyle.getRotationX$foundation(), resolvedStyle2.getRotationX$foundation(), f));
        resolvedStyle3.setRotationY$foundation(MathHelpersKt.lerp(resolvedStyle.getRotationY$foundation(), resolvedStyle2.getRotationY$foundation(), f));
        resolvedStyle3.setRotationZ$foundation(MathHelpersKt.lerp(resolvedStyle.getRotationZ$foundation(), resolvedStyle2.getRotationZ$foundation(), f));
        resolvedStyle3.m2422setTransformOrigin__ExYCQ$foundation(TransformOriginKt.TransformOrigin(MathHelpersKt.lerp(TransformOrigin.m6640getPivotFractionXimpl(resolvedStyle.m2397getTransformOriginSzJe1aQ$foundation()), TransformOrigin.m6640getPivotFractionXimpl(resolvedStyle2.m2397getTransformOriginSzJe1aQ$foundation()), f), MathHelpersKt.lerp(TransformOrigin.m6641getPivotFractionYimpl(resolvedStyle.m2397getTransformOriginSzJe1aQ$foundation()), TransformOrigin.m6641getPivotFractionYimpl(resolvedStyle2.m2397getTransformOriginSzJe1aQ$foundation()), f)));
        resolvedStyle3.setZIndex$foundation(MathHelpersKt.lerp(resolvedStyle.getZIndex$foundation(), resolvedStyle2.getZIndex$foundation(), f));
        resolvedStyle3.setShape$foundation(lerp(resolvedStyle.getShape$foundation(), resolvedStyle2.getShape$foundation(), f));
        resolvedStyle3.setClip$foundation(f < 0.5f ? resolvedStyle.getClip$foundation() : resolvedStyle2.getClip$foundation());
    }

    public static final float lerpMaybeNan(float f, float f2, float f3) {
        boolean zIsNaN = Float.isNaN(f);
        boolean zIsNaN2 = Float.isNaN(f2);
        float f4 = (f3 * f2) + ((1.0f - f3) * f);
        if (zIsNaN) {
            return f2;
        }
        return zIsNaN2 ? f : f4;
    }

    public static final void lerpOuterLayout(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        float externalPaddingStart$foundation = resolvedStyle.getExternalPaddingStart$foundation();
        float externalPaddingStart$foundation2 = resolvedStyle2.getExternalPaddingStart$foundation();
        boolean zIsNaN = Float.isNaN(externalPaddingStart$foundation);
        boolean zIsNaN2 = Float.isNaN(externalPaddingStart$foundation2);
        float f2 = 1.0f - f;
        float f3 = (f * externalPaddingStart$foundation2) + (f2 * externalPaddingStart$foundation);
        if (zIsNaN) {
            externalPaddingStart$foundation = externalPaddingStart$foundation2;
        } else if (!zIsNaN2) {
            externalPaddingStart$foundation = f3;
        }
        resolvedStyle3.setExternalPaddingStart$foundation(externalPaddingStart$foundation);
        float externalPaddingEnd$foundation = resolvedStyle.getExternalPaddingEnd$foundation();
        float externalPaddingEnd$foundation2 = resolvedStyle2.getExternalPaddingEnd$foundation();
        boolean zIsNaN3 = Float.isNaN(externalPaddingEnd$foundation);
        boolean zIsNaN4 = Float.isNaN(externalPaddingEnd$foundation2);
        float f4 = (f * externalPaddingEnd$foundation2) + (f2 * externalPaddingEnd$foundation);
        if (zIsNaN3) {
            externalPaddingEnd$foundation = externalPaddingEnd$foundation2;
        } else if (!zIsNaN4) {
            externalPaddingEnd$foundation = f4;
        }
        resolvedStyle3.setExternalPaddingEnd$foundation(externalPaddingEnd$foundation);
        float externalPaddingTop$foundation = resolvedStyle.getExternalPaddingTop$foundation();
        float externalPaddingTop$foundation2 = resolvedStyle2.getExternalPaddingTop$foundation();
        boolean zIsNaN5 = Float.isNaN(externalPaddingTop$foundation);
        boolean zIsNaN6 = Float.isNaN(externalPaddingTop$foundation2);
        float f5 = (f * externalPaddingTop$foundation2) + (f2 * externalPaddingTop$foundation);
        if (zIsNaN5) {
            externalPaddingTop$foundation = externalPaddingTop$foundation2;
        } else if (!zIsNaN6) {
            externalPaddingTop$foundation = f5;
        }
        resolvedStyle3.setExternalPaddingTop$foundation(externalPaddingTop$foundation);
        float externalPaddingBottom$foundation = resolvedStyle.getExternalPaddingBottom$foundation();
        float externalPaddingBottom$foundation2 = resolvedStyle2.getExternalPaddingBottom$foundation();
        boolean zIsNaN7 = Float.isNaN(externalPaddingBottom$foundation);
        boolean zIsNaN8 = Float.isNaN(externalPaddingBottom$foundation2);
        float f6 = (f * externalPaddingBottom$foundation2) + (f2 * externalPaddingBottom$foundation);
        if (zIsNaN7) {
            externalPaddingBottom$foundation = externalPaddingBottom$foundation2;
        } else if (!zIsNaN8) {
            externalPaddingBottom$foundation = f6;
        }
        resolvedStyle3.setExternalPaddingBottom$foundation(externalPaddingBottom$foundation);
        float left$foundation = resolvedStyle.getLeft$foundation();
        float left$foundation2 = resolvedStyle2.getLeft$foundation();
        boolean zIsNaN9 = Float.isNaN(left$foundation);
        boolean zIsNaN10 = Float.isNaN(left$foundation2);
        float f7 = (f * left$foundation2) + (f2 * left$foundation);
        if (zIsNaN9) {
            left$foundation = left$foundation2;
        } else if (!zIsNaN10) {
            left$foundation = f7;
        }
        resolvedStyle3.setLeft$foundation(left$foundation);
        float top$foundation = resolvedStyle.getTop$foundation();
        float top$foundation2 = resolvedStyle2.getTop$foundation();
        boolean zIsNaN11 = Float.isNaN(top$foundation);
        boolean zIsNaN12 = Float.isNaN(top$foundation2);
        float f8 = (f * top$foundation2) + (f2 * top$foundation);
        if (zIsNaN11) {
            top$foundation = top$foundation2;
        } else if (!zIsNaN12) {
            top$foundation = f8;
        }
        resolvedStyle3.setTop$foundation(top$foundation);
        float right$foundation = resolvedStyle.getRight$foundation();
        float right$foundation2 = resolvedStyle2.getRight$foundation();
        boolean zIsNaN13 = Float.isNaN(right$foundation);
        boolean zIsNaN14 = Float.isNaN(right$foundation2);
        float f9 = (f * right$foundation2) + (f2 * right$foundation);
        if (zIsNaN13) {
            right$foundation = right$foundation2;
        } else if (!zIsNaN14) {
            right$foundation = f9;
        }
        resolvedStyle3.setRight$foundation(right$foundation);
        float bottom$foundation = resolvedStyle.getBottom$foundation();
        float bottom$foundation2 = resolvedStyle2.getBottom$foundation();
        boolean zIsNaN15 = Float.isNaN(bottom$foundation);
        boolean zIsNaN16 = Float.isNaN(bottom$foundation2);
        float f10 = (f * bottom$foundation2) + (f2 * bottom$foundation);
        if (zIsNaN15) {
            bottom$foundation = bottom$foundation2;
        } else if (!zIsNaN16) {
            bottom$foundation = f10;
        }
        resolvedStyle3.setBottom$foundation(bottom$foundation);
        float width$foundation = resolvedStyle.getWidth$foundation();
        float width$foundation2 = resolvedStyle2.getWidth$foundation();
        boolean zIsNaN17 = Float.isNaN(width$foundation);
        boolean zIsNaN18 = Float.isNaN(width$foundation2);
        float f11 = (f * width$foundation2) + (f2 * width$foundation);
        if (zIsNaN17) {
            width$foundation = width$foundation2;
        } else if (!zIsNaN18) {
            width$foundation = f11;
        }
        resolvedStyle3.setWidth$foundation(width$foundation);
        float height$foundation = resolvedStyle.getHeight$foundation();
        float height$foundation2 = resolvedStyle2.getHeight$foundation();
        boolean zIsNaN19 = Float.isNaN(height$foundation);
        boolean zIsNaN20 = Float.isNaN(height$foundation2);
        float f12 = (f * height$foundation2) + (f2 * height$foundation);
        if (zIsNaN19) {
            height$foundation = height$foundation2;
        } else if (!zIsNaN20) {
            height$foundation = f12;
        }
        resolvedStyle3.setHeight$foundation(height$foundation);
        float widthFraction$foundation = resolvedStyle.getWidthFraction$foundation();
        float widthFraction$foundation2 = resolvedStyle2.getWidthFraction$foundation();
        boolean zIsNaN21 = Float.isNaN(widthFraction$foundation);
        boolean zIsNaN22 = Float.isNaN(widthFraction$foundation2);
        float f13 = (f * widthFraction$foundation2) + (f2 * widthFraction$foundation);
        if (zIsNaN21) {
            widthFraction$foundation = widthFraction$foundation2;
        } else if (!zIsNaN22) {
            widthFraction$foundation = f13;
        }
        resolvedStyle3.setWidthFraction$foundation(widthFraction$foundation);
        float heightFraction$foundation = resolvedStyle.getHeightFraction$foundation();
        float heightFraction$foundation2 = resolvedStyle2.getHeightFraction$foundation();
        boolean zIsNaN23 = Float.isNaN(heightFraction$foundation);
        boolean zIsNaN24 = Float.isNaN(heightFraction$foundation2);
        float f14 = (f * heightFraction$foundation2) + (f2 * heightFraction$foundation);
        if (zIsNaN23) {
            heightFraction$foundation = heightFraction$foundation2;
        } else if (!zIsNaN24) {
            heightFraction$foundation = f14;
        }
        resolvedStyle3.setHeightFraction$foundation(heightFraction$foundation);
        float minWidth$foundation = resolvedStyle.getMinWidth$foundation();
        float minWidth$foundation2 = resolvedStyle2.getMinWidth$foundation();
        boolean zIsNaN25 = Float.isNaN(minWidth$foundation);
        boolean zIsNaN26 = Float.isNaN(minWidth$foundation2);
        float f15 = (f * minWidth$foundation2) + (f2 * minWidth$foundation);
        if (zIsNaN25) {
            minWidth$foundation = minWidth$foundation2;
        } else if (!zIsNaN26) {
            minWidth$foundation = f15;
        }
        resolvedStyle3.setMinWidth$foundation(minWidth$foundation);
        float maxWidth$foundation = resolvedStyle.getMaxWidth$foundation();
        float maxWidth$foundation2 = resolvedStyle2.getMaxWidth$foundation();
        boolean zIsNaN27 = Float.isNaN(maxWidth$foundation);
        boolean zIsNaN28 = Float.isNaN(maxWidth$foundation2);
        float f16 = (f * maxWidth$foundation2) + (f2 * maxWidth$foundation);
        if (zIsNaN27) {
            maxWidth$foundation = maxWidth$foundation2;
        } else if (!zIsNaN28) {
            maxWidth$foundation = f16;
        }
        resolvedStyle3.setMaxWidth$foundation(maxWidth$foundation);
        float minHeight$foundation = resolvedStyle.getMinHeight$foundation();
        float minHeight$foundation2 = resolvedStyle2.getMinHeight$foundation();
        boolean zIsNaN29 = Float.isNaN(minHeight$foundation);
        boolean zIsNaN30 = Float.isNaN(minHeight$foundation2);
        float f17 = (f * minHeight$foundation2) + (f2 * minHeight$foundation);
        if (zIsNaN29) {
            minHeight$foundation = minHeight$foundation2;
        } else if (!zIsNaN30) {
            minHeight$foundation = f17;
        }
        resolvedStyle3.setMinHeight$foundation(minHeight$foundation);
        float maxHeight$foundation = resolvedStyle.getMaxHeight$foundation();
        float maxHeight$foundation2 = resolvedStyle2.getMaxHeight$foundation();
        boolean zIsNaN31 = Float.isNaN(maxHeight$foundation);
        boolean zIsNaN32 = Float.isNaN(maxHeight$foundation2);
        float f18 = (f * maxHeight$foundation2) + (f2 * maxHeight$foundation);
        if (zIsNaN31) {
            maxHeight$foundation = maxHeight$foundation2;
        } else if (!zIsNaN32) {
            maxHeight$foundation = f18;
        }
        resolvedStyle3.setMaxHeight$foundation(maxHeight$foundation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Object lerpShadows(Object obj, Object obj2, float f) {
        Shadow[] shadowArr;
        Shadow[] shadowArr2;
        Shadow[] shadowArr3;
        if (obj == null && obj2 == null) {
            return null;
        }
        boolean z = obj instanceof Object[];
        boolean z2 = obj2 instanceof Object[];
        if (!z && !z2) {
            return ShadowKt.lerp(obj instanceof Shadow ? (Shadow) obj : null, obj2 instanceof Shadow ? (Shadow) obj2 : null, f);
        }
        if (z) {
            shadowArr3 = (Shadow[]) obj;
        } else {
            obj.getClass();
            shadowArr = new Shadow[]{obj};
        }
        if (z2) {
            shadowArr = shadowArr3;
            shadowArr2 = (Shadow[]) obj2;
        } else {
            shadowArr = shadowArr3;
            obj2.getClass();
            shadowArr2 = new Shadow[]{obj2};
        }
        return lerpArrayShadows(shadowArr, shadowArr2, f);
    }

    public static final void lerpTextDraw(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        resolvedStyle3.m2416setContentColor8_81llA$foundation(ColorKt.m6283lerpjxsXWHM(resolvedStyle.m2386getContentColor0d7_KjU$foundation(), resolvedStyle2.m2386getContentColor0d7_KjU$foundation(), f));
        resolvedStyle3.setContentBrush$foundation(m2432lerpwffgcV4(resolvedStyle.getContentBrush$foundation(), resolvedStyle.m2386getContentColor0d7_KjU$foundation(), resolvedStyle2.getContentBrush$foundation(), resolvedStyle2.m2386getContentColor0d7_KjU$foundation(), f));
    }

    public static final void lerpTextLayout(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, float f, ResolvedStyle resolvedStyle3) {
        if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle.m2387getFontSizeXSAIIZE$foundation()) == 0)) {
            if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle2.m2387getFontSizeXSAIIZE$foundation()) == 0)) {
                resolvedStyle3.m2417setFontSizeR2X_6o$foundation(TextUnitKt.m9256lerpC3pnCVY(resolvedStyle.m2387getFontSizeXSAIIZE$foundation(), resolvedStyle2.m2387getFontSizeXSAIIZE$foundation(), f));
            }
        }
        if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle.m2394getLineHeightXSAIIZE$foundation()) == 0)) {
            if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle2.m2394getLineHeightXSAIIZE$foundation()) == 0)) {
                resolvedStyle3.m2421setLineHeightR2X_6o$foundation(TextUnitKt.m9256lerpC3pnCVY(resolvedStyle.m2394getLineHeightXSAIIZE$foundation(), resolvedStyle2.m2394getLineHeightXSAIIZE$foundation(), f));
            }
        }
        if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle.m2392getLetterSpacingXSAIIZE$foundation()) == 0)) {
            if (!(TextUnit.m9234getRawTypeimpl(resolvedStyle2.m2392getLetterSpacingXSAIIZE$foundation()) == 0)) {
                resolvedStyle3.m2419setLetterSpacingR2X_6o$foundation(TextUnitKt.m9256lerpC3pnCVY(resolvedStyle.m2392getLetterSpacingXSAIIZE$foundation(), resolvedStyle2.m2392getLetterSpacingXSAIIZE$foundation(), f));
            }
        }
        resolvedStyle3.setFontFamily$foundation(f < 0.5f ? resolvedStyle.getFontFamily$foundation() : resolvedStyle2.getFontFamily$foundation());
        resolvedStyle3.setTextIndent$foundation(f < 0.5f ? resolvedStyle.getTextIndent$foundation() : resolvedStyle2.getTextIndent$foundation());
        resolvedStyle3.m2414setBaselineShift4Dl_Bck$foundation(f < 0.5f ? resolvedStyle.m2384getBaselineShifty9eOQZs$foundation() : resolvedStyle2.m2384getBaselineShifty9eOQZs$foundation());
        resolvedStyle3.m2420setLineBreakCZqVlQI$foundation(f < 0.5f ? resolvedStyle.m2393getLineBreakrAG3T2k$foundation() : resolvedStyle2.m2393getLineBreakrAG3T2k$foundation());
        resolvedStyle3.setTextEnums$foundation(f < 0.5f ? resolvedStyle.getTextEnums$foundation() : resolvedStyle2.getTextEnums$foundation());
        int textEnums$foundation = (resolvedStyle.getTextEnums$foundation() & FontWeightMask) >> 17;
        int textEnums$foundation2 = (resolvedStyle2.getTextEnums$foundation() & FontWeightMask) >> 17;
        if (textEnums$foundation <= 0 || textEnums$foundation2 <= 0) {
            return;
        }
        resolvedStyle3.setTextEnums$foundation(((((MathHelpersKt.lerp(textEnums$foundation, textEnums$foundation2, f) / 100) * 100) << 17) & FontWeightMask) | (resolvedStyle3.getTextEnums$foundation() & (-134086657)));
    }

    private static final int pop(MutableIntList mutableIntList) {
        return mutableIntList.removeAt(mutableIntList._size - 1);
    }

    private static final boolean push(MutableIntList mutableIntList, int i) {
        return mutableIntList.add(i);
    }

    public static final String resolvedStyleFlagsToString(int i) {
        StringBuilder sb = new StringBuilder();
        n07 n07Var = new n07();
        n07Var.b = true;
        if ((i & 1) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "InnerLayoutFlag");
        }
        if ((i & 2) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "DrawFlag");
        }
        if ((i & 4) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "LayerFlag");
        }
        if ((i & 8) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "OuterLayoutFlag");
        }
        if ((i & 16) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "AnimatedFlag");
        }
        if ((i & 32) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "TextLayoutFlag");
        }
        if ((i & 64) != 0) {
            resolvedStyleFlagsToString$lambda$0$emit(n07Var, sb, "TextDrawFlag");
        }
        return sb.toString();
    }

    private static final void resolvedStyleFlagsToString$lambda$0$emit(n07 n07Var, StringBuilder sb, String str) {
        if (!n07Var.b) {
            sb.append(", ");
        }
        n07Var.b = false;
        sb.append(str);
    }

    public static final int setBits(int i, int i2, int i3, int i4) {
        return (i & (~i2)) | (i2 & (i4 << i3));
    }

    public static final int setBitsIfNonZero(int i, int i2, int i3) {
        int i4 = i2 & i3;
        int i5 = (~i3) & i;
        if (i4 != 0) {
            i = i4;
        }
        return i | i5;
    }

    /* JADX INFO: renamed from: takeOrElse--OWjLjI, reason: not valid java name */
    public static final long m2433takeOrElseOWjLjI(long j, long j2) {
        return j != 16 ? j : j2;
    }

    /* JADX INFO: renamed from: takeOrElse-NB67dxo, reason: not valid java name */
    public static final long m2434takeOrElseNB67dxo(long j, long j2) {
        return !((TextUnit.m9234getRawTypeimpl(j) > 0L ? 1 : (TextUnit.m9234getRawTypeimpl(j) == 0L ? 0 : -1)) == 0) ? j : j2;
    }

    /* JADX INFO: renamed from: takeOrElse-w1xZEK0, reason: not valid java name */
    public static final int m2435takeOrElsew1xZEK0(int i, int i2) {
        return !LineBreak.m8824equalsimpl0(i, LineBreak.Companion.m8838getUnspecifiedrAG3T2k()) ? i : i2;
    }

    /* JADX INFO: renamed from: takeOrElse-y00tBZM, reason: not valid java name */
    public static final float m2436takeOrElsey00tBZM(float f, float f2) {
        return BaselineShift.m8785equalsimpl0(f, BaselineShift.Companion.m8796getUnspecifiedy9eOQZs()) ? f : f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int updateHashEnter(int i, int i2) {
        return Integer.rotateLeft(i, 3) ^ i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int updateHashExit(int i, int i2) {
        return Integer.rotateRight(i ^ i2, 3);
    }

    private static final Brush lerp(Brush brush, Brush brush2, float f) {
        Object objLerp = Interpolatable.Companion.lerp(brush, brush2, f);
        if (objLerp instanceof Brush) {
            return (Brush) objLerp;
        }
        return null;
    }

    private static final Shape lerp(Shape shape, Shape shape2, float f) {
        Object objLerp = Interpolatable.Companion.lerp(shape, shape2, f);
        Shape shape3 = objLerp instanceof Shape ? (Shape) objLerp : null;
        return shape3 == null ? RectangleShapeKt.getRectangleShape() : shape3;
    }
}
