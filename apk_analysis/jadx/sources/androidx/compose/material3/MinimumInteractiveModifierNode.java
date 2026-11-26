package androidx.compose.material3;

import androidx.compose.material3.MinimumInteractiveModifierNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.w65;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MinimumInteractiveModifierNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    public static final int $stable = 8;
    private Map<AlignmentLine, Integer> alignmentLinesCache;

    private final Map<AlignmentLine, Integer> getAlignmentLinesCache() {
        Map<AlignmentLine, Integer> map = this.alignmentLinesCache;
        if (map != null) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(2);
        this.alignmentLinesCache = linkedHashMap;
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(int i, Placeable placeable, int i2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, w65.b((i - placeable.getWidth()) / 2.0f), w65.b((i2 - placeable.getHeight()) / 2.0f), 0.0f, 4, null);
        return j59.a;
    }

    private final void updateAlignmentLines(int i, Placeable placeable) {
        Map<AlignmentLine, Integer> alignmentLinesCache = getAlignmentLinesCache();
        VerticalAlignmentLine minimumInteractiveLeftAlignmentLine = InteractiveComponentSizeKt.getMinimumInteractiveLeftAlignmentLine();
        int iRound = Math.round((i - placeable.getWidth()) / 2.0f);
        if (iRound < 0) {
            iRound = 0;
        }
        alignmentLinesCache.put(minimumInteractiveLeftAlignmentLine, Integer.valueOf(iRound));
        HorizontalAlignmentLine minimumInteractiveTopAlignmentLine = InteractiveComponentSizeKt.getMinimumInteractiveTopAlignmentLine();
        int iRound2 = Math.round((i - placeable.getHeight()) / 2.0f);
        alignmentLinesCache.put(minimumInteractiveTopAlignmentLine, Integer.valueOf(iRound2 >= 0 ? iRound2 : 0));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float fM9056unboximpl = ((Dp) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl();
        float fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
        if (fM9056unboximpl < fM9042constructorimpl) {
            fM9056unboximpl = fM9042constructorimpl;
        }
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(fM9056unboximpl);
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        boolean z = isAttached() && !Float.isNaN(fM9042constructorimpl2) && Dp.m9041compareTo0680j_4(fM9042constructorimpl2, Dp.m9042constructorimpl(0.0f)) > 0;
        int iMo1428roundToPx0680j_4 = Float.isNaN(fM9042constructorimpl2) ? 0 : measureScope.mo1428roundToPx0680j_4(fM9042constructorimpl2);
        final int iMax = z ? Math.max(placeableMo7702measureBRTryo0.getWidth(), iMo1428roundToPx0680j_4) : placeableMo7702measureBRTryo0.getWidth();
        final int iMax2 = z ? Math.max(placeableMo7702measureBRTryo0.getHeight(), iMo1428roundToPx0680j_4) : placeableMo7702measureBRTryo0.getHeight();
        if (z) {
            updateAlignmentLines(iMo1428roundToPx0680j_4, placeableMo7702measureBRTryo0);
        }
        Map<AlignmentLine, Integer> map = this.alignmentLinesCache;
        if (map == null) {
            map = mx2.b;
        }
        return measureScope.layout(iMax, iMax2, map, new nl3() { // from class: fb5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return MinimumInteractiveModifierNode.measure_3p2s80s$lambda$0(iMax, placeableMo7702measureBRTryo0, iMax2, (Placeable.PlacementScope) obj);
            }
        });
    }
}
