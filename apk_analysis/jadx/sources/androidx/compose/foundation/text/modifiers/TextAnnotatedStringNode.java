package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
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
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.av5;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.rh0;
import defpackage.tg;
import defpackage.v82;
import defpackage.vl4;
import defpackage.w21;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TextAnnotatedStringNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private MultiParagraphLayoutCache _layoutCache;
    private TextAutoSize autoSize;
    private Map<AlignmentLine, Integer> baselineCache;
    private FontFamily.Resolver fontFamilyResolver;
    private int maxLines;
    private int minLines;
    private nl3<? super List<Rect>, j59> onPlaceholderLayout;
    private nl3<? super TextSubstitutionValue, j59> onShowTranslation;
    private nl3<? super TextLayoutResult, j59> onTextLayout;
    private int overflow;
    private ColorProducer overrideColor;
    private List<AnnotatedString.Range<Placeholder>> placeholders;
    private SelectionController selectionController;
    private nl3<? super List<TextLayoutResult>, Boolean> semanticsTextLayoutResult;
    private boolean softWrap;
    private TextStyle style;
    private AnnotatedString text;
    private TextSubstitutionValue textSubstitution;

    public /* synthetic */ TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3 nl3Var, int i, boolean z, int i2, int i3, List list, nl3 nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3 nl3Var3, int i4, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, (i4 & 8) != 0 ? null : nl3Var, (i4 & 16) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i4 & 32) != 0 ? true : z, (i4 & 64) != 0 ? Integer.MAX_VALUE : i2, (i4 & 128) != 0 ? 1 : i3, (i4 & 256) != 0 ? null : list, (i4 & 512) != 0 ? null : nl3Var2, (i4 & 1024) != 0 ? null : selectionController, (i4 & 2048) != 0 ? null : colorProducer, (i4 & 4096) != 0 ? null : textAutoSize, (i4 & 8192) != 0 ? null : nl3Var3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x00af  */
    public static final boolean applySemantics$lambda$0(TextAnnotatedStringNode textAnnotatedStringNode, List list) {
        TextLayoutResult textLayoutResultM8459copyO0kMr_c$default;
        TextLayoutResult layoutOrNull = textAnnotatedStringNode.getLayoutCache().getLayoutOrNull();
        if (layoutOrNull != null) {
            AnnotatedString text = layoutOrNull.getLayoutInput().getText();
            TextStyle textStyle = textAnnotatedStringNode.style;
            ColorProducer colorProducer = textAnnotatedStringNode.overrideColor;
            textLayoutResultM8459copyO0kMr_c$default = TextLayoutResult.m8459copyO0kMr_c$default(layoutOrNull, new TextLayoutInput(text, textStyle.m8536mergedA7vx0o((16777214 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : colorProducer != null ? colorProducer.mo3400invoke0d7_KjU() : Color.Companion.m6268getUnspecified0d7_KjU(), (16777214 & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 4) != 0 ? null : null, (16777214 & 8) != 0 ? null : null, (16777214 & 16) != 0 ? null : null, (16777214 & 32) != 0 ? null : null, (16777214 & 64) != 0 ? null : null, (16777214 & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 256) != 0 ? null : null, (16777214 & 512) != 0 ? null : null, (16777214 & 1024) != 0 ? null : null, (16777214 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : 0L, (16777214 & 4096) != 0 ? null : null, (16777214 & 8192) != 0 ? null : null, (16777214 & 16384) != 0 ? null : null, (16777214 & 32768) != 0 ? TextAlign.Companion.m8926getUnspecifiede0LSkKk() : 0, (16777214 & 65536) != 0 ? TextDirection.Companion.m8942getUnspecifieds_7Xco() : 0, (16777214 & 131072) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : 0L, (16777214 & 262144) != 0 ? null : null, (16777214 & 524288) != 0 ? null : null, (16777214 & 1048576) != 0 ? LineBreak.Companion.m8838getUnspecifiedrAG3T2k() : 0, (16777214 & 2097152) != 0 ? Hyphens.Companion.m8814getUnspecifiedvmbZdU8() : 0, (16777214 & 4194304) != 0 ? null : null, (16777214 & 8388608) != 0 ? null : null), layoutOrNull.getLayoutInput().getPlaceholders(), layoutOrNull.getLayoutInput().getMaxLines(), layoutOrNull.getLayoutInput().getSoftWrap(), layoutOrNull.getLayoutInput().m8458getOverflowgIe3tQ8(), layoutOrNull.getLayoutInput().getDensity(), layoutOrNull.getLayoutInput().getLayoutDirection(), layoutOrNull.getLayoutInput().getFontFamilyResolver(), layoutOrNull.getLayoutInput().m8457getConstraintsmsEJaDk(), (jh2) null), 0L, 2, null);
            if (textLayoutResultM8459copyO0kMr_c$default != null) {
                list.add(textLayoutResultM8459copyO0kMr_c$default);
            } else {
                textLayoutResultM8459copyO0kMr_c$default = null;
            }
        } else {
            textLayoutResultM8459copyO0kMr_c$default = null;
        }
        return textLayoutResultM8459copyO0kMr_c$default != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$1(TextAnnotatedStringNode textAnnotatedStringNode, AnnotatedString annotatedString) {
        textAnnotatedStringNode.setSubstitution(annotatedString);
        textAnnotatedStringNode.invalidateForTranslate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$2(TextAnnotatedStringNode textAnnotatedStringNode, boolean z) {
        TextSubstitutionValue textSubstitutionValue = textAnnotatedStringNode.textSubstitution;
        if (textSubstitutionValue == null) {
            return false;
        }
        nl3<? super TextSubstitutionValue, j59> nl3Var = textAnnotatedStringNode.onShowTranslation;
        if (nl3Var != null) {
            textSubstitutionValue.getClass();
            nl3Var.invoke(textSubstitutionValue);
        }
        TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.textSubstitution;
        if (textSubstitutionValue2 != null) {
            textSubstitutionValue2.setShowingSubstitution(z);
        }
        textAnnotatedStringNode.invalidateForTranslate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$3(TextAnnotatedStringNode textAnnotatedStringNode) {
        textAnnotatedStringNode.clearSubstitution$foundation();
        textAnnotatedStringNode.invalidateForTranslate();
        return true;
    }

    private static /* synthetic */ void getBaselineCache$annotations() {
    }

    private final MultiParagraphLayoutCache getLayoutCache() {
        MultiParagraphLayoutCache multiParagraphLayoutCache = this._layoutCache;
        if (multiParagraphLayoutCache == null) {
            MultiParagraphLayoutCache multiParagraphLayoutCache2 = new MultiParagraphLayoutCache(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.autoSize, null);
            this._layoutCache = multiParagraphLayoutCache2;
            multiParagraphLayoutCache = multiParagraphLayoutCache2;
        }
        multiParagraphLayoutCache.getClass();
        return multiParagraphLayoutCache;
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

    private final boolean setSubstitution(AnnotatedString annotatedString) {
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        kx2 kx2Var = kx2.b;
        if (textSubstitutionValue != null) {
            if (aa4.e(annotatedString, textSubstitutionValue.getSubstitution())) {
                return false;
            }
            textSubstitutionValue.setSubstitution(annotatedString);
            MultiParagraphLayoutCache layoutCache = textSubstitutionValue.getLayoutCache();
            if (layoutCache == null) {
                return false;
            }
            layoutCache.m2931updateJ2qo7bo(annotatedString, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, kx2Var, this.autoSize);
            return true;
        }
        TextSubstitutionValue textSubstitutionValue2 = new TextSubstitutionValue(this.text, annotatedString, false, null, 12, null);
        MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, kx2Var, this.autoSize, null);
        multiParagraphLayoutCache.setDensity$foundation(getLayoutCache().getDensity$foundation());
        textSubstitutionValue2.setLayoutCache(multiParagraphLayoutCache);
        this.textSubstitution = textSubstitutionValue2;
        return true;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        nl3 vl4Var = this.semanticsTextLayoutResult;
        int i = 4;
        if (vl4Var == null) {
            vl4Var = new vl4(this, i);
            this.semanticsTextLayoutResult = vl4Var;
        }
        SemanticsPropertiesKt.setText(semanticsPropertyReceiver, this.text);
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            SemanticsPropertiesKt.setTextSubstitution(semanticsPropertyReceiver, textSubstitutionValue.getSubstitution());
            SemanticsPropertiesKt.setShowingTextSubstitution(semanticsPropertyReceiver, textSubstitutionValue.isShowingSubstitution());
        }
        SemanticsPropertiesKt.setTextSubstitution$default(semanticsPropertyReceiver, null, new rh0(this, 5), 1, null);
        SemanticsPropertiesKt.showTextSubstitution$default(semanticsPropertyReceiver, null, new v82(this, 3), 1, null);
        SemanticsPropertiesKt.clearTextSubstitution$default(semanticsPropertyReceiver, null, new w21(this, i), 1, null);
        SemanticsPropertiesKt.getTextLayoutResult$default(semanticsPropertyReceiver, null, vl4Var, 1, null);
    }

    public final void clearSubstitution$foundation() {
        this.textSubstitution = null;
    }

    public final void doInvalidations(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z2 || z3 || z4) {
            getLayoutCache().m2931updateJ2qo7bo(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.autoSize);
        }
        if (isAttached()) {
            if (z2 || (z && this.semanticsTextLayoutResult != null)) {
                SemanticsModifierNodeKt.invalidateSemantics(this);
            }
            if (z2 || z3 || z4) {
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
        List<AnnotatedString.Range<Placeholder>> list;
        if (isAttached()) {
            SelectionController selectionController = this.selectionController;
            if (selectionController != null) {
                selectionController.draw(contentDrawScope);
            }
            Canvas canvas = contentDrawScope.getDrawContext().getCanvas();
            TextLayoutResult textLayoutResult = getLayoutCache(contentDrawScope).getTextLayoutResult();
            MultiParagraph multiParagraph = textLayoutResult.getMultiParagraph();
            boolean z = textLayoutResult.getHasVisualOverflow() && !TextOverflow.m8968equalsimpl0(this.overflow, TextOverflow.Companion.m8981getVisiblegIe3tQ8());
            if (z) {
                Rect rectM6027Recttz77jQw = RectKt.m6027Recttz77jQw(Offset.Companion.m6003getZeroF1C5BW0(), Size.m6047constructorimpl((((long) Float.floatToRawIntBits((int) (textLayoutResult.m8462getSizeYbymL2g() >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                canvas.save();
                Canvas.m6205clipRectmtrdDE$default(canvas, rectM6027Recttz77jQw, 0, 2, null);
            }
            try {
                TextDecoration textDecoration = this.style.getTextDecoration();
                if (textDecoration == null) {
                    textDecoration = TextDecoration.Companion.getNone();
                }
                TextDecoration textDecoration2 = textDecoration;
                Shadow shadow = this.style.getShadow();
                if (shadow == null) {
                    shadow = Shadow.Companion.getNone();
                }
                Shadow shadow2 = shadow;
                DrawStyle drawStyle = this.style.getDrawStyle();
                if (drawStyle == null) {
                    drawStyle = Fill.INSTANCE;
                }
                DrawStyle drawStyle2 = drawStyle;
                Brush brush = this.style.getBrush();
                if (brush != null) {
                    MultiParagraph.m8350painthn5TExg$default(multiParagraph, canvas, brush, this.style.getAlpha(), shadow2, textDecoration2, drawStyle2, 0, 64, null);
                } else {
                    ColorProducer colorProducer = this.overrideColor;
                    long jMo3400invoke0d7_KjU = colorProducer != null ? colorProducer.mo3400invoke0d7_KjU() : Color.Companion.m6268getUnspecified0d7_KjU();
                    if (jMo3400invoke0d7_KjU == 16) {
                        jMo3400invoke0d7_KjU = this.style.m8521getColor0d7_KjU() != 16 ? this.style.m8521getColor0d7_KjU() : Color.Companion.m6258getBlack0d7_KjU();
                    }
                    multiParagraph.m8355paintLG529CI(canvas, (32 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : jMo3400invoke0d7_KjU, (32 & 4) != 0 ? null : shadow2, (32 & 8) != 0 ? null : textDecoration2, (32 & 16) == 0 ? drawStyle2 : null, (32 & 32) != 0 ? DrawScope.Companion.m6808getDefaultBlendMode0nO6VwU() : 0);
                }
                if (z) {
                    canvas.restore();
                }
                TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
                if (((textSubstitutionValue == null || !textSubstitutionValue.isShowingSubstitution()) ? TextAnnotatedStringNodeKt.hasLinks(this.text) : false) || !((list = this.placeholders) == null || list.isEmpty())) {
                    contentDrawScope.drawContent();
                }
            } catch (Throwable th) {
                if (z) {
                    canvas.restore();
                }
                throw th;
            }
        }
    }

    public final void drawNonExtension(ContentDrawScope contentDrawScope) {
        draw(contentDrawScope);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final TextSubstitutionValue getTextSubstitution$foundation() {
        return this.textSubstitution;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCache(intrinsicMeasureScope).intrinsicHeight(i, intrinsicMeasureScope.getLayoutDirection());
    }

    public final int maxIntrinsicHeightNonExtension(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return maxIntrinsicHeight(intrinsicMeasureScope, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCache(intrinsicMeasureScope).maxIntrinsicWidth(intrinsicMeasureScope.getLayoutDirection());
    }

    public final int maxIntrinsicWidthNonExtension(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return maxIntrinsicWidth(intrinsicMeasureScope, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextAnnotatedStringNode:measure");
        try {
            MultiParagraphLayoutCache layoutCache = getLayoutCache(measureScope);
            boolean zM2930layoutWithConstraintsK40F9xA = layoutCache.m2930layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            TextLayoutResult textLayoutResult = layoutCache.getTextLayoutResult();
            textLayoutResult.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts();
            if (zM2930layoutWithConstraintsK40F9xA) {
                LayoutModifierNodeKt.invalidateLayer(this);
                nl3<? super TextLayoutResult, j59> nl3Var = this.onTextLayout;
                if (nl3Var != null) {
                    nl3Var.invoke(textLayoutResult);
                }
                SelectionController selectionController = this.selectionController;
                if (selectionController != null) {
                    selectionController.updateTextLayout(textLayoutResult);
                }
                Map<AlignmentLine, Integer> linkedHashMap = this.baselineCache;
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap<>(2);
                }
                linkedHashMap.put(AlignmentLineKt.getFirstBaseline(), Integer.valueOf(Math.round(textLayoutResult.getFirstBaseline())));
                linkedHashMap.put(AlignmentLineKt.getLastBaseline(), Integer.valueOf(Math.round(textLayoutResult.getLastBaseline())));
                this.baselineCache = linkedHashMap;
            }
            nl3<? super List<Rect>, j59> nl3Var2 = this.onPlaceholderLayout;
            if (nl3Var2 != null) {
                nl3Var2.invoke(textLayoutResult.getPlaceholderRects());
            }
            Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA((int) (textLayoutResult.m8462getSizeYbymL2g() >> 32), (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32), (int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            int iM8462getSizeYbymL2g = (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32);
            int iM8462getSizeYbymL2g2 = (int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            Map<AlignmentLine, Integer> map = this.baselineCache;
            map.getClass();
            return measureScope.layout(iM8462getSizeYbymL2g, iM8462getSizeYbymL2g2, map, new av5(placeableMo7702measureBRTryo0, 1));
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: renamed from: measureNonExtension-3p2s80s, reason: not valid java name */
    public final MeasureResult m2955measureNonExtension3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        return mo1073measure3p2s80s(measureScope, measurable, j);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCache(intrinsicMeasureScope).intrinsicHeight(i, intrinsicMeasureScope.getLayoutDirection());
    }

    public final int minIntrinsicHeightNonExtension(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return minIntrinsicHeight(intrinsicMeasureScope, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return getLayoutCache(intrinsicMeasureScope).minIntrinsicWidth(intrinsicMeasureScope.getLayoutDirection());
    }

    public final int minIntrinsicWidthNonExtension(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return minIntrinsicWidth(intrinsicMeasureScope, intrinsicMeasurable, i);
    }

    public final void setTextSubstitution$foundation(TextSubstitutionValue textSubstitutionValue) {
        this.textSubstitution = textSubstitutionValue;
    }

    public final boolean updateCallbacks(nl3<? super TextLayoutResult, j59> nl3Var, nl3<? super List<Rect>, j59> nl3Var2, SelectionController selectionController, nl3<? super TextSubstitutionValue, j59> nl3Var3) {
        boolean z;
        if (this.onTextLayout != nl3Var) {
            this.onTextLayout = nl3Var;
            z = true;
        } else {
            z = false;
        }
        if (this.onPlaceholderLayout != nl3Var2) {
            this.onPlaceholderLayout = nl3Var2;
            z = true;
        }
        if (!aa4.e(this.selectionController, selectionController)) {
            this.selectionController = selectionController;
            z = true;
        }
        if (this.onShowTranslation == nl3Var3) {
            return z;
        }
        this.onShowTranslation = nl3Var3;
        return true;
    }

    public final boolean updateDraw(ColorProducer colorProducer, TextStyle textStyle) {
        boolean zE = aa4.e(colorProducer, this.overrideColor);
        this.overrideColor = colorProducer;
        return (zE && textStyle.hasSameDrawAffectingAttributes(this.style)) ? false : true;
    }

    /* JADX INFO: renamed from: updateLayoutRelatedArgs-y0k-MQk, reason: not valid java name */
    public final boolean m2956updateLayoutRelatedArgsy0kMQk(TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i, int i2, boolean z, FontFamily.Resolver resolver, int i3, TextAutoSize textAutoSize) {
        boolean z2 = !this.style.hasSameLayoutAffectingAttributes(textStyle);
        this.style = textStyle;
        if (!aa4.e(this.placeholders, list)) {
            this.placeholders = list;
            z2 = true;
        }
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
        if (!TextOverflow.m8968equalsimpl0(this.overflow, i3)) {
            this.overflow = i3;
            z2 = true;
        }
        if (aa4.e(this.autoSize, textAutoSize)) {
            return z2;
        }
        this.autoSize = textAutoSize;
        return true;
    }

    public final boolean updateText$foundation(AnnotatedString annotatedString) {
        boolean zE = aa4.e(this.text.getText(), annotatedString.getText());
        boolean z = (zE && this.text.hasEqualAnnotations(annotatedString)) ? false : true;
        if (z) {
            this.text = annotatedString;
        }
        if (!zE) {
            clearSubstitution$foundation();
        }
        return z;
    }

    public static final class TextSubstitutionValue {
        public static final int $stable = 8;
        private boolean isShowingSubstitution;
        private MultiParagraphLayoutCache layoutCache;
        private final AnnotatedString original;
        private AnnotatedString substitution;

        public /* synthetic */ TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache, int i, jh2 jh2Var) {
            this(annotatedString, annotatedString2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : multiParagraphLayoutCache);
        }

        public static /* synthetic */ TextSubstitutionValue copy$default(TextSubstitutionValue textSubstitutionValue, AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache, int i, Object obj) {
            if ((i & 1) != 0) {
                annotatedString = textSubstitutionValue.original;
            }
            if ((i & 2) != 0) {
                annotatedString2 = textSubstitutionValue.substitution;
            }
            if ((i & 4) != 0) {
                z = textSubstitutionValue.isShowingSubstitution;
            }
            if ((i & 8) != 0) {
                multiParagraphLayoutCache = textSubstitutionValue.layoutCache;
            }
            return textSubstitutionValue.copy(annotatedString, annotatedString2, z, multiParagraphLayoutCache);
        }

        public final AnnotatedString component1() {
            return this.original;
        }

        public final AnnotatedString component2() {
            return this.substitution;
        }

        public final boolean component3() {
            return this.isShowingSubstitution;
        }

        public final MultiParagraphLayoutCache component4() {
            return this.layoutCache;
        }

        public final TextSubstitutionValue copy(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache) {
            return new TextSubstitutionValue(annotatedString, annotatedString2, z, multiParagraphLayoutCache);
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

        public final MultiParagraphLayoutCache getLayoutCache() {
            return this.layoutCache;
        }

        public final AnnotatedString getOriginal() {
            return this.original;
        }

        public final AnnotatedString getSubstitution() {
            return this.substitution;
        }

        public int hashCode() {
            int iC = tg.c((this.substitution.hashCode() + (this.original.hashCode() * 31)) * 31, 31, this.isShowingSubstitution);
            MultiParagraphLayoutCache multiParagraphLayoutCache = this.layoutCache;
            return iC + (multiParagraphLayoutCache == null ? 0 : multiParagraphLayoutCache.hashCode());
        }

        public final boolean isShowingSubstitution() {
            return this.isShowingSubstitution;
        }

        public final void setLayoutCache(MultiParagraphLayoutCache multiParagraphLayoutCache) {
            this.layoutCache = multiParagraphLayoutCache;
        }

        public final void setShowingSubstitution(boolean z) {
            this.isShowingSubstitution = z;
        }

        public final void setSubstitution(AnnotatedString annotatedString) {
            this.substitution = annotatedString;
        }

        public String toString() {
            return "TextSubstitutionValue(original=" + ((Object) this.original) + ", substitution=" + ((Object) this.substitution) + ", isShowingSubstitution=" + this.isShowingSubstitution + ", layoutCache=" + this.layoutCache + ')';
        }

        public TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2, boolean z, MultiParagraphLayoutCache multiParagraphLayoutCache) {
            this.original = annotatedString;
            this.substitution = annotatedString2;
            this.isShowingSubstitution = z;
            this.layoutCache = multiParagraphLayoutCache;
        }
    }

    private final MultiParagraphLayoutCache getLayoutCache(Density density) {
        MultiParagraphLayoutCache layoutCache;
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null && textSubstitutionValue.isShowingSubstitution() && (layoutCache = textSubstitutionValue.getLayoutCache()) != null) {
            layoutCache.setDensity$foundation(density);
            return layoutCache;
        }
        MultiParagraphLayoutCache layoutCache2 = getLayoutCache();
        layoutCache2.setDensity$foundation(density);
        return layoutCache2;
    }

    private TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3<? super TextLayoutResult, j59> nl3Var, int i, boolean z, int i2, int i3, List<AnnotatedString.Range<Placeholder>> list, nl3<? super List<Rect>, j59> nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3<? super TextSubstitutionValue, j59> nl3Var3) {
        this.text = annotatedString;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.onTextLayout = nl3Var;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.onPlaceholderLayout = nl3Var2;
        this.selectionController = selectionController;
        this.overrideColor = colorProducer;
        this.autoSize = textAutoSize;
        this.onShowTranslation = nl3Var3;
    }

    public /* synthetic */ TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3 nl3Var, int i, boolean z, int i2, int i3, List list, nl3 nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3 nl3Var3, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, nl3Var, i, z, i2, i3, list, nl3Var2, selectionController, colorProducer, textAutoSize, nl3Var3);
    }
}
