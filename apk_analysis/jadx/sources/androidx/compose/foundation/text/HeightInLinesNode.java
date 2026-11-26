package androidx.compose.foundation.text;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.ng;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class HeightInLinesNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode, ObserverModifierNode {
    private boolean dirty;
    private State<? extends Object> fontResolutionState;
    private int maxLines;
    private int minLines;
    private TextStyle resolvedStyle;
    private final boolean shouldAutoInvalidate;
    private TextStyle textStyle;
    private int precomputedMinLinesHeight = -1;
    private int precomputedMaxLinesHeight = -1;

    public HeightInLinesNode(TextStyle textStyle, int i, int i2) {
        this.textStyle = textStyle;
        this.minLines = i;
        this.maxLines = i2;
    }

    private final void computeHeights(Density density, TextStyle textStyle, FontFamily.Resolver resolver) {
        int iComputeSizeForDefaultText = (int) (TextFieldDelegateKt.computeSizeForDefaultText(textStyle, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement(), 1) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int iComputeSizeForDefaultText2 = ((int) (TextFieldDelegateKt.computeSizeForDefaultText(textStyle, density, resolver, TextFieldDelegateKt.getEmptyTextReplacement() + '\n' + TextFieldDelegateKt.getEmptyTextReplacement(), 2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - iComputeSizeForDefaultText;
        int i = this.minLines;
        this.precomputedMinLinesHeight = i == 1 ? -1 : ((i - 1) * iComputeSizeForDefaultText2) + iComputeSizeForDefaultText;
        int i2 = this.maxLines;
        this.precomputedMaxLinesHeight = i2 != Integer.MAX_VALUE ? ((i2 - 1) * iComputeSizeForDefaultText2) + iComputeSizeForDefaultText : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onAttach$lambda$0(HeightInLinesNode heightInLinesNode) {
        heightInLinesNode.requireFontResolutionState().getValue();
        return j59.a;
    }

    private final void onFontResolutionStateChanged() {
        if (this.fontResolutionState != null) {
            ObserverModifierNodeKt.observeReads(this, new ll3() { // from class: androidx.compose.foundation.text.h
                @Override // defpackage.ll3
                public final Object invoke() {
                    return HeightInLinesNode.onFontResolutionStateChanged$lambda$0(this.b);
                }
            });
        }
        this.dirty = true;
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onFontResolutionStateChanged$lambda$0(HeightInLinesNode heightInLinesNode) {
        heightInLinesNode.requireFontResolutionState().getValue();
        return j59.a;
    }

    private final State<Object> requireFontResolutionState() {
        State<? extends Object> state = this.fontResolutionState;
        if (state != null) {
            return state;
        }
        throw ng.f("Font resolution state is not set.");
    }

    private final TextStyle requireResolvedStyle() {
        TextStyle textStyle = this.resolvedStyle;
        if (textStyle != null) {
            return textStyle;
        }
        throw ng.f("Resolved style is not set.");
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        if (this.dirty) {
            computeHeights(measureScope, requireResolvedStyle(), (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFontFamilyResolver()));
            this.dirty = false;
        }
        int i = this.precomputedMinLinesHeight;
        int iF = i != -1 ? kx6.f(i, Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j)) : Constraints.m8996getMinHeightimpl(j);
        int i2 = this.precomputedMaxLinesHeight;
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, iF, i2 != -1 ? kx6.f(i2, Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j)) : Constraints.m8994getMaxHeightimpl(j), 3, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.text.i
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return HeightInLinesNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFontFamilyResolver());
        this.resolvedStyle = TextStyleKt.resolveDefaults(this.textStyle, DelegatableNodeKt.requireLayoutDirection(this));
        FontFamily fontFamily = requireResolvedStyle().getFontFamily();
        FontWeight fontWeight = requireResolvedStyle().getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontStyle fontStyleM8523getFontStyle4Lr2A7w = requireResolvedStyle().m8523getFontStyle4Lr2A7w();
        int iM8606unboximpl = fontStyleM8523getFontStyle4Lr2A7w != null ? fontStyleM8523getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA();
        FontSynthesis fontSynthesisM8524getFontSynthesisZQGJjVo = requireResolvedStyle().m8524getFontSynthesisZQGJjVo();
        this.fontResolutionState = resolver.mo8576resolveDPcqOEQ(fontFamily, fontWeight, iM8606unboximpl, fontSynthesisM8524getFontSynthesisZQGJjVo != null ? fontSynthesisM8524getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU());
        ObserverModifierNodeKt.observeReads(this, new ll3() { // from class: androidx.compose.foundation.text.g
            @Override // defpackage.ll3
            public final Object invoke() {
                return HeightInLinesNode.onAttach$lambda$0(this.b);
            }
        });
        this.dirty = true;
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        this.dirty = true;
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.resolvedStyle = null;
        this.fontResolutionState = null;
        this.dirty = false;
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public void onLayoutDirectionChange() {
        this.resolvedStyle = TextStyleKt.resolveDefaults(this.textStyle, DelegatableNodeKt.requireLayoutDirection(this));
        this.dirty = true;
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        onFontResolutionStateChanged();
    }

    public final void update(TextStyle textStyle, int i, int i2) {
        if (aa4.e(this.textStyle, textStyle) && this.minLines == i && this.maxLines == i2) {
            return;
        }
        this.textStyle = textStyle;
        this.minLines = i;
        this.maxLines = i2;
        this.resolvedStyle = TextStyleKt.resolveDefaults(textStyle, DelegatableNodeKt.requireLayoutDirection(this));
        this.dirty = true;
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }
}
