package androidx.compose.ui;

import androidx.compose.ui.layout.Placeable;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ZIndexNode$measure$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ ZIndexNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZIndexNode$measure$1(Placeable placeable, ZIndexNode zIndexNode) {
        super(1);
        this.$placeable = placeable;
        this.this$0 = zIndexNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        placementScope.place(this.$placeable, 0, 0, this.this$0.getZIndex());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
