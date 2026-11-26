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
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.ng;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class TextFieldSizeNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    private State<? extends Object> fontResolutionState;
    private TextFieldSize minSizeState;
    private final boolean shouldAutoInvalidate;
    private final TextStyle style;

    public TextFieldSizeNode(TextStyle textStyle) {
        this.style = textStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    private final State<Object> requireFontResolutionState() {
        State<? extends Object> state = this.fontResolutionState;
        if (state != null) {
            return state;
        }
        throw ng.f("Font resolution state is not set.");
    }

    private final TextFieldSize requireMinSizeState() {
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize != null) {
            return textFieldSize;
        }
        throw ng.f("Min size state is not set.");
    }

    private final void updateFontResolutionState(TextStyle textStyle, FontFamily.Resolver resolver) {
        FontFamily fontFamily = textStyle.getFontFamily();
        FontWeight fontWeight = textStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontStyle fontStyleM8523getFontStyle4Lr2A7w = textStyle.m8523getFontStyle4Lr2A7w();
        int iM8606unboximpl = fontStyleM8523getFontStyle4Lr2A7w != null ? fontStyleM8523getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA();
        FontSynthesis fontSynthesisM8524getFontSynthesisZQGJjVo = textStyle.m8524getFontSynthesisZQGJjVo();
        this.fontResolutionState = resolver.mo8576resolveDPcqOEQ(fontFamily, fontWeight, iM8606unboximpl, fontSynthesisM8524getFontSynthesisZQGJjVo != null ? fontSynthesisM8524getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU());
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long jM2622cachedMinSizeOrComputeMinSizeYEO4UFw = requireMinSizeState().m2622cachedMinSizeOrComputeMinSizeYEO4UFw(requireFontResolutionState().getValue());
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(j, ConstraintsKt.Constraints$default((int) (jM2622cachedMinSizeOrComputeMinSizeYEO4UFw >> 32), 0, (int) (jM2622cachedMinSizeOrComputeMinSizeYEO4UFw & MuxerUtil.UNSIGNED_INT_MAX_VALUE), 0, 10, null)));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.text.o
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldSizeNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        TextStyle textStyleResolveDefaults = TextStyleKt.resolveDefaults(this.style, DelegatableNodeKt.requireLayoutDirection(this));
        FontFamily.Resolver resolver = (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFontFamilyResolver());
        updateFontResolutionState(textStyleResolveDefaults, resolver);
        this.minSizeState = new TextFieldSize(DelegatableNodeKt.requireLayoutDirection(this), DelegatableNodeKt.requireDensity(this), resolver, textStyleResolveDefaults, requireFontResolutionState().getValue());
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize != null) {
            TextFieldSize.update$default(textFieldSize, null, DelegatableNodeKt.requireDensity(this), null, null, null, 29, null);
        }
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.fontResolutionState = null;
        this.minSizeState = null;
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public void onLayoutDirectionChange() {
        TextFieldSize textFieldSize = this.minSizeState;
        if (textFieldSize != null) {
            TextFieldSize.update$default(textFieldSize, DelegatableNodeKt.requireLayoutDirection(this), null, null, null, null, 30, null);
        }
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    public final void update(TextStyle textStyle) {
        TextStyle textStyleResolveDefaults = TextStyleKt.resolveDefaults(textStyle, DelegatableNodeKt.requireLayoutDirection(this));
        updateFontResolutionState(textStyleResolveDefaults, (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFontFamilyResolver()));
        TextFieldSize.update$default(requireMinSizeState(), null, null, null, textStyleResolveDefaults, null, 23, null);
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }
}
