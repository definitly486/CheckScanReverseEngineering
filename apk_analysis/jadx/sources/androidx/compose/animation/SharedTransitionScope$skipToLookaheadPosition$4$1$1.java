package androidx.compose.animation;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffsetKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SharedTransitionScope$skipToLookaheadPosition$4$1$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ ll3<Boolean> $enabled;
    final /* synthetic */ Placeable $this_run;
    final /* synthetic */ SharedTransitionScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedTransitionScope$skipToLookaheadPosition$4$1$1(ll3<Boolean> ll3Var, Placeable placeable, SharedTransitionScope sharedTransitionScope) {
        super(1);
        this.$enabled = ll3Var;
        this.$this_run = placeable;
        this.this$0 = sharedTransitionScope;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        if (!this.$enabled.invoke().booleanValue()) {
            Placeable.PlacementScope.place$default(placementScope, this.$this_run, 0, 0, 0.0f, 4, null);
            return;
        }
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates == null) {
            Placeable.PlacementScope.place$default(placementScope, this.$this_run, 0, 0, 0.0f, 4, null);
            return;
        }
        SharedTransitionScope sharedTransitionScope = this.this$0;
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, this.$this_run, IntOffsetKt.m9187roundk4lQ0M(Offset.m5991minusMKHz9U(coordinates.mo7711localPositionOfR5De75A(sharedTransitionScope.getLookaheadScopeCoordinates(placementScope), Offset.m5991minusMKHz9U(LookaheadScope.m7732localLookaheadPositionOfauaQtc$default(sharedTransitionScope, sharedTransitionScope.getLookaheadScopeCoordinates(placementScope), coordinates, 0L, false, 6, null), LayoutCoordinates.m7709localPositionOfS_NoaFU$default(sharedTransitionScope.getLookaheadScopeCoordinates(placementScope), coordinates, 0L, false, 6, null))), LayoutCoordinates.m7709localPositionOfS_NoaFU$default(coordinates, sharedTransitionScope.getLookaheadScopeCoordinates(placementScope), 0L, false, 6, null))), 0.0f, 2, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
