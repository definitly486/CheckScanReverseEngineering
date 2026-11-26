package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedEnterExitMeasurePolicy$measure$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ List<Placeable> $placeables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedEnterExitMeasurePolicy$measure$1(List<? extends Placeable> list) {
        super(1);
        this.$placeables = list;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        List<Placeable> list = this.$placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable.PlacementScope.place$default(placementScope, list.get(i), 0, 0, 0.0f, 4, null);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
