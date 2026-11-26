package androidx.compose.foundation.layout;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.State;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GridMeasurePolicy implements MeasurePolicy {
    public static final int $stable = 0;
    private final State<nl3<GridConfigurationScope, j59>> configState;

    /* JADX WARN: Multi-variable type inference failed */
    public GridMeasurePolicy(State<? extends nl3<? super GridConfigurationScope, j59>> state) {
        this.configState = state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(GridTrackSizes gridTrackSizes, ResolvedGridItemIndicesResult resolvedGridItemIndicesResult, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope placementScope2;
        int[] iArrCalculateTrackOffsets = GridKt.calculateTrackOffsets(gridTrackSizes.getColumnWidths(), gridTrackSizes.getColumnGapPx());
        int[] iArrCalculateTrackOffsets2 = GridKt.calculateTrackOffsets(gridTrackSizes.getRowHeights(), gridTrackSizes.getRowGapPx());
        MutableObjectList<GridItem> gridItems = resolvedGridItemIndicesResult.getGridItems();
        Object[] objArr = gridItems.content;
        int i = gridItems._size;
        int i2 = 0;
        while (i2 < i) {
            GridItem gridItem = (GridItem) objArr[i2];
            Placeable placeable = gridItem.getPlaceable();
            if (placeable != null) {
                placementScope2 = placementScope;
                Placeable.PlacementScope.place$default(placementScope2, placeable, gridItem.getOffsetX() + iArrCalculateTrackOffsets[gridItem.getColumn()], iArrCalculateTrackOffsets2[gridItem.getRow()] + gridItem.getOffsetY(), 0.0f, 4, null);
            } else {
                placementScope2 = placementScope;
            }
            i2++;
            placementScope = placementScope2;
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        GridConfigurationScopeImpl gridConfigurationScopeImpl = new GridConfigurationScopeImpl(measureScope, j, null);
        this.configState.getValue().invoke(gridConfigurationScopeImpl);
        final ResolvedGridItemIndicesResult resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo = GridKt.m1960resolveGridItemIndicespclAfdo(list, gridConfigurationScopeImpl.getColumnSpecs(), gridConfigurationScopeImpl.getRowSpecs(), gridConfigurationScopeImpl.mo1929getFlowITJdzs4());
        final GridTrackSizes gridTrackSizesM1957calculateGridTrackSizescMe430U = GridKt.m1957calculateGridTrackSizescMe430U(measureScope, resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo.getGridItems(), gridConfigurationScopeImpl.getColumnSpecs(), gridConfigurationScopeImpl.getRowSpecs(), (int) (resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo.m2078getGridSizeYbymL2g() >> 32), (int) (resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo.m2078getGridSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE), j, gridConfigurationScopeImpl.m1939getColumnGapD9Ej5fM(), gridConfigurationScopeImpl.m1940getRowGapD9Ej5fM());
        GridKt.measureItems(resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo.getGridItems(), gridTrackSizesM1957calculateGridTrackSizescMe430U, measureScope.getLayoutDirection());
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, gridTrackSizesM1957calculateGridTrackSizescMe430U.getTotalWidth()), ConstraintsKt.m9011constrainHeightK40F9xA(j, gridTrackSizesM1957calculateGridTrackSizescMe430U.getTotalHeight()), null, new nl3() { // from class: androidx.compose.foundation.layout.v
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return GridMeasurePolicy.measure_3p2s80s$lambda$0(gridTrackSizesM1957calculateGridTrackSizescMe430U, resolvedGridItemIndicesResultM1960resolveGridItemIndicespclAfdo, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
