package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface LookaheadScope {
    /* JADX INFO: renamed from: localLookaheadPositionOf-au-aQtc$default, reason: not valid java name */
    static /* synthetic */ long m7732localLookaheadPositionOfauaQtc$default(LookaheadScope lookaheadScope, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: localLookaheadPositionOf-au-aQtc");
            return 0L;
        }
        if ((i & 2) != 0) {
            j = Offset.Companion.m6003getZeroF1C5BW0();
        }
        long j2 = j;
        if ((i & 4) != 0) {
            z = true;
        }
        return lookaheadScope.mo1155localLookaheadPositionOfauaQtc(layoutCoordinates, layoutCoordinates2, j2, z);
    }

    LayoutCoordinates getLookaheadScopeCoordinates(Placeable.PlacementScope placementScope);

    /* JADX INFO: renamed from: localLookaheadPositionOf-au-aQtc */
    default long mo1155localLookaheadPositionOfauaQtc(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, long j, boolean z) {
        return LookaheadScopeKt.m7733localLookaheadPositionOfFgt4K4Q(this, layoutCoordinates, layoutCoordinates2, j, z);
    }

    LayoutCoordinates toLookaheadCoordinates(LayoutCoordinates layoutCoordinates);
}
