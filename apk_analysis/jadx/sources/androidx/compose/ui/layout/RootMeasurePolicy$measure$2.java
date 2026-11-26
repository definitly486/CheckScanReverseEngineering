package androidx.compose.ui.layout;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class RootMeasurePolicy$measure$2 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ Placeable $placeable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootMeasurePolicy$measure$2(Placeable placeable) {
        super(1);
        this.$placeable = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, this.$placeable, 0, 0, 0.0f, (nl3) null, 12, (Object) null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
