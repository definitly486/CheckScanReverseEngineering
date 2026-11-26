package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeCoordinator$outOfBoundsHit$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ float $distanceFromEdge;
    final /* synthetic */ HitTestResult $hitTestResult;
    final /* synthetic */ NodeCoordinator.HitTestSource $hitTestSource;
    final /* synthetic */ boolean $isHitInMinimumTouchTargetBetter;
    final /* synthetic */ boolean $isInLayer;
    final /* synthetic */ long $pointerPosition;
    final /* synthetic */ int $pointerType;
    final /* synthetic */ Modifier.Node $this_outOfBoundsHit;
    final /* synthetic */ NodeCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NodeCoordinator$outOfBoundsHit$1(NodeCoordinator nodeCoordinator, Modifier.Node node, NodeCoordinator.HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f, boolean z2) {
        super(0);
        this.this$0 = nodeCoordinator;
        this.$this_outOfBoundsHit = node;
        this.$hitTestSource = hitTestSource;
        this.$pointerPosition = j;
        this.$hitTestResult = hitTestResult;
        this.$pointerType = i;
        this.$isInLayer = z;
        this.$distanceFromEdge = f;
        this.$isHitInMinimumTouchTargetBetter = z2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.m7993outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m8017nextUntilhw7D004(this.$this_outOfBoundsHit, this.$hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), this.$hitTestSource, this.$pointerPosition, this.$hitTestResult, this.$pointerType, this.$isInLayer, this.$distanceFromEdge, this.$isHitInMinimumTouchTargetBetter);
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
