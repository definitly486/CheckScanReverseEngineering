package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ long $measuredSize;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ AnimatedContentTransitionScopeImpl.SizeModifierNode<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1(AnimatedContentTransitionScopeImpl.SizeModifierNode<S> sizeModifierNode, Placeable placeable, long j) {
        super(1);
        this.this$0 = sizeModifierNode;
        this.$placeable = placeable;
        this.$measuredSize = j;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, this.$placeable, this.this$0.getScope().getContentAlignment().mo5655alignKFBX0sM(IntSize.m9208constructorimpl((((long) this.$placeable.getWidth()) << 32) | (((long) this.$placeable.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), this.$measuredSize, LayoutDirection.Ltr), 0.0f, 2, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
