package androidx.compose.ui.layout;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ApproachLayoutModifierNode$measure$1$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ Placeable $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApproachLayoutModifierNode$measure$1$1(Placeable placeable) {
        super(1);
        this.$this_run = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, this.$this_run, 0, 0, 0.0f, 4, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
