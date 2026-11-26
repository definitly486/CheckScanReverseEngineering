package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.relocation.BringIntoViewRequesterNode;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.h1;
import defpackage.j59;
import defpackage.ll3;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldTextLayoutModifierNode extends DelegatingNode implements LayoutModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode {
    public static final int $stable = 8;
    private Map<AlignmentLine, Integer> baselineCache;
    private final BringIntoViewRequesterNode bringIntoViewRequesterNode;
    private boolean singleLine;
    private TextLayoutState textLayoutState;

    public TextFieldTextLayoutModifierNode(TextLayoutState textLayoutState, TransformedTextFieldState transformedTextFieldState, TextStyle textStyle, boolean z, bm3<? super Density, ? super ll3<TextLayoutResult>, j59> bm3Var, KeyboardOptions keyboardOptions) {
        this.textLayoutState = textLayoutState;
        this.singleLine = z;
        this.bringIntoViewRequesterNode = (BringIntoViewRequesterNode) delegate(new BringIntoViewRequesterNode(textLayoutState.getBringIntoViewRequester()));
        this.textLayoutState.setOnTextLayout(bm3Var);
        TextLayoutState textLayoutState2 = this.textLayoutState;
        boolean z2 = this.singleLine;
        textLayoutState2.updateNonMeasureInputs(transformedTextFieldState, textStyle, z2, !z2, keyboardOptions);
    }

    private static /* synthetic */ void getBaselineCache$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        TextLayoutResult textLayoutResultM2822layoutWithNewMeasureInputshBUhpc = this.textLayoutState.m2822layoutWithNewMeasureInputshBUhpc(measureScope, measureScope.getLayoutDirection(), (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFontFamilyResolver()), j);
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA((int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() >> 32), (int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() >> 32), (int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        this.textLayoutState.m2823setMinHeightForSingleLineField0680j_4(this.singleLine ? measureScope.mo1431toDpu2uoSUM(TextDelegateKt.ceilToIntPx(textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.getLineBottom(0))) : Dp.m9042constructorimpl(0.0f));
        Map<AlignmentLine, Integer> linkedHashMap = this.baselineCache;
        int i = 2;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>(2);
        }
        linkedHashMap.put(AlignmentLineKt.getFirstBaseline(), Integer.valueOf(Math.round(textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.getFirstBaseline())));
        linkedHashMap.put(AlignmentLineKt.getLastBaseline(), Integer.valueOf(Math.round(textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.getLastBaseline())));
        this.baselineCache = linkedHashMap;
        int iM8462getSizeYbymL2g = (int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() >> 32);
        int iM8462getSizeYbymL2g2 = (int) (textLayoutResultM2822layoutWithNewMeasureInputshBUhpc.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        Map<AlignmentLine, Integer> map = this.baselineCache;
        map.getClass();
        return measureScope.layout(iM8462getSizeYbymL2g, iM8462getSizeYbymL2g2, map, new h1(placeableMo7702measureBRTryo0, i));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.textLayoutState.setTextLayoutNodeCoordinates(layoutCoordinates);
    }

    public final void updateNode(TextLayoutState textLayoutState, TransformedTextFieldState transformedTextFieldState, TextStyle textStyle, boolean z, bm3<? super Density, ? super ll3<TextLayoutResult>, j59> bm3Var, KeyboardOptions keyboardOptions) {
        TextLayoutState textLayoutState2 = this.textLayoutState;
        this.textLayoutState = textLayoutState;
        textLayoutState.setOnTextLayout(bm3Var);
        this.singleLine = z;
        this.textLayoutState.updateNonMeasureInputs(transformedTextFieldState, textStyle, z, !z, keyboardOptions);
        if (aa4.e(textLayoutState2, textLayoutState)) {
            return;
        }
        this.bringIntoViewRequesterNode.updateRequester(textLayoutState.getBringIntoViewRequester());
    }
}
