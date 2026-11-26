package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bz0;
import defpackage.cz0;
import defpackage.fo4;
import defpackage.gb7;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.sg;
import defpackage.tg;
import defpackage.us8;
import defpackage.zg;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TextStringSimpleNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private ParagraphLayoutCache _layoutCache;
    private Map<AlignmentLine, Integer> baselineCache;
    private FontFamily.Resolver fontFamilyResolver;
    private int maxLines;
    private int minLines;
    private int overflow;
    private ColorProducer overrideColor;
    private TextStyle resolvedInheritedStyle;
    private nl3<? super List<TextLayoutResult>, Boolean> semanticsTextLayoutResult;
    private boolean softWrap;
    private TextStyle style;
    private String text;
    private TextSubstitutionValue textSubstitution;

    public /* synthetic */ TextStringSimpleNode(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, ColorProducer colorProducer, int i4, jh2 jh2Var) {
        this(str, textStyle, resolver, (i4 & 8) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i4 & 16) != 0 ? true : z, (i4 & 32) != 0 ? Integer.MAX_VALUE : i2, (i4 & 64) != 0 ? 1 : i3, (i4 & 128) != 0 ? null : colorProducer, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$0(TextStringSimpleNode textStringSimpleNode, List list) {
        ParagraphLayoutCache layoutCache = textStringSimpleNode.getLayoutCache();
        TextStyle textStyle = textStringSimpleNode.style;
        ColorProducer colorProducer = textStringSimpleNode.overrideColor;
        TextLayoutResult textLayoutResultSlowCreateTextLayoutResultOrNull = layoutCache.slowCreateTextLayoutResultOrNull(textStyle.m8536mergedA7vx0o((16777214 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : colorProducer != null ? colorProducer.mo3400invoke0d7_KjU() : Color.Companion.m6268getUnspecified0d7_KjU(), (16777214 & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? TextAlign.Companion.m8926getUnspecifiede0LSkKk() : 0, (16777214 & 65536) != 0 ? TextDirection.Companion.m8942getUnspecifieds_7Xco() : 0, (16777214 & 131072) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? LineBreak.Companion.m8838getUnspecifiedrAG3T2k() : 0, (16777214 & 2097152) != 0 ? Hyphens.Companion.m8814getUnspecifiedvmbZdU8() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null));
        if (textLayoutResultSlowCreateTextLayoutResultOrNull != null) {
            list.add(textLayoutResultSlowCreateTextLayoutResultOrNull);
        } else {
            textLayoutResultSlowCreateTextLayoutResultOrNull = null;
        }
        return textLayoutResultSlowCreateTextLayoutResultOrNull != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$1(TextStringSimpleNode textStringSimpleNode, AnnotatedString annotatedString) {
        textStringSimpleNode.setSubstitution(annotatedString.getText());
        textStringSimpleNode.invalidateForTranslate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$2(TextStringSimpleNode textStringSimpleNode, boolean z) {
        TextSubstitutionValue textSubstitutionValue = textStringSimpleNode.textSubstitution;
        if (textSubstitutionValue == null) {
            return false;
        }
        if (textSubstitutionValue != null) {
            textSubstitutionValue.setShowingSubstitution(z);
        }
        textStringSimpleNode.invalidateForTranslate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$3(TextStringSimpleNode textStringSimpleNode) {
        textStringSimpleNode.clearSubstitution();
        textStringSimpleNode.invalidateForTranslate();
        return true;
    }

    private final void clearSubstitution() {
        this.textSubstitution = null;
    }

    private static /* synthetic */ void getBaselineCache$annotations() {
    }

    private final ParagraphLayoutCache getLayoutCache() {
        TextStyle textStyle;
        if (!ComposeFoundationFlags.isInheritedTextStyleEnabled || (textStyle = this.resolvedInheritedStyle) == null) {
            textStyle = this.style;
        }
        TextStyle textStyle2 = textStyle;
        ParagraphLayoutCache paragraphLayoutCache = this._layoutCache;
        if (paragraphLayoutCache == null) {
            ParagraphLayoutCache paragraphLayoutCache2 = new ParagraphLayoutCache(this.text, textStyle2, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, null);
            this._layoutCache = paragraphLayoutCache2;
            paragraphLayoutCache = paragraphLayoutCache2;
        }
        paragraphLayoutCache.getClass();
        return paragraphLayoutCache;
    }

    private final ParagraphLayoutCache getLayoutCacheForMeasure(IntrinsicMeasureScope intrinsicMeasureScope) {
        if (ComposeFoundationFlags.isInheritedTextStyleEnabled && m2957resolveInheritedStyleuwmK9pY(StylePhase.Companion.m2954getLayoutoWBPZag())) {
            TextStyle textStyle = this.resolvedInheritedStyle;
            if (textStyle == null) {
                textStyle = this.style;
            }
            getLayoutCache().m2943updateL6sJoHM(this.text, textStyle, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines);
        }
        ParagraphLayoutCache layoutCacheOrSubstitute = getLayoutCacheOrSubstitute();
        layoutCacheOrSubstitute.setDensity$foundation(intrinsicMeasureScope);
        return layoutCacheOrSubstitute;
    }

    private final ParagraphLayoutCache getLayoutCacheOrSubstitute() {
        ParagraphLayoutCache layoutCache;
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            if (!textSubstitutionValue.isShowingSubstitution()) {
                textSubstitutionValue = null;
            }
            if (textSubstitutionValue != null && (layoutCache = textSubstitutionValue.getLayoutCache()) != null) {
                return layoutCache;
            }
        }
        return getLayoutCache();
    }

    private final void invalidateForTranslate() {
        SemanticsModifierNodeKt.invalidateSemantics(this);
        LayoutModifierNodeKt.invalidateMeasurement(this);
        DrawModifierNodeKt.invalidateDraw(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: resolveInheritedStyle-uwmK9pY, reason: not valid java name */
    private final boolean m2957resolveInheritedStyleuwmK9pY(int i) {
        TextStyle textStyle = this.resolvedInheritedStyle;
        TextStyle textStyleM2959inheritedTextStyleBh5OqGs = TextStyleProviderNodeKt.m2959inheritedTextStyleBh5OqGs(this, i, this.style);
        this.resolvedInheritedStyle = textStyleM2959inheritedTextStyleBh5OqGs;
        if (textStyle == null) {
            return false;
        }
        return !textStyle.equals(textStyleM2959inheritedTextStyleBh5OqGs);
    }

    private final boolean setSubstitution(String str) {
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            if (aa4.e(str, textSubstitutionValue.getSubstitution())) {
                return false;
            }
            textSubstitutionValue.setSubstitution(str);
            ParagraphLayoutCache layoutCache = textSubstitutionValue.getLayoutCache();
            if (layoutCache == null) {
                return false;
            }
            layoutCache.m2943updateL6sJoHM(str, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines);
            return true;
        }
        TextSubstitutionValue textSubstitutionValue2 = new TextSubstitutionValue(this.text, str, false, null, 12, null);
        ParagraphLayoutCache paragraphLayoutCache = new ParagraphLayoutCache(str, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, null);
        paragraphLayoutCache.setDensity$foundation(getLayoutCache().getDensity$foundation());
        textSubstitutionValue2.setLayoutCache(paragraphLayoutCache);
        this.textSubstitution = textSubstitutionValue2;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        nl3 fo4Var = this.semanticsTextLayoutResult;
        if (fo4Var == null) {
            fo4Var = new fo4(this, 3);
            this.semanticsTextLayoutResult = fo4Var;
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        int i = 2;
        SemanticsPropertiesKt.setText(semanticsPropertyReceiver, new AnnotatedString(this.text, null, i, 0 == true ? 1 : 0));
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            SemanticsPropertiesKt.setShowingTextSubstitution(semanticsPropertyReceiver, textSubstitutionValue.isShowingSubstitution());
            SemanticsPropertiesKt.setTextSubstitution(semanticsPropertyReceiver, new AnnotatedString(textSubstitutionValue.getSubstitution(), objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0));
        }
        SemanticsPropertiesKt.setTextSubstitution$default(semanticsPropertyReceiver, null, new bz0(this, 5), 1, null);
        SemanticsPropertiesKt.showTextSubstitution$default(semanticsPropertyReceiver, null, new cz0(this, 4), 1, null);
        SemanticsPropertiesKt.clearTextSubstitution$default(semanticsPropertyReceiver, null, new gb7(this, 1), 1, null);
        SemanticsPropertiesKt.getTextLayoutResult$default(semanticsPropertyReceiver, null, fo4Var, 1, null);
    }

    public final void doInvalidations(boolean z, boolean z2, boolean z3) {
        if (z || z2 || z3) {
            this.resolvedInheritedStyle = null;
        }
        if (z2 || z3) {
            getLayoutCache().m2943updateL6sJoHM(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines);
        }
        if (isAttached()) {
            if (z2 || (z && this.semanticsTextLayoutResult != null)) {
                SemanticsModifierNodeKt.invalidateSemantics(this);
            }
            if (z2 || z3) {
                LayoutModifierNodeKt.invalidateMeasurement(this);
                DrawModifierNodeKt.invalidateDraw(this);
            }
            if (z) {
                DrawModifierNodeKt.invalidateDraw(this);
            }
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        TextStyle textStyle;
        if (isAttached()) {
            ParagraphLayoutCache layoutCacheOrSubstitute = getLayoutCacheOrSubstitute();
            Paragraph paragraph$foundation = layoutCacheOrSubstitute.getParagraph$foundation();
            if (paragraph$foundation == null) {
                InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck("Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache=" + this._layoutCache + ", textSubstitution=" + this.textSubstitution + ')');
                h8.d();
                return;
            }
            Canvas canvas = contentDrawScope.getDrawContext().getCanvas();
            boolean didOverflow$foundation = layoutCacheOrSubstitute.getDidOverflow$foundation();
            if (didOverflow$foundation) {
                float fM2939getLayoutSizeYbymL2g$foundation = (int) (layoutCacheOrSubstitute.m2939getLayoutSizeYbymL2g$foundation() >> 32);
                float fM2939getLayoutSizeYbymL2g$foundation2 = (int) (layoutCacheOrSubstitute.m2939getLayoutSizeYbymL2g$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                canvas.save();
                Canvas.m6204clipRectN_I0leg$default(canvas, 0.0f, 0.0f, fM2939getLayoutSizeYbymL2g$foundation, fM2939getLayoutSizeYbymL2g$foundation2, 0, 16, null);
            }
            try {
                if (ComposeFoundationFlags.isInheritedTextStyleEnabled) {
                    m2957resolveInheritedStyleuwmK9pY(StylePhase.Companion.m2953getDrawoWBPZag());
                    textStyle = this.resolvedInheritedStyle;
                    if (textStyle == null) {
                        textStyle = this.style;
                    }
                } else {
                    textStyle = this.style;
                }
                TextDecoration textDecoration = textStyle.getTextDecoration();
                if (textDecoration == null) {
                    textDecoration = TextDecoration.Companion.getNone();
                }
                TextDecoration textDecoration2 = textDecoration;
                Shadow shadow = textStyle.getShadow();
                if (shadow == null) {
                    shadow = Shadow.Companion.getNone();
                }
                Shadow shadow2 = shadow;
                DrawStyle drawStyle = textStyle.getDrawStyle();
                if (drawStyle == null) {
                    drawStyle = Fill.INSTANCE;
                }
                DrawStyle drawStyle2 = drawStyle;
                Brush brush = textStyle.getBrush();
                if (brush != null) {
                    Paragraph.m8361painthn5TExg$default(paragraph$foundation, canvas, brush, textStyle.getAlpha(), shadow2, textDecoration2, drawStyle2, 0, 64, null);
                } else {
                    ColorProducer colorProducer = this.overrideColor;
                    long jMo3400invoke0d7_KjU = colorProducer != null ? colorProducer.mo3400invoke0d7_KjU() : Color.Companion.m6268getUnspecified0d7_KjU();
                    if (jMo3400invoke0d7_KjU == 16) {
                        jMo3400invoke0d7_KjU = textStyle.m8521getColor0d7_KjU() != 16 ? textStyle.m8521getColor0d7_KjU() : Color.Companion.m6258getBlack0d7_KjU();
                    }
                    Paragraph.m8359paintLG529CI$default(paragraph$foundation, canvas, jMo3400invoke0d7_KjU, shadow2, textDecoration2, drawStyle2, 0, 32, null);
                }
            } finally {
                if (didOverflow$foundation) {
                    canvas.restore();
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCacheForMeasure(intrinsicMeasureScope).intrinsicHeight(i, intrinsicMeasureScope.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCacheForMeasure(intrinsicMeasureScope).maxIntrinsicWidth(intrinsicMeasureScope.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextStringSimpleNode::measure");
        try {
            ParagraphLayoutCache layoutCacheForMeasure = getLayoutCacheForMeasure(measureScope);
            boolean zM2941layoutWithConstraintsK40F9xA = layoutCacheForMeasure.m2941layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            layoutCacheForMeasure.getObserveFontChanges$foundation();
            Paragraph paragraph$foundation = layoutCacheForMeasure.getParagraph$foundation();
            paragraph$foundation.getClass();
            long jM2939getLayoutSizeYbymL2g$foundation = layoutCacheForMeasure.m2939getLayoutSizeYbymL2g$foundation();
            if (zM2941layoutWithConstraintsK40F9xA) {
                LayoutModifierNodeKt.invalidateLayer(this);
                Map map = this.baselineCache;
                if (map == null) {
                    map = new HashMap(2);
                    this.baselineCache = map;
                }
                map.put(AlignmentLineKt.getFirstBaseline(), Integer.valueOf(Math.round(paragraph$foundation.getFirstBaseline())));
                map.put(AlignmentLineKt.getLastBaseline(), Integer.valueOf(Math.round(paragraph$foundation.getLastBaseline())));
            }
            Constraints.Companion companion = Constraints.Companion;
            int i = (int) (jM2939getLayoutSizeYbymL2g$foundation >> 32);
            int i2 = (int) (jM2939getLayoutSizeYbymL2g$foundation & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(companion.m9004fitPrioritizingWidthZbe2FdA(i, i, i2, i2));
            Map<AlignmentLine, Integer> map2 = this.baselineCache;
            map2.getClass();
            return measureScope.layout(i, i2, map2, new us8(placeableMo7702measureBRTryo0, 0));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCacheForMeasure(intrinsicMeasureScope).intrinsicHeight(i, intrinsicMeasureScope.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCacheForMeasure(intrinsicMeasureScope).minIntrinsicWidth(intrinsicMeasureScope.getLayoutDirection());
    }

    public final boolean updateDraw(ColorProducer colorProducer, TextStyle textStyle) {
        boolean zE = aa4.e(colorProducer, this.overrideColor);
        this.overrideColor = colorProducer;
        return (zE && textStyle.hasSameDrawAffectingAttributes(this.style)) ? false : true;
    }

    /* JADX INFO: renamed from: updateLayoutRelatedArgs-HuAbxIM, reason: not valid java name */
    public final boolean m2958updateLayoutRelatedArgsHuAbxIM(TextStyle textStyle, int i, int i2, boolean z, FontFamily.Resolver resolver, int i3) {
        boolean z2 = !this.style.hasSameLayoutAffectingAttributes(textStyle);
        this.style = textStyle;
        if (this.minLines != i) {
            this.minLines = i;
            z2 = true;
        }
        if (this.maxLines != i2) {
            this.maxLines = i2;
            z2 = true;
        }
        if (this.softWrap != z) {
            this.softWrap = z;
            z2 = true;
        }
        if (!aa4.e(this.fontFamilyResolver, resolver)) {
            this.fontFamilyResolver = resolver;
            z2 = true;
        }
        if (TextOverflow.m8968equalsimpl0(this.overflow, i3)) {
            return z2;
        }
        this.overflow = i3;
        return true;
    }

    public final boolean updateText(String str) {
        if (aa4.e(this.text, str)) {
            return false;
        }
        this.text = str;
        clearSubstitution();
        return true;
    }

    public static final class TextSubstitutionValue {
        public static final int $stable = 8;
        private boolean isShowingSubstitution;
        private ParagraphLayoutCache layoutCache;
        private final String original;
        private String substitution;

        public /* synthetic */ TextSubstitutionValue(String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache, int i, jh2 jh2Var) {
            this(str, str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : paragraphLayoutCache);
        }

        public static /* synthetic */ TextSubstitutionValue copy$default(TextSubstitutionValue textSubstitutionValue, String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache, int i, Object obj) {
            if ((i & 1) != 0) {
                str = textSubstitutionValue.original;
            }
            if ((i & 2) != 0) {
                str2 = textSubstitutionValue.substitution;
            }
            if ((i & 4) != 0) {
                z = textSubstitutionValue.isShowingSubstitution;
            }
            if ((i & 8) != 0) {
                paragraphLayoutCache = textSubstitutionValue.layoutCache;
            }
            return textSubstitutionValue.copy(str, str2, z, paragraphLayoutCache);
        }

        public final String component1() {
            return this.original;
        }

        public final String component2() {
            return this.substitution;
        }

        public final boolean component3() {
            return this.isShowingSubstitution;
        }

        public final ParagraphLayoutCache component4() {
            return this.layoutCache;
        }

        public final TextSubstitutionValue copy(String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache) {
            return new TextSubstitutionValue(str, str2, z, paragraphLayoutCache);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TextSubstitutionValue)) {
                return false;
            }
            TextSubstitutionValue textSubstitutionValue = (TextSubstitutionValue) obj;
            return aa4.e(this.original, textSubstitutionValue.original) && aa4.e(this.substitution, textSubstitutionValue.substitution) && this.isShowingSubstitution == textSubstitutionValue.isShowingSubstitution && aa4.e(this.layoutCache, textSubstitutionValue.layoutCache);
        }

        public final ParagraphLayoutCache getLayoutCache() {
            return this.layoutCache;
        }

        public final String getOriginal() {
            return this.original;
        }

        public final String getSubstitution() {
            return this.substitution;
        }

        public int hashCode() {
            int iC = tg.c(zg.b(this.original.hashCode() * 31, 31, this.substitution), 31, this.isShowingSubstitution);
            ParagraphLayoutCache paragraphLayoutCache = this.layoutCache;
            return iC + (paragraphLayoutCache == null ? 0 : paragraphLayoutCache.hashCode());
        }

        public final boolean isShowingSubstitution() {
            return this.isShowingSubstitution;
        }

        public final void setLayoutCache(ParagraphLayoutCache paragraphLayoutCache) {
            this.layoutCache = paragraphLayoutCache;
        }

        public final void setShowingSubstitution(boolean z) {
            this.isShowingSubstitution = z;
        }

        public final void setSubstitution(String str) {
            this.substitution = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("TextSubstitution(layoutCache=");
            sb.append(this.layoutCache);
            sb.append(", isShowingSubstitution=");
            return sg.d(sb, this.isShowingSubstitution, ')');
        }

        public TextSubstitutionValue(String str, String str2, boolean z, ParagraphLayoutCache paragraphLayoutCache) {
            this.original = str;
            this.substitution = str2;
            this.isShowingSubstitution = z;
            this.layoutCache = paragraphLayoutCache;
        }
    }

    private TextStringSimpleNode(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, ColorProducer colorProducer) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.overrideColor = colorProducer;
    }

    public /* synthetic */ TextStringSimpleNode(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, ColorProducer colorProducer, jh2 jh2Var) {
        this(str, textStyle, resolver, i, z, i2, i3, colorProducer);
    }
}
