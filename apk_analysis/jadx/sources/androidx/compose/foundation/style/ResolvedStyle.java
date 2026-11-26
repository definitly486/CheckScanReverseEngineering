package androidx.compose.foundation.style;

import androidx.collection.MutableIntList;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.platform.ValueElement;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.muxer.MuxerUtil;
import com.google.android.material.internal.ViewUtils;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.qn1;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvedStyle implements StyleScope, InspectableValue {
    public static final int $stable = 0;
    private float alpha;
    private boolean animating;
    private Brush backgroundBrush;
    private long backgroundColor;
    private float baselineShift;
    private Brush borderBrush;
    private long borderColor;
    private float borderWidth;
    private float cameraDistance;
    private boolean clip;
    private int compositeHash;
    private Brush contentBrush;
    private long contentColor;
    private float contentPaddingBottom;
    private float contentPaddingEnd;
    private float contentPaddingStart;
    private float contentPaddingTop;
    private int currentIndex;
    private Object dropShadow;
    private float externalPaddingBottom;
    private float externalPaddingEnd;
    private float externalPaddingStart;
    private float externalPaddingTop;
    public int flags;
    private FontFamily fontFamily;
    private long fontSize;
    private Brush foregroundBrush;
    private long foregroundColor;
    private MutableIntList indexStack;
    private Object innerShadow;
    private long letterSpacing;
    private int lineBreak;
    private long lineHeight;
    private StyleOuterNode node;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float scaleX;
    private float scaleY;
    private Shape shape;
    private int textEnums;
    private TextIndent textIndent;
    private long transformOrigin;
    private float translationX;
    private float translationY;
    private float zIndex;
    private float _density = 1.0f;
    private float _fontScale = 1.0f;
    private float width = Float.NaN;
    private float height = Float.NaN;
    private float widthFraction = Float.NaN;
    private float heightFraction = Float.NaN;
    private float left = Float.NaN;
    private float top = Float.NaN;
    private float right = Float.NaN;
    private float bottom = Float.NaN;
    private float minHeight = Float.NaN;
    private float maxHeight = Float.NaN;
    private float minWidth = Float.NaN;
    private float maxWidth = Float.NaN;

    public ResolvedStyle() {
        Color.Companion companion = Color.Companion;
        this.borderColor = companion.m6258getBlack0d7_KjU();
        this.backgroundColor = companion.m6267getTransparent0d7_KjU();
        this.foregroundColor = companion.m6268getUnspecified0d7_KjU();
        this.shape = RectangleShapeKt.getRectangleShape();
        this.alpha = 1.0f;
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.transformOrigin = TransformOrigin.Companion.m6645getCenterSzJe1aQ();
        this.cameraDistance = 1.0f;
        this.contentColor = companion.m6268getUnspecified0d7_KjU();
        TextUnit.Companion companion2 = TextUnit.Companion;
        this.fontSize = companion2.m9247getUnspecifiedXSAIIZE();
        this.lineHeight = companion2.m9247getUnspecifiedXSAIIZE();
        this.letterSpacing = companion2.m9247getUnspecifiedXSAIIZE();
        this.baselineShift = BaselineShift.Companion.m8796getUnspecifiedy9eOQZs();
        this.lineBreak = LineBreak.Companion.m8838getUnspecifiedrAG3T2k();
    }

    public static /* synthetic */ int diff$foundation$default(ResolvedStyle resolvedStyle, ResolvedStyle resolvedStyle2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return resolvedStyle.diff$foundation(resolvedStyle2, i);
    }

    private final int getCurrentCompositeHash() {
        return this.currentIndex ^ this.compositeHash;
    }

    private final void group(int i, boolean z, Style style) {
        int i2 = this.currentIndex;
        if (!z) {
            this.currentIndex = i2 + 1;
            return;
        }
        int i3 = i ^ i2;
        this.compositeHash = ResolvedStyleKt.updateHashEnter(this.compositeHash, i3);
        MutableIntList mutableIntListPushIndex = pushIndex(i2);
        this.currentIndex = 0;
        style.applyStyle(this);
        this.currentIndex = mutableIntListPushIndex.removeAt(mutableIntListPushIndex._size - 1) + 1;
        this.compositeHash = ResolvedStyleKt.updateHashExit(this.compositeHash, i3);
    }

    private final MutableIntList pushIndex(int i) {
        MutableIntList mutableIntList = this.indexStack;
        if (mutableIntList == null) {
            mutableIntList = new MutableIntList(0, 1, null);
            this.indexStack = mutableIntList;
        }
        mutableIntList.add(i);
        return mutableIntList;
    }

    public static /* synthetic */ void resolveForTesting$foundation$default(ResolvedStyle resolvedStyle, Style style, Density density, boolean z, StyleState styleState, int i, Object obj) {
        if ((i & 8) != 0) {
            styleState = null;
        }
        resolvedStyle.resolveForTesting$foundation(style, density, z, styleState);
    }

    private final void skippedGroup() {
        this.currentIndex++;
    }

    private final List<ValueElement> valueElements() {
        ArrayList arrayList = new ArrayList();
        ResolvedStyle resolvedStyle = ResolvedStyleKt.EmptyResolvedStyle;
        float f = resolvedStyle.contentPaddingStart;
        float f2 = this.contentPaddingStart;
        if (f != f2) {
            valueElements$lambda$0$add(arrayList, "contentPaddingStart", Float.valueOf(f2));
        }
        float f3 = resolvedStyle.contentPaddingEnd;
        float f4 = this.contentPaddingEnd;
        if (f3 != f4) {
            valueElements$lambda$0$add(arrayList, "contentPaddingEnd", Float.valueOf(f4));
        }
        float f5 = resolvedStyle.contentPaddingTop;
        float f6 = this.contentPaddingTop;
        if (f5 != f6) {
            valueElements$lambda$0$add(arrayList, "contentPaddingTop", Float.valueOf(f6));
        }
        float f7 = resolvedStyle.contentPaddingBottom;
        float f8 = this.contentPaddingBottom;
        if (f7 != f8) {
            valueElements$lambda$0$add(arrayList, "contentPaddingBottom", Float.valueOf(f8));
        }
        float f9 = resolvedStyle.externalPaddingStart;
        float f10 = this.externalPaddingStart;
        if (f9 != f10) {
            valueElements$lambda$0$add(arrayList, "externalPaddingStart", Float.valueOf(f10));
        }
        float f11 = resolvedStyle.externalPaddingEnd;
        float f12 = this.externalPaddingEnd;
        if (f11 != f12) {
            valueElements$lambda$0$add(arrayList, "externalPaddingEnd", Float.valueOf(f12));
        }
        float f13 = resolvedStyle.externalPaddingTop;
        float f14 = this.externalPaddingTop;
        if (f13 != f14) {
            valueElements$lambda$0$add(arrayList, "externalPaddingTop", Float.valueOf(f14));
        }
        float f15 = resolvedStyle.externalPaddingBottom;
        float f16 = this.externalPaddingBottom;
        if (f15 != f16) {
            valueElements$lambda$0$add(arrayList, "externalPaddingBottom", Float.valueOf(f16));
        }
        float f17 = resolvedStyle.borderWidth;
        float f18 = this.borderWidth;
        if (f17 != f18) {
            valueElements$lambda$0$add(arrayList, "borderWidth", Float.valueOf(f18));
        }
        float f19 = resolvedStyle.width;
        float f20 = this.width;
        if (f19 != f20) {
            valueElements$lambda$0$add(arrayList, TJAdUnitConstants.String.WIDTH, Float.valueOf(f20));
        }
        float f21 = resolvedStyle.height;
        float f22 = this.height;
        if (f21 != f22) {
            valueElements$lambda$0$add(arrayList, TJAdUnitConstants.String.HEIGHT, Float.valueOf(f22));
        }
        if (Float.floatToRawIntBits(resolvedStyle.widthFraction) != Float.floatToRawIntBits(this.widthFraction)) {
            valueElements$lambda$0$add(arrayList, "widthFraction", Float.valueOf(this.widthFraction));
        }
        if (Float.floatToRawIntBits(resolvedStyle.heightFraction) != Float.floatToRawIntBits(this.heightFraction)) {
            valueElements$lambda$0$add(arrayList, "heightFraction", Float.valueOf(this.heightFraction));
        }
        float f23 = resolvedStyle.alpha;
        float f24 = this.alpha;
        if (f23 != f24) {
            valueElements$lambda$0$add(arrayList, "alpha", Float.valueOf(f24));
        }
        float f25 = resolvedStyle.scaleX;
        float f26 = this.scaleX;
        if (f25 != f26) {
            valueElements$lambda$0$add(arrayList, "scaleX", Float.valueOf(f26));
        }
        float f27 = resolvedStyle.scaleY;
        float f28 = this.scaleY;
        if (f27 != f28) {
            valueElements$lambda$0$add(arrayList, "scaleY", Float.valueOf(f28));
        }
        float f29 = resolvedStyle.translationX;
        float f30 = this.translationX;
        if (f29 != f30) {
            valueElements$lambda$0$add(arrayList, "translationX", Float.valueOf(f30));
        }
        float f31 = resolvedStyle.translationY;
        float f32 = this.translationY;
        if (f31 != f32) {
            valueElements$lambda$0$add(arrayList, "translationY", Float.valueOf(f32));
        }
        float f33 = resolvedStyle.rotationX;
        float f34 = this.rotationX;
        if (f33 != f34) {
            valueElements$lambda$0$add(arrayList, "rotationX", Float.valueOf(f34));
        }
        float f35 = resolvedStyle.rotationY;
        float f36 = this.rotationY;
        if (f35 != f36) {
            valueElements$lambda$0$add(arrayList, "rotationY", Float.valueOf(f36));
        }
        float f37 = resolvedStyle.rotationZ;
        float f38 = this.rotationZ;
        if (f37 != f38) {
            valueElements$lambda$0$add(arrayList, "rotationZ", Float.valueOf(f38));
        }
        if (!TransformOrigin.m6639equalsimpl0(resolvedStyle.transformOrigin, this.transformOrigin)) {
            valueElements$lambda$0$add(arrayList, "transformOrigin", TransformOrigin.m6632boximpl(this.transformOrigin));
        }
        float f39 = resolvedStyle.zIndex;
        float f40 = this.zIndex;
        if (f39 != f40) {
            valueElements$lambda$0$add(arrayList, "zIndex", Float.valueOf(f40));
        }
        float f41 = resolvedStyle.cameraDistance;
        float f42 = this.cameraDistance;
        if (f41 != f42) {
            valueElements$lambda$0$add(arrayList, "cameraDistance", Float.valueOf(f42));
        }
        if (!Color.m6233equalsimpl0(resolvedStyle.borderColor, this.borderColor)) {
            valueElements$lambda$0$add(arrayList, "borderColor", Color.m6222boximpl(this.borderColor));
        }
        if (!aa4.e(resolvedStyle.borderBrush, this.borderBrush)) {
            valueElements$lambda$0$add(arrayList, "borderBrush", this.borderBrush);
        }
        if (!Color.m6233equalsimpl0(resolvedStyle.backgroundColor, this.backgroundColor)) {
            valueElements$lambda$0$add(arrayList, "backgroundColor", Color.m6222boximpl(this.backgroundColor));
        }
        if (!aa4.e(resolvedStyle.backgroundBrush, this.backgroundBrush)) {
            valueElements$lambda$0$add(arrayList, "backgroundBrush", this.backgroundBrush);
        }
        if (!aa4.e(resolvedStyle.foregroundBrush, this.foregroundBrush)) {
            valueElements$lambda$0$add(arrayList, "foregroundBrush", this.foregroundBrush);
        }
        boolean z = resolvedStyle.clip;
        boolean z2 = this.clip;
        if (z != z2) {
            valueElements$lambda$0$add(arrayList, "clip", Boolean.valueOf(z2));
        }
        if (!aa4.e(resolvedStyle.shape, this.shape)) {
            valueElements$lambda$0$add(arrayList, "shape", this.shape);
        }
        if (resolvedStyle.contentColor != 16) {
            valueElements$lambda$0$add(arrayList, "contentColor", Color.m6222boximpl(this.contentColor));
        }
        if (!aa4.e(resolvedStyle.contentBrush, this.backgroundBrush)) {
            valueElements$lambda$0$add(arrayList, "contentBrush", this.contentBrush);
        }
        if (!aa4.e(resolvedStyle.fontFamily, this.fontFamily)) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_FONT_FAMILY, this.fontFamily);
        }
        if (!aa4.e(resolvedStyle.textIndent, this.textIndent)) {
            valueElements$lambda$0$add(arrayList, "textIndent", this.textIndent);
        }
        if (!TextUnit.m9233equalsimpl0(resolvedStyle.fontSize, this.fontSize)) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_FONT_SIZE, TextUnit.m9226boximpl(this.fontSize));
        }
        if (!TextUnit.m9233equalsimpl0(resolvedStyle.lineHeight, this.lineHeight)) {
            valueElements$lambda$0$add(arrayList, "lineHeight", TextUnit.m9226boximpl(this.lineHeight));
        }
        if (!TextUnit.m9233equalsimpl0(resolvedStyle.letterSpacing, this.letterSpacing)) {
            valueElements$lambda$0$add(arrayList, "letterSpacing", TextUnit.m9226boximpl(this.letterSpacing));
        }
        if (!BaselineShift.m8785equalsimpl0(resolvedStyle.baselineShift, this.baselineShift)) {
            valueElements$lambda$0$add(arrayList, "baselineShift", BaselineShift.m8782boximpl(this.baselineShift));
        }
        if (!LineBreak.m8824equalsimpl0(resolvedStyle.lineBreak, this.lineBreak)) {
            valueElements$lambda$0$add(arrayList, "lineBreak", LineBreak.m8818boximpl(this.lineBreak));
        }
        if (!TextAlign.m8916equalsimpl0(resolvedStyle.m2395getTextAligne0LSkKk$foundation(), m2395getTextAligne0LSkKk$foundation())) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_TEXT_ALIGN, TextAlign.m8913boximpl(m2395getTextAligne0LSkKk$foundation()));
        }
        if (!TextDirection.m8933equalsimpl0(resolvedStyle.m2396getTextDirections_7Xco$foundation(), m2396getTextDirections_7Xco$foundation())) {
            valueElements$lambda$0$add(arrayList, "textDirection", TextDirection.m8930boximpl(m2396getTextDirections_7Xco$foundation()));
        }
        if (!Hyphens.m8808equalsimpl0(resolvedStyle.m2391getHyphensvmbZdU8$foundation(), m2391getHyphensvmbZdU8$foundation())) {
            valueElements$lambda$0$add(arrayList, "hyphens", Hyphens.m8805boximpl(m2391getHyphensvmbZdU8$foundation()));
        }
        if (!FontStyle.m8603equalsimpl0(resolvedStyle.m2388getFontStyle_LCdwA$foundation(), m2388getFontStyle_LCdwA$foundation())) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_FONT_STYLE, FontStyle.m8600boximpl(m2388getFontStyle_LCdwA$foundation()));
        }
        if (!aa4.e(resolvedStyle.getFontWeight$foundation(), getFontWeight$foundation())) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_FONT_WEIGHT, getFontWeight$foundation());
        }
        if (!FontSynthesis.m8614equalsimpl0(resolvedStyle.m2389getFontSynthesisGVVA2EU$foundation(), m2389getFontSynthesisGVVA2EU$foundation())) {
            valueElements$lambda$0$add(arrayList, "fontSynthesis", FontSynthesis.m8611boximpl(m2389getFontSynthesisGVVA2EU$foundation()));
        }
        if (!aa4.e(resolvedStyle.getTextDecoration$foundation(), getTextDecoration$foundation())) {
            valueElements$lambda$0$add(arrayList, TtmlNode.ATTR_TTS_TEXT_DECORATION, getTextDecoration$foundation());
        }
        return arrayList;
    }

    private static final boolean valueElements$lambda$0$add(List<ValueElement> list, String str, Object obj) {
        return list.add(new ValueElement(str, obj));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void alpha(float f) {
        this.flags |= 4;
        this.alpha = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void animate(AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2, Style style) {
        this.flags |= 16;
        int i = this.currentIndex;
        int i2 = 1318433304 ^ i;
        this.compositeHash = ResolvedStyleKt.updateHashEnter(this.compositeHash, i2);
        MutableIntList mutableIntListPushIndex = pushIndex(i);
        this.currentIndex = 0;
        if (this.animating) {
            StyleScopeKt.apply(this, style);
        } else {
            StyleOuterNode styleOuterNode = this.node;
            styleOuterNode.getClass();
            StyleAnimations animations$foundation = styleOuterNode.getAnimations$foundation();
            if (animations$foundation == null) {
                animations$foundation = new StyleAnimations(styleOuterNode);
                styleOuterNode.setAnimations$foundation(animations$foundation);
            }
            animations$foundation.record(this.compositeHash ^ this.currentIndex, style, animationSpec, animationSpec2);
        }
        this.currentIndex = mutableIntListPushIndex.removeAt(mutableIntListPushIndex._size - 1) + 1;
        this.compositeHash = ResolvedStyleKt.updateHashExit(this.compositeHash, i2);
    }

    public final void applyInheritableStyles$foundation(ResolvedStyle resolvedStyle) {
        int i = resolvedStyle.flags & 96;
        if (i == 0) {
            return;
        }
        this.flags = i | this.flags;
        long j = resolvedStyle.contentColor;
        long j2 = this.contentColor;
        if (j == 16) {
            j = j2;
        }
        this.contentColor = j;
        Brush brush = resolvedStyle.contentBrush;
        if (brush == null) {
            brush = this.contentBrush;
        }
        this.contentBrush = brush;
        FontFamily fontFamily = resolvedStyle.fontFamily;
        if (fontFamily == null) {
            fontFamily = this.fontFamily;
        }
        this.fontFamily = fontFamily;
        TextIndent textIndent = resolvedStyle.textIndent;
        if (textIndent == null) {
            textIndent = this.textIndent;
        }
        this.textIndent = textIndent;
        long j3 = resolvedStyle.fontSize;
        long j4 = this.fontSize;
        if (TextUnit.m9234getRawTypeimpl(j3) == 0) {
            j3 = j4;
        }
        this.fontSize = j3;
        long j5 = resolvedStyle.lineHeight;
        long j6 = this.lineHeight;
        if (TextUnit.m9234getRawTypeimpl(j5) == 0) {
            j5 = j6;
        }
        this.lineHeight = j5;
        long j7 = resolvedStyle.letterSpacing;
        long j8 = this.letterSpacing;
        if (TextUnit.m9234getRawTypeimpl(j7) == 0) {
            j7 = j8;
        }
        this.letterSpacing = j7;
        float f = resolvedStyle.baselineShift;
        float f2 = this.baselineShift;
        if (!BaselineShift.m8785equalsimpl0(f, BaselineShift.Companion.m8796getUnspecifiedy9eOQZs())) {
            f = f2;
        }
        this.baselineShift = f;
        int i2 = resolvedStyle.lineBreak;
        int i3 = this.lineBreak;
        if (LineBreak.m8824equalsimpl0(i2, LineBreak.Companion.m8838getUnspecifiedrAG3T2k())) {
            i2 = i3;
        }
        this.lineBreak = i2;
        int i4 = this.textEnums;
        int i5 = resolvedStyle.textEnums;
        int i6 = i5 & 3;
        int i7 = i4 & (-4);
        if (i6 != 0) {
            i4 = i6;
        }
        int i8 = i4 | i7;
        int i9 = i5 & 28;
        int i10 = i8 & (-29);
        if (i9 != 0) {
            i8 = i9;
        }
        int i11 = i8 | i10;
        int i12 = i5 & 112;
        int i13 = i11 & (-113);
        if (i12 != 0) {
            i11 = i12;
        }
        int i14 = i11 | i13;
        int i15 = i5 & ViewUtils.EDGE_TO_EDGE_FLAGS;
        int i16 = i14 & (-769);
        if (i15 != 0) {
            i14 = i15;
        }
        int i17 = i14 | i16;
        int i18 = i5 & 15360;
        int i19 = i17 & (-15361);
        if (i18 != 0) {
            i17 = i18;
        }
        int i20 = i17 | i19;
        int i21 = i5 & 134086656;
        int i22 = (-134086657) & i20;
        if (i21 != 0) {
            i20 = i21;
        }
        this.textEnums = i22 | i20;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void background(Brush brush) {
        this.flags |= 2;
        this.backgroundBrush = brush;
        this.backgroundColor = Color.Companion.m6268getUnspecified0d7_KjU();
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: background-8_81llA, reason: not valid java name */
    public void mo2353background8_81llA(long j) {
        this.flags |= 2;
        this.backgroundColor = j;
        this.backgroundBrush = null;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: baselineShift-4Dl_Bck, reason: not valid java name */
    public void mo2354baselineShift4Dl_Bck(float f) {
        this.flags |= 32;
        this.baselineShift = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: border-D5KLDUw, reason: not valid java name */
    public void mo2355borderD5KLDUw(float f, Brush brush) {
        mo2358borderWidth0680j_4(f);
        borderBrush(brush);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: border-cXLIe8U, reason: not valid java name */
    public void mo2356bordercXLIe8U(float f, long j) {
        mo2358borderWidth0680j_4(f);
        mo2357borderColor8_81llA(j);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void borderBrush(Brush brush) {
        this.flags |= 2;
        this.borderBrush = brush;
        this.borderColor = Color.Companion.m6268getUnspecified0d7_KjU();
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: borderColor-8_81llA, reason: not valid java name */
    public void mo2357borderColor8_81llA(long j) {
        this.flags |= 2;
        this.borderColor = j;
        this.borderBrush = null;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: borderWidth-0680j_4, reason: not valid java name */
    public void mo2358borderWidth0680j_4(float f) {
        float fCeil;
        this.flags |= 3;
        Dp.Companion companion = Dp.Companion;
        if (Dp.m9047equalsimpl0(f, companion.m9062getUnspecifiedD9Ej5fM())) {
            fCeil = 0.0f;
        } else {
            fCeil = Dp.m9047equalsimpl0(f, companion.m9060getHairlineD9Ej5fM()) ? 1.0f : (float) Math.ceil(f * this._density);
        }
        this.borderWidth = fCeil;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: bottom-0680j_4, reason: not valid java name */
    public void mo2359bottom0680j_4(float f) {
        this.flags |= 8;
        this.bottom = f * this._density;
    }

    public final void clear$foundation() {
        ResolvedStyleKt.EmptyResolvedStyle.copyInto$foundation(this);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void clip(boolean z) {
        this.flags |= 4;
        this.clip = z;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void contentBrush(Brush brush) {
        this.flags |= 64;
        this.contentBrush = brush;
        this.contentColor = Color.Companion.m6268getUnspecified0d7_KjU();
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentColor-8_81llA, reason: not valid java name */
    public void mo2360contentColor8_81llA(long j) {
        this.flags |= 64;
        this.contentColor = j;
        this.contentBrush = null;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPadding-0680j_4, reason: not valid java name */
    public void mo2361contentPadding0680j_4(float f) {
        this.flags |= 1;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.contentPaddingStart = fMo1428roundToPx0680j_4;
        this.contentPaddingEnd = fMo1428roundToPx0680j_4;
        this.contentPaddingTop = fMo1428roundToPx0680j_4;
        this.contentPaddingBottom = fMo1428roundToPx0680j_4;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPadding-YgX7TsA, reason: not valid java name */
    public void mo2362contentPaddingYgX7TsA(float f, float f2) {
        this.flags |= 1;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f2);
        this.contentPaddingTop = fMo1428roundToPx0680j_4;
        this.contentPaddingBottom = fMo1428roundToPx0680j_4;
        float fMo1428roundToPx0680j_5 = mo1428roundToPx0680j_4(f);
        this.contentPaddingEnd = fMo1428roundToPx0680j_5;
        this.contentPaddingStart = fMo1428roundToPx0680j_5;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPadding-a9UjIt4, reason: not valid java name */
    public void mo2363contentPaddinga9UjIt4(float f, float f2, float f3, float f4) {
        this.flags |= 1;
        this.contentPaddingTop = mo1428roundToPx0680j_4(f2);
        this.contentPaddingEnd = mo1428roundToPx0680j_4(f3);
        this.contentPaddingBottom = mo1428roundToPx0680j_4(f4);
        this.contentPaddingStart = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingBottom-0680j_4, reason: not valid java name */
    public void mo2364contentPaddingBottom0680j_4(float f) {
        this.flags |= 1;
        this.contentPaddingBottom = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingEnd-0680j_4, reason: not valid java name */
    public void mo2365contentPaddingEnd0680j_4(float f) {
        this.flags |= 1;
        this.contentPaddingEnd = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingHorizontal-0680j_4, reason: not valid java name */
    public void mo2366contentPaddingHorizontal0680j_4(float f) {
        this.flags |= 1;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.contentPaddingStart = fMo1428roundToPx0680j_4;
        this.contentPaddingEnd = fMo1428roundToPx0680j_4;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingStart-0680j_4, reason: not valid java name */
    public void mo2367contentPaddingStart0680j_4(float f) {
        this.flags |= 1;
        this.contentPaddingStart = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingTop-0680j_4, reason: not valid java name */
    public void mo2368contentPaddingTop0680j_4(float f) {
        this.flags |= 1;
        this.contentPaddingTop = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: contentPaddingVertical-0680j_4, reason: not valid java name */
    public void mo2369contentPaddingVertical0680j_4(float f) {
        this.flags |= 1;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.contentPaddingTop = fMo1428roundToPx0680j_4;
        this.contentPaddingBottom = fMo1428roundToPx0680j_4;
    }

    public final ResolvedStyle copy$foundation() {
        ResolvedStyle resolvedStyle = new ResolvedStyle();
        copyInto$foundation(resolvedStyle);
        return resolvedStyle;
    }

    public final ResolvedStyle copyInheritedStyles$foundation() {
        ResolvedStyle resolvedStyle = new ResolvedStyle();
        copyInheritedStylesInto$foundation(resolvedStyle);
        return resolvedStyle;
    }

    public final void copyInheritedStylesInto$foundation(ResolvedStyle resolvedStyle) {
        resolvedStyle.contentColor = this.contentColor;
        resolvedStyle.contentBrush = this.contentBrush;
        resolvedStyle.fontFamily = this.fontFamily;
        resolvedStyle.textIndent = this.textIndent;
        resolvedStyle.fontSize = this.fontSize;
        resolvedStyle.lineHeight = this.lineHeight;
        resolvedStyle.letterSpacing = this.letterSpacing;
        resolvedStyle.baselineShift = this.baselineShift;
        resolvedStyle.lineBreak = this.lineBreak;
        resolvedStyle.textEnums = this.textEnums;
    }

    public final void copyInto$foundation(ResolvedStyle resolvedStyle) {
        resolvedStyle.flags = this.flags;
        resolvedStyle.left = this.left;
        resolvedStyle.top = this.top;
        resolvedStyle.right = this.right;
        resolvedStyle.bottom = this.bottom;
        resolvedStyle.minHeight = this.minHeight;
        resolvedStyle.maxHeight = this.maxHeight;
        resolvedStyle.minWidth = this.minWidth;
        resolvedStyle.maxWidth = this.maxWidth;
        resolvedStyle.contentPaddingStart = this.contentPaddingStart;
        resolvedStyle.contentPaddingEnd = this.contentPaddingEnd;
        resolvedStyle.contentPaddingTop = this.contentPaddingTop;
        resolvedStyle.contentPaddingBottom = this.contentPaddingBottom;
        resolvedStyle.externalPaddingStart = this.externalPaddingStart;
        resolvedStyle.externalPaddingEnd = this.externalPaddingEnd;
        resolvedStyle.externalPaddingTop = this.externalPaddingTop;
        resolvedStyle.externalPaddingBottom = this.externalPaddingBottom;
        resolvedStyle.borderWidth = this.borderWidth;
        resolvedStyle.shape = this.shape;
        resolvedStyle.alpha = this.alpha;
        resolvedStyle.scaleX = this.scaleX;
        resolvedStyle.scaleY = this.scaleY;
        resolvedStyle.translationX = this.translationX;
        resolvedStyle.translationY = this.translationY;
        resolvedStyle.rotationX = this.rotationX;
        resolvedStyle.rotationY = this.rotationY;
        resolvedStyle.rotationZ = this.rotationZ;
        resolvedStyle.transformOrigin = this.transformOrigin;
        resolvedStyle.zIndex = this.zIndex;
        resolvedStyle.cameraDistance = this.cameraDistance;
        resolvedStyle.borderColor = this.borderColor;
        resolvedStyle.borderBrush = this.borderBrush;
        resolvedStyle.backgroundColor = this.backgroundColor;
        resolvedStyle.backgroundBrush = this.backgroundBrush;
        resolvedStyle.foregroundBrush = this.foregroundBrush;
        resolvedStyle.dropShadow = this.dropShadow;
        resolvedStyle.innerShadow = this.innerShadow;
        resolvedStyle.clip = this.clip;
        resolvedStyle.width = this.width;
        resolvedStyle.height = this.height;
        resolvedStyle.widthFraction = this.widthFraction;
        resolvedStyle.heightFraction = this.heightFraction;
        copyInheritedStylesInto$foundation(resolvedStyle);
    }

    public final int diff$foundation(ResolvedStyle resolvedStyle, int i) {
        int i2 = this.flags;
        int i3 = resolvedStyle.flags;
        int i4 = i2 ^ i3;
        int i5 = i & i2 & i3;
        if ((i5 & 1) != 0 && (this.contentPaddingStart != resolvedStyle.contentPaddingStart || this.contentPaddingEnd != resolvedStyle.contentPaddingEnd || this.contentPaddingTop != resolvedStyle.contentPaddingTop || this.contentPaddingBottom != resolvedStyle.contentPaddingBottom || this.borderWidth != resolvedStyle.borderWidth)) {
            i4 |= 1;
        }
        if ((i5 & 8) != 0 && (this.width != resolvedStyle.width || this.height != resolvedStyle.height || this.widthFraction != resolvedStyle.widthFraction || this.heightFraction != resolvedStyle.heightFraction || this.externalPaddingStart != resolvedStyle.externalPaddingStart || this.externalPaddingEnd != resolvedStyle.externalPaddingEnd || this.externalPaddingTop != resolvedStyle.externalPaddingTop || this.externalPaddingBottom != resolvedStyle.externalPaddingBottom || Float.floatToRawIntBits(this.left) != Float.floatToRawIntBits(resolvedStyle.left) || Float.floatToRawIntBits(this.top) != Float.floatToRawIntBits(resolvedStyle.top) || Float.floatToRawIntBits(this.right) != Float.floatToRawIntBits(resolvedStyle.right) || Float.floatToRawIntBits(this.bottom) != Float.floatToRawIntBits(resolvedStyle.bottom) || Float.floatToRawIntBits(this.minWidth) != Float.floatToRawIntBits(resolvedStyle.minWidth) || Float.floatToRawIntBits(this.maxWidth) != Float.floatToRawIntBits(resolvedStyle.maxWidth) || Float.floatToRawIntBits(this.minHeight) != Float.floatToRawIntBits(resolvedStyle.minHeight) || Float.floatToRawIntBits(this.maxHeight) != Float.floatToRawIntBits(resolvedStyle.maxHeight))) {
            i4 |= 8;
        }
        if ((i5 & 2) != 0 && (this.borderWidth != resolvedStyle.borderWidth || !Color.m6233equalsimpl0(this.borderColor, resolvedStyle.borderColor) || !aa4.e(this.borderBrush, resolvedStyle.borderBrush) || !Color.m6233equalsimpl0(this.backgroundColor, resolvedStyle.backgroundColor) || !aa4.e(this.backgroundBrush, resolvedStyle.backgroundBrush) || !aa4.e(this.foregroundBrush, resolvedStyle.foregroundBrush) || !aa4.e(this.innerShadow, resolvedStyle.innerShadow) || !aa4.e(this.dropShadow, resolvedStyle.dropShadow) || !aa4.e(this.shape, resolvedStyle.shape))) {
            i4 |= 2;
        }
        if ((i5 & 4) != 0 && (this.alpha != resolvedStyle.alpha || this.scaleX != resolvedStyle.scaleX || this.scaleY != resolvedStyle.scaleY || this.translationX != resolvedStyle.translationX || this.translationY != resolvedStyle.translationY || this.rotationX != resolvedStyle.rotationX || this.rotationY != resolvedStyle.rotationY || this.rotationZ != resolvedStyle.rotationZ || !TransformOrigin.m6639equalsimpl0(this.transformOrigin, resolvedStyle.transformOrigin) || this.clip != resolvedStyle.clip)) {
            i4 |= 4;
        }
        if (!aa4.e(this.shape, resolvedStyle.shape)) {
            i4 |= 6;
        }
        if ((i5 & 64) != 0 && (!Color.m6233equalsimpl0(this.contentColor, resolvedStyle.contentColor) || !aa4.e(this.contentBrush, resolvedStyle.contentBrush))) {
            i4 |= 64;
        }
        return ((i5 & 32) == 0 || (aa4.e(this.fontFamily, resolvedStyle.fontFamily) && aa4.e(this.textIndent, resolvedStyle.textIndent) && TextUnit.m9233equalsimpl0(this.fontSize, resolvedStyle.fontSize) && TextUnit.m9233equalsimpl0(this.lineHeight, resolvedStyle.lineHeight) && TextUnit.m9233equalsimpl0(this.letterSpacing, resolvedStyle.letterSpacing) && BaselineShift.m8785equalsimpl0(this.baselineShift, resolvedStyle.baselineShift) && LineBreak.m8824equalsimpl0(this.lineBreak, resolvedStyle.lineBreak) && this.textEnums == resolvedStyle.textEnums)) ? i4 : i4 | 96;
    }

    public final void doneResolve$foundation() {
        this.node = null;
        this.animating = false;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void dropShadow(Shadow shadow) {
        this.dropShadow = shadow;
        this.flags |= 2;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPadding-0680j_4, reason: not valid java name */
    public void mo2370externalPadding0680j_4(float f) {
        this.flags |= 8;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.externalPaddingStart = fMo1428roundToPx0680j_4;
        this.externalPaddingEnd = fMo1428roundToPx0680j_4;
        this.externalPaddingTop = fMo1428roundToPx0680j_4;
        this.externalPaddingBottom = fMo1428roundToPx0680j_4;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPadding-YgX7TsA, reason: not valid java name */
    public void mo2371externalPaddingYgX7TsA(float f, float f2) {
        this.flags |= 8;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f2);
        this.externalPaddingTop = fMo1428roundToPx0680j_4;
        this.externalPaddingBottom = fMo1428roundToPx0680j_4;
        float fMo1428roundToPx0680j_5 = mo1428roundToPx0680j_4(f);
        this.externalPaddingEnd = fMo1428roundToPx0680j_5;
        this.externalPaddingStart = fMo1428roundToPx0680j_5;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPadding-a9UjIt4, reason: not valid java name */
    public void mo2372externalPaddinga9UjIt4(float f, float f2, float f3, float f4) {
        this.flags |= 8;
        this.externalPaddingTop = mo1428roundToPx0680j_4(f2);
        this.externalPaddingEnd = mo1428roundToPx0680j_4(f3);
        this.externalPaddingBottom = mo1428roundToPx0680j_4(f4);
        this.externalPaddingStart = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingBottom-0680j_4, reason: not valid java name */
    public void mo2373externalPaddingBottom0680j_4(float f) {
        this.flags |= 8;
        this.externalPaddingBottom = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingEnd-0680j_4, reason: not valid java name */
    public void mo2374externalPaddingEnd0680j_4(float f) {
        this.flags |= 8;
        this.externalPaddingEnd = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingHorizontal-0680j_4, reason: not valid java name */
    public void mo2375externalPaddingHorizontal0680j_4(float f) {
        this.flags |= 8;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.externalPaddingStart = fMo1428roundToPx0680j_4;
        this.externalPaddingEnd = fMo1428roundToPx0680j_4;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingStart-0680j_4, reason: not valid java name */
    public void mo2376externalPaddingStart0680j_4(float f) {
        this.flags |= 8;
        this.externalPaddingStart = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingTop-0680j_4, reason: not valid java name */
    public void mo2377externalPaddingTop0680j_4(float f) {
        this.flags |= 8;
        this.externalPaddingTop = mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: externalPaddingVertical-0680j_4, reason: not valid java name */
    public void mo2378externalPaddingVertical0680j_4(float f) {
        this.flags |= 8;
        float fMo1428roundToPx0680j_4 = mo1428roundToPx0680j_4(f);
        this.externalPaddingTop = fMo1428roundToPx0680j_4;
        this.externalPaddingBottom = fMo1428roundToPx0680j_4;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void fontFamily(FontFamily fontFamily) {
        this.flags |= 32;
        this.fontFamily = fontFamily;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: fontSize--R2X_6o, reason: not valid java name */
    public void mo2379fontSizeR2X_6o(long j) {
        this.flags |= 32;
        this.fontSize = j;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: fontStyle-nzbMABs, reason: not valid java name */
    public void mo2380fontStylenzbMABs(int i) {
        this.flags |= 32;
        this.textEnums = ((i | 2) & 3) | (this.textEnums & (-4));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: fontSynthesis-6p3vJLY, reason: not valid java name */
    public void mo2381fontSynthesis6p3vJLY(int i) {
        this.flags |= 32;
        this.textEnums = (((i & 7) | 8) << 10) | this.textEnums;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void fontWeight(FontWeight fontWeight) {
        this.flags |= 32;
        this.textEnums = ((fontWeight.getWeight() << 17) & 134086656) | (this.textEnums & (-134086657));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void foreground(Brush brush) {
        this.flags |= 2;
        this.foregroundBrush = brush;
        this.foregroundColor = Color.Companion.m6268getUnspecified0d7_KjU();
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: foreground-8_81llA, reason: not valid java name */
    public void mo2382foreground8_81llA(long j) {
        this.flags |= 2;
        this.foregroundColor = j;
        this.foregroundBrush = null;
    }

    public final float getAlpha$foundation() {
        return this.alpha;
    }

    public final Brush getBackgroundBrush$foundation() {
        return this.backgroundBrush;
    }

    /* JADX INFO: renamed from: getBackgroundColor-0d7_KjU$foundation, reason: not valid java name */
    public final long m2383getBackgroundColor0d7_KjU$foundation() {
        return this.backgroundColor;
    }

    /* JADX INFO: renamed from: getBaselineShift-y9eOQZs$foundation, reason: not valid java name */
    public final float m2384getBaselineShifty9eOQZs$foundation() {
        return this.baselineShift;
    }

    public final Brush getBorderBrush$foundation() {
        return this.borderBrush;
    }

    /* JADX INFO: renamed from: getBorderColor-0d7_KjU$foundation, reason: not valid java name */
    public final long m2385getBorderColor0d7_KjU$foundation() {
        return this.borderColor;
    }

    public final float getBorderWidth$foundation() {
        return this.borderWidth;
    }

    public final float getBottom$foundation() {
        return this.bottom;
    }

    public final float getCameraDistance$foundation() {
        return this.cameraDistance;
    }

    public final boolean getClip$foundation() {
        return this.clip;
    }

    public final Brush getContentBrush$foundation() {
        return this.contentBrush;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU$foundation, reason: not valid java name */
    public final long m2386getContentColor0d7_KjU$foundation() {
        return this.contentColor;
    }

    public final float getContentPaddingBottom$foundation() {
        return this.contentPaddingBottom;
    }

    public final float getContentPaddingEnd$foundation() {
        return this.contentPaddingEnd;
    }

    public final float getContentPaddingStart$foundation() {
        return this.contentPaddingStart;
    }

    public final float getContentPaddingTop$foundation() {
        return this.contentPaddingTop;
    }

    @Override // androidx.compose.runtime.CompositionLocalAccessorScope
    public <T> T getCurrentValue(CompositionLocal<T> compositionLocal) {
        StyleOuterNode styleOuterNode = this.node;
        styleOuterNode.getClass();
        return (T) CompositionLocalConsumerModifierNodeKt.currentValueOf(styleOuterNode, compositionLocal);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this._density;
    }

    public final Object getDropShadow$foundation() {
        return this.dropShadow;
    }

    public final float getExternalPaddingBottom$foundation() {
        return this.externalPaddingBottom;
    }

    public final float getExternalPaddingEnd$foundation() {
        return this.externalPaddingEnd;
    }

    public final float getExternalPaddingStart$foundation() {
        return this.externalPaddingStart;
    }

    public final float getExternalPaddingTop$foundation() {
        return this.externalPaddingTop;
    }

    public final FontFamily getFontFamily$foundation() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this._fontScale;
    }

    /* JADX INFO: renamed from: getFontSize-XSAIIZE$foundation, reason: not valid java name */
    public final long m2387getFontSizeXSAIIZE$foundation() {
        return this.fontSize;
    }

    /* JADX INFO: renamed from: getFontStyle-_-LCdwA$foundation, reason: not valid java name */
    public final int m2388getFontStyle_LCdwA$foundation() {
        return (this.textEnums & 1) == 1 ? FontStyle.Companion.m8609getItalic_LCdwA() : FontStyle.Companion.m8610getNormal_LCdwA();
    }

    /* JADX INFO: renamed from: getFontSynthesis-GVVA2EU$foundation, reason: not valid java name */
    public final int m2389getFontSynthesisGVVA2EU$foundation() {
        return FontSynthesis.Companion.m8624valueOf9CiegCU(((this.textEnums & 15360) >> 10) & 7);
    }

    public final FontWeight getFontWeight$foundation() {
        return new FontWeight((this.textEnums & 134086656) >> 17);
    }

    public final Brush getForegroundBrush$foundation() {
        return this.foregroundBrush;
    }

    /* JADX INFO: renamed from: getForegroundColor-0d7_KjU$foundation, reason: not valid java name */
    public final long m2390getForegroundColor0d7_KjU$foundation() {
        return this.foregroundColor;
    }

    public final float getHeight$foundation() {
        return this.height;
    }

    public final float getHeightFraction$foundation() {
        return this.heightFraction;
    }

    /* JADX INFO: renamed from: getHyphens-vmbZdU8$foundation, reason: not valid java name */
    public final int m2391getHyphensvmbZdU8$foundation() {
        return Hyphens.Companion.m8815valueOfkPa1_AA((this.textEnums & ViewUtils.EDGE_TO_EDGE_FLAGS) >> 8);
    }

    public final Object getInnerShadow$foundation() {
        return this.innerShadow;
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public zo7<ValueElement> getInspectableElements() {
        return qn1.K(valueElements());
    }

    public final float getLeft$foundation() {
        return this.left;
    }

    /* JADX INFO: renamed from: getLetterSpacing-XSAIIZE$foundation, reason: not valid java name */
    public final long m2392getLetterSpacingXSAIIZE$foundation() {
        return this.letterSpacing;
    }

    /* JADX INFO: renamed from: getLineBreak-rAG3T2k$foundation, reason: not valid java name */
    public final int m2393getLineBreakrAG3T2k$foundation() {
        return this.lineBreak;
    }

    /* JADX INFO: renamed from: getLineHeight-XSAIIZE$foundation, reason: not valid java name */
    public final long m2394getLineHeightXSAIIZE$foundation() {
        return this.lineHeight;
    }

    public final float getMaxHeight$foundation() {
        return this.maxHeight;
    }

    public final float getMaxWidth$foundation() {
        return this.maxWidth;
    }

    public final float getMinHeight$foundation() {
        return this.minHeight;
    }

    public final float getMinWidth$foundation() {
        return this.minWidth;
    }

    public final float getRight$foundation() {
        return this.right;
    }

    public final float getRotationX$foundation() {
        return this.rotationX;
    }

    public final float getRotationY$foundation() {
        return this.rotationY;
    }

    public final float getRotationZ$foundation() {
        return this.rotationZ;
    }

    public final float getScaleX$foundation() {
        return this.scaleX;
    }

    public final float getScaleY$foundation() {
        return this.scaleY;
    }

    public final Shape getShape$foundation() {
        return this.shape;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public StyleState getState() {
        StyleOuterNode styleOuterNode = this.node;
        styleOuterNode.getClass();
        return styleOuterNode.getState$foundation();
    }

    /* JADX INFO: renamed from: getTextAlign-e0LSkKk$foundation, reason: not valid java name */
    public final int m2395getTextAligne0LSkKk$foundation() {
        return TextAlign.Companion.m8927valueOfIgVj0fw((this.textEnums & 28) >> 2);
    }

    public final TextDecoration getTextDecoration$foundation() {
        return TextDecoration.Companion.valueOf(((this.textEnums & 114688) >> 14) & 3);
    }

    /* JADX INFO: renamed from: getTextDirection-s_7X-co$foundation, reason: not valid java name */
    public final int m2396getTextDirections_7Xco$foundation() {
        return TextDirection.Companion.m8943valueOfE8nx0Ws((this.textEnums & 112) >> 4);
    }

    public final int getTextEnums$foundation() {
        return this.textEnums;
    }

    public final TextIndent getTextIndent$foundation() {
        return this.textIndent;
    }

    public final float getTop$foundation() {
        return this.top;
    }

    /* JADX INFO: renamed from: getTransformOrigin-SzJe1aQ$foundation, reason: not valid java name */
    public final long m2397getTransformOriginSzJe1aQ$foundation() {
        return this.transformOrigin;
    }

    public final float getTranslationX$foundation() {
        return this.translationX;
    }

    public final float getTranslationY$foundation() {
        return this.translationY;
    }

    public final float getWidth$foundation() {
        return this.width;
    }

    public final float getWidthFraction$foundation() {
        return this.widthFraction;
    }

    public final float getZIndex$foundation() {
        return this.zIndex;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void height(float f) {
        this.flags |= 8;
        this.heightFraction = f;
        this.height = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: height-0680j_4, reason: not valid java name */
    public void mo2398height0680j_4(float f) {
        this.flags |= 8;
        this.height = f * this._density;
        this.heightFraction = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: hyphens--3fSNIE, reason: not valid java name */
    public void mo2399hyphens3fSNIE(int i) {
        this.flags |= 32;
        this.textEnums = ((i << 8) & ViewUtils.EDGE_TO_EDGE_FLAGS) | (this.textEnums & (-769));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void innerShadow(Shadow shadow) {
        this.innerShadow = shadow;
        this.flags |= 2;
    }

    public final boolean isFontWeightSpecified$foundation() {
        return ((this.textEnums & 134086656) >> 17) != 0;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: left-0680j_4, reason: not valid java name */
    public void mo2400left0680j_4(float f) {
        this.flags |= 8;
        this.left = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: letterSpacing--R2X_6o, reason: not valid java name */
    public void mo2401letterSpacingR2X_6o(long j) {
        this.flags |= 32;
        this.letterSpacing = j;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: lineBreak-CZqVlQI, reason: not valid java name */
    public void mo2402lineBreakCZqVlQI(int i) {
        this.flags |= 32;
        this.lineBreak = i;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: lineHeight--R2X_6o, reason: not valid java name */
    public void mo2403lineHeightR2X_6o(long j) {
        this.flags |= 32;
        this.lineHeight = j;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: maxHeight-0680j_4, reason: not valid java name */
    public void mo2404maxHeight0680j_4(float f) {
        this.flags |= 8;
        this.maxHeight = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: maxSize-EaSLcWc, reason: not valid java name */
    public void mo2405maxSizeEaSLcWc(long j) {
        mo2407maxWidth0680j_4(DpSize.m9140getWidthD9Ej5fM(j));
        mo2404maxHeight0680j_4(DpSize.m9138getHeightD9Ej5fM(j));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: maxSize-YgX7TsA, reason: not valid java name */
    public void mo2406maxSizeYgX7TsA(float f, float f2) {
        mo2407maxWidth0680j_4(f);
        mo2404maxHeight0680j_4(f2);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: maxWidth-0680j_4, reason: not valid java name */
    public void mo2407maxWidth0680j_4(float f) {
        this.flags |= 8;
        this.maxWidth = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: minHeight-0680j_4, reason: not valid java name */
    public void mo2408minHeight0680j_4(float f) {
        this.flags |= 8;
        this.minHeight = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: minSize-EaSLcWc, reason: not valid java name */
    public void mo2409minSizeEaSLcWc(long j) {
        mo2411minWidth0680j_4(DpSize.m9140getWidthD9Ej5fM(j));
        mo2408minHeight0680j_4(DpSize.m9138getHeightD9Ej5fM(j));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: minSize-YgX7TsA, reason: not valid java name */
    public void mo2410minSizeYgX7TsA(float f, float f2) {
        mo2411minWidth0680j_4(f);
        mo2408minHeight0680j_4(f2);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: minWidth-0680j_4, reason: not valid java name */
    public void mo2411minWidth0680j_4(float f) {
        this.flags |= 8;
        this.minWidth = f * this._density;
    }

    public final void resolve$foundation(Style style, StyleOuterNode styleOuterNode, Density density, boolean z) {
        startResolve$foundation(styleOuterNode, density, z);
        style.applyStyle(this);
        doneResolve$foundation();
    }

    public final void resolveForTesting$foundation(Style style, Density density, boolean z, StyleState styleState) {
        this.currentIndex = 0;
        this.compositeHash = 0;
        this.node = new StyleOuterNode(styleState, style);
        this._density = density.getDensity();
        this.animating = z;
        style.applyStyle(this);
        doneResolve$foundation();
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: right-0680j_4, reason: not valid java name */
    public void mo2412right0680j_4(float f) {
        this.flags |= 8;
        this.right = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void rotationX(float f) {
        this.flags |= 4;
        this.rotationX = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void rotationY(float f) {
        this.flags |= 4;
        this.rotationY = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void rotationZ(float f) {
        this.flags |= 4;
        this.rotationZ = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void scale(float f) {
        this.flags |= 4;
        this.scaleX = f;
        this.scaleY = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void scaleX(float f) {
        this.flags |= 4;
        this.scaleX = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void scaleY(float f) {
        this.flags |= 4;
        this.scaleY = f;
    }

    public final void setAlpha$foundation(float f) {
        this.alpha = f;
    }

    public final void setBackgroundBrush$foundation(Brush brush) {
        this.backgroundBrush = brush;
    }

    /* JADX INFO: renamed from: setBackgroundColor-8_81llA$foundation, reason: not valid java name */
    public final void m2413setBackgroundColor8_81llA$foundation(long j) {
        this.backgroundColor = j;
    }

    /* JADX INFO: renamed from: setBaselineShift-4Dl_Bck$foundation, reason: not valid java name */
    public final void m2414setBaselineShift4Dl_Bck$foundation(float f) {
        this.baselineShift = f;
    }

    public final void setBorderBrush$foundation(Brush brush) {
        this.borderBrush = brush;
    }

    /* JADX INFO: renamed from: setBorderColor-8_81llA$foundation, reason: not valid java name */
    public final void m2415setBorderColor8_81llA$foundation(long j) {
        this.borderColor = j;
    }

    public final void setBorderWidth$foundation(float f) {
        this.borderWidth = f;
    }

    public final void setBottom$foundation(float f) {
        this.bottom = f;
    }

    public final void setCameraDistance$foundation(float f) {
        this.cameraDistance = f;
    }

    public final void setClip$foundation(boolean z) {
        this.clip = z;
    }

    public final void setContentBrush$foundation(Brush brush) {
        this.contentBrush = brush;
    }

    /* JADX INFO: renamed from: setContentColor-8_81llA$foundation, reason: not valid java name */
    public final void m2416setContentColor8_81llA$foundation(long j) {
        this.contentColor = j;
    }

    public final void setContentPaddingBottom$foundation(float f) {
        this.contentPaddingBottom = f;
    }

    public final void setContentPaddingEnd$foundation(float f) {
        this.contentPaddingEnd = f;
    }

    public final void setContentPaddingStart$foundation(float f) {
        this.contentPaddingStart = f;
    }

    public final void setContentPaddingTop$foundation(float f) {
        this.contentPaddingTop = f;
    }

    public final void setDropShadow$foundation(Object obj) {
        this.dropShadow = obj;
    }

    public final void setExternalPaddingBottom$foundation(float f) {
        this.externalPaddingBottom = f;
    }

    public final void setExternalPaddingEnd$foundation(float f) {
        this.externalPaddingEnd = f;
    }

    public final void setExternalPaddingStart$foundation(float f) {
        this.externalPaddingStart = f;
    }

    public final void setExternalPaddingTop$foundation(float f) {
        this.externalPaddingTop = f;
    }

    public final void setFontFamily$foundation(FontFamily fontFamily) {
        this.fontFamily = fontFamily;
    }

    /* JADX INFO: renamed from: setFontSize--R2X_6o$foundation, reason: not valid java name */
    public final void m2417setFontSizeR2X_6o$foundation(long j) {
        this.fontSize = j;
    }

    public final void setForegroundBrush$foundation(Brush brush) {
        this.foregroundBrush = brush;
    }

    /* JADX INFO: renamed from: setForegroundColor-8_81llA$foundation, reason: not valid java name */
    public final void m2418setForegroundColor8_81llA$foundation(long j) {
        this.foregroundColor = j;
    }

    public final void setHeight$foundation(float f) {
        this.height = f;
    }

    public final void setHeightFraction$foundation(float f) {
        this.heightFraction = f;
    }

    public final void setInnerShadow$foundation(Object obj) {
        this.innerShadow = obj;
    }

    public final void setLeft$foundation(float f) {
        this.left = f;
    }

    /* JADX INFO: renamed from: setLetterSpacing--R2X_6o$foundation, reason: not valid java name */
    public final void m2419setLetterSpacingR2X_6o$foundation(long j) {
        this.letterSpacing = j;
    }

    /* JADX INFO: renamed from: setLineBreak-CZqVlQI$foundation, reason: not valid java name */
    public final void m2420setLineBreakCZqVlQI$foundation(int i) {
        this.lineBreak = i;
    }

    /* JADX INFO: renamed from: setLineHeight--R2X_6o$foundation, reason: not valid java name */
    public final void m2421setLineHeightR2X_6o$foundation(long j) {
        this.lineHeight = j;
    }

    public final void setMaxHeight$foundation(float f) {
        this.maxHeight = f;
    }

    public final void setMaxWidth$foundation(float f) {
        this.maxWidth = f;
    }

    public final void setMinHeight$foundation(float f) {
        this.minHeight = f;
    }

    public final void setMinWidth$foundation(float f) {
        this.minWidth = f;
    }

    public final void setRight$foundation(float f) {
        this.right = f;
    }

    public final void setRotationX$foundation(float f) {
        this.rotationX = f;
    }

    public final void setRotationY$foundation(float f) {
        this.rotationY = f;
    }

    public final void setRotationZ$foundation(float f) {
        this.rotationZ = f;
    }

    public final void setScaleX$foundation(float f) {
        this.scaleX = f;
    }

    public final void setScaleY$foundation(float f) {
        this.scaleY = f;
    }

    public final void setShape$foundation(Shape shape) {
        this.shape = shape;
    }

    public final void setTextEnums$foundation(int i) {
        this.textEnums = i;
    }

    public final void setTextIndent$foundation(TextIndent textIndent) {
        this.textIndent = textIndent;
    }

    public final void setTop$foundation(float f) {
        this.top = f;
    }

    /* JADX INFO: renamed from: setTransformOrigin-__ExYCQ$foundation, reason: not valid java name */
    public final void m2422setTransformOrigin__ExYCQ$foundation(long j) {
        this.transformOrigin = j;
    }

    public final void setTranslationX$foundation(float f) {
        this.translationX = f;
    }

    public final void setTranslationY$foundation(float f) {
        this.translationY = f;
    }

    public final void setWidth$foundation(float f) {
        this.width = f;
    }

    public final void setWidthFraction$foundation(float f) {
        this.widthFraction = f;
    }

    public final void setZIndex$foundation(float f) {
        this.zIndex = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void shape(Shape shape) {
        this.flags |= 6;
        this.shape = shape;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: size-0680j_4, reason: not valid java name */
    public void mo2423size0680j_4(float f) {
        this.flags |= 8;
        float f2 = f * this._density;
        this.width = f2;
        this.widthFraction = Float.NaN;
        this.height = f2;
        this.heightFraction = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: size-EaSLcWc, reason: not valid java name */
    public void mo2424sizeEaSLcWc(long j) {
        this.flags |= 8;
        this.width = DpSize.m9140getWidthD9Ej5fM(j) * this._density;
        this.widthFraction = Float.NaN;
        this.height = DpSize.m9138getHeightD9Ej5fM(j) * this._density;
        this.heightFraction = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: size-YgX7TsA, reason: not valid java name */
    public void mo2425sizeYgX7TsA(float f, float f2) {
        this.flags |= 8;
        float f3 = this._density;
        this.width = f * f3;
        this.widthFraction = Float.NaN;
        this.height = f2 * f3;
        this.heightFraction = Float.NaN;
    }

    public final void startResolve$foundation(StyleOuterNode styleOuterNode, Density density, boolean z) {
        this.currentIndex = 0;
        this.compositeHash = 0;
        this.node = styleOuterNode;
        this._density = density.getDensity();
        this.animating = z;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public <T> void state(StyleStateKey<T> styleStateKey, Style style, bm3<? super StyleStateKey<T>, ? super StyleState, Boolean> bm3Var) {
        group(styleStateKey.hashCode(), bm3Var.invoke(styleStateKey, getState()).booleanValue(), style);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: textAlign-aXe7zB0, reason: not valid java name */
    public void mo2426textAlignaXe7zB0(int i) {
        this.flags |= 32;
        this.textEnums = ((i << 2) & 28) | (this.textEnums & (-29));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void textDecoration(TextDecoration textDecoration) {
        this.flags |= 64;
        this.textEnums = ((textDecoration.getMask() | 4) << 14) | this.textEnums;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: textDirection-Hejc4pk, reason: not valid java name */
    public void mo2427textDirectionHejc4pk(int i) {
        this.flags |= 32;
        this.textEnums = ((i << 4) & 112) | (this.textEnums & (-113));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void textIndent(TextIndent textIndent) {
        this.flags |= 32;
        this.textIndent = textIndent;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void textStyle(TextStyle textStyle) {
        SpanStyle spanStyle = textStyle.toSpanStyle();
        if (spanStyle.m8432getColor0d7_KjU() != 16) {
            mo2360contentColor8_81llA(spanStyle.m8432getColor0d7_KjU());
        }
        if (!(TextUnit.m9234getRawTypeimpl(spanStyle.m8433getFontSizeXSAIIZE()) == 0)) {
            mo2379fontSizeR2X_6o(spanStyle.m8433getFontSizeXSAIIZE());
        }
        if (!(TextUnit.m9234getRawTypeimpl(spanStyle.m8436getLetterSpacingXSAIIZE()) == 0)) {
            mo2401letterSpacingR2X_6o(spanStyle.m8436getLetterSpacingXSAIIZE());
        }
        Brush brush = spanStyle.getBrush();
        if (brush != null) {
            contentBrush(brush);
        }
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
        if (fontStyleM8434getFontStyle4Lr2A7w != null) {
            mo2380fontStylenzbMABs(fontStyleM8434getFontStyle4Lr2A7w.m8606unboximpl());
        }
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
        if (baselineShiftM8431getBaselineShift5SSeXJ0 != null) {
            float fM8788unboximpl = baselineShiftM8431getBaselineShift5SSeXJ0.m8788unboximpl();
            if (!Float.isNaN(fM8788unboximpl)) {
                mo2354baselineShift4Dl_Bck(fM8788unboximpl);
            }
        }
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight != null) {
            fontWeight(fontWeight);
        }
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration != null) {
            textDecoration(textDecoration);
        }
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
        if (fontSynthesisM8435getFontSynthesisZQGJjVo != null) {
            mo2381fontSynthesis6p3vJLY(fontSynthesisM8435getFontSynthesisZQGJjVo.m8619unboximpl());
        }
        ParagraphStyle paragraphStyle = textStyle.toParagraphStyle();
        TextIndent textIndent = paragraphStyle.getTextIndent();
        if (textIndent != null) {
            textIndent(textIndent);
        }
        if (!(TextUnit.m9234getRawTypeimpl(paragraphStyle.m8394getLineHeightXSAIIZE()) == 0)) {
            mo2403lineHeightR2X_6o(paragraphStyle.m8394getLineHeightXSAIIZE());
        }
        if (!LineBreak.m8824equalsimpl0(paragraphStyle.m8393getLineBreakrAG3T2k(), LineBreak.Companion.m8838getUnspecifiedrAG3T2k())) {
            mo2402lineBreakCZqVlQI(paragraphStyle.m8393getLineBreakrAG3T2k());
        }
        if (paragraphStyle.m8391getHyphensvmbZdU8() != 0) {
            mo2399hyphens3fSNIE(paragraphStyle.m8391getHyphensvmbZdU8());
        }
        if (paragraphStyle.m8398getTextDirections_7Xco() != 0) {
            mo2427textDirectionHejc4pk(paragraphStyle.m8398getTextDirections_7Xco());
        }
        if (paragraphStyle.m8396getTextAligne0LSkKk() != 0) {
            mo2426textAlignaXe7zB0(paragraphStyle.m8396getTextAligne0LSkKk());
        }
    }

    public final TextStyle toTextStyle$foundation(TextStyle textStyle) {
        ResolvedStyle resolvedStyle = ResolvedStyleKt.EmptyResolvedStyle;
        long jM8521getColor0d7_KjU = this.contentColor;
        if (jM8521getColor0d7_KjU == 16) {
            jM8521getColor0d7_KjU = textStyle.m8521getColor0d7_KjU();
        }
        long j = jM8521getColor0d7_KjU;
        long j2 = this.fontSize;
        long jM8522getFontSizeXSAIIZE = textStyle.m8522getFontSizeXSAIIZE();
        if (!(TextUnit.m9234getRawTypeimpl(j2) == 0)) {
            jM8522getFontSizeXSAIIZE = j2;
        }
        FontWeight fontWeight$foundation = isFontWeightSpecified$foundation() ? getFontWeight$foundation() : textStyle.getFontWeight();
        FontStyle fontStyleM8600boximpl = !FontStyle.m8603equalsimpl0(m2388getFontStyle_LCdwA$foundation(), resolvedStyle.m2388getFontStyle_LCdwA$foundation()) ? FontStyle.m8600boximpl(m2388getFontStyle_LCdwA$foundation()) : textStyle.m8523getFontStyle4Lr2A7w();
        FontSynthesis fontSynthesisM8611boximpl = !FontSynthesis.m8614equalsimpl0(m2389getFontSynthesisGVVA2EU$foundation(), resolvedStyle.m2389getFontSynthesisGVVA2EU$foundation()) ? FontSynthesis.m8611boximpl(m2389getFontSynthesisGVVA2EU$foundation()) : textStyle.m8524getFontSynthesisZQGJjVo();
        FontFamily fontFamily = this.fontFamily;
        if (fontFamily == null) {
            fontFamily = textStyle.getFontFamily();
        }
        String fontFeatureSettings = textStyle.getFontFeatureSettings();
        long j3 = this.letterSpacing;
        long jM8527getLetterSpacingXSAIIZE = textStyle.m8527getLetterSpacingXSAIIZE();
        if (TextUnit.m9234getRawTypeimpl(j3) == 0) {
            j3 = jM8527getLetterSpacingXSAIIZE;
        }
        BaselineShift baselineShiftM8782boximpl = !Float.isNaN(this.baselineShift) ? BaselineShift.m8782boximpl(this.baselineShift) : textStyle.m8520getBaselineShift5SSeXJ0();
        TextGeometricTransform textGeometricTransform = textStyle.getTextGeometricTransform();
        LocaleList localeList = textStyle.getLocaleList();
        long jM8519getBackground0d7_KjU = textStyle.m8519getBackground0d7_KjU();
        TextDecoration textDecoration$foundation = !aa4.e(getTextDecoration$foundation(), resolvedStyle.getTextDecoration$foundation()) ? getTextDecoration$foundation() : textStyle.getTextDecoration();
        androidx.compose.ui.graphics.Shadow shadow = textStyle.getShadow();
        DrawStyle drawStyle = textStyle.getDrawStyle();
        int iM2395getTextAligne0LSkKk$foundation = !TextAlign.m8916equalsimpl0(m2395getTextAligne0LSkKk$foundation(), resolvedStyle.m2395getTextAligne0LSkKk$foundation()) ? m2395getTextAligne0LSkKk$foundation() : textStyle.m8532getTextAligne0LSkKk();
        int iM2396getTextDirections_7Xco$foundation = !TextDirection.m8933equalsimpl0(m2396getTextDirections_7Xco$foundation(), resolvedStyle.m2396getTextDirections_7Xco$foundation()) ? m2396getTextDirections_7Xco$foundation() : textStyle.m8534getTextDirections_7Xco();
        FontWeight fontWeight = fontWeight$foundation;
        long j4 = this.lineHeight;
        long jM8530getLineHeightXSAIIZE = !((TextUnit.m9234getRawTypeimpl(j4) > 0L ? 1 : (TextUnit.m9234getRawTypeimpl(j4) == 0L ? 0 : -1)) == 0) ? j4 : textStyle.m8530getLineHeightXSAIIZE();
        TextIndent textIndent = this.textIndent;
        if (textIndent == null) {
            textIndent = textStyle.getTextIndent();
        }
        PlatformTextStyle platformStyle = textStyle.getPlatformStyle();
        LineHeightStyle lineHeightStyle = textStyle.getLineHeightStyle();
        int i = this.lineBreak;
        int iM8529getLineBreakrAG3T2k = textStyle.m8529getLineBreakrAG3T2k();
        TextIndent textIndent2 = textIndent;
        if (LineBreak.m8824equalsimpl0(i, LineBreak.Companion.m8838getUnspecifiedrAG3T2k())) {
            i = iM8529getLineBreakrAG3T2k;
        }
        BaselineShift baselineShift = baselineShiftM8782boximpl;
        TextDecoration textDecoration = textDecoration$foundation;
        FontStyle fontStyle = fontStyleM8600boximpl;
        TextStyle textStyle2 = new TextStyle(j, jM8522getFontSizeXSAIIZE, fontWeight, fontStyle, fontSynthesisM8611boximpl, fontFamily, fontFeatureSettings, j3, baselineShift, textGeometricTransform, localeList, jM8519getBackground0d7_KjU, textDecoration, shadow, drawStyle, iM2395getTextAligne0LSkKk$foundation, iM2396getTextDirections_7Xco$foundation, jM8530getLineHeightXSAIIZE, textIndent2, platformStyle, lineHeightStyle, i, !Hyphens.m8808equalsimpl0(m2391getHyphensvmbZdU8$foundation(), resolvedStyle.m2391getHyphensvmbZdU8$foundation()) ? m2391getHyphensvmbZdU8$foundation() : textStyle.m8526getHyphensvmbZdU8(), textStyle.getTextMotion(), (jh2) null);
        Brush brush = this.contentBrush;
        return brush != null ? TextStyle.m8502copyNs73l9s$default(textStyle2, brush, 0.0f, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 33554430, null) : textStyle2;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: top-0680j_4, reason: not valid java name */
    public void mo2428top0680j_4(float f) {
        this.flags |= 8;
        this.top = f * this._density;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: transformOrigin-__ExYCQ, reason: not valid java name */
    public void mo2429transformOrigin__ExYCQ(long j) {
        this.flags |= 4;
        this.transformOrigin = j;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void translation(float f, float f2) {
        this.flags |= 4;
        this.translationX = f;
        this.translationY = f2;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: translation-k-4lQ0M, reason: not valid java name */
    public void mo2430translationk4lQ0M(long j) {
        this.flags |= 4;
        this.translationX = Float.intBitsToFloat((int) (j >> 32));
        this.translationY = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void translationX(float f) {
        this.flags |= 4;
        this.translationX = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void translationY(float f) {
        this.flags |= 4;
        this.translationY = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void width(float f) {
        this.flags |= 8;
        this.widthFraction = f;
        this.width = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    /* JADX INFO: renamed from: width-0680j_4, reason: not valid java name */
    public void mo2431width0680j_4(float f) {
        this.flags |= 8;
        this.width = f * this._density;
        this.widthFraction = Float.NaN;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void zIndex(float f) {
        this.zIndex = f;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void dropShadow(Shadow... shadowArr) {
        this.dropShadow = shadowArr;
        this.flags |= 2;
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void innerShadow(Shadow... shadowArr) {
        this.innerShadow = shadowArr;
        this.flags |= 2;
    }

    private final void group(int i, ll3<j59> ll3Var) {
        int i2 = this.currentIndex;
        int i3 = i ^ i2;
        this.compositeHash = ResolvedStyleKt.updateHashEnter(this.compositeHash, i3);
        MutableIntList mutableIntListPushIndex = pushIndex(i2);
        this.currentIndex = 0;
        ll3Var.invoke();
        this.currentIndex = mutableIntListPushIndex.removeAt(mutableIntListPushIndex._size - 1) + 1;
        this.compositeHash = ResolvedStyleKt.updateHashExit(this.compositeHash, i3);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void animate(AnimationSpec<Float> animationSpec, Style style) {
        animate(animationSpec, animationSpec, style);
    }

    @Override // androidx.compose.foundation.style.StyleScope
    public void animate(Style style) {
        animate(ResolvedStyleKt.DefaultSpringSpec, ResolvedStyleKt.DefaultSpringSpec, style);
    }
}
