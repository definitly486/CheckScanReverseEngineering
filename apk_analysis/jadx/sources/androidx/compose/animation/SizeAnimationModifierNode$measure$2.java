package androidx.compose.animation;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SizeAnimationModifierNode$measure$2 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ int $height;
    final /* synthetic */ long $measuredSize;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ int $width;
    final /* synthetic */ SizeAnimationModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeAnimationModifierNode$measure$2(SizeAnimationModifierNode sizeAnimationModifierNode, long j, int i, int i2, MeasureScope measureScope, Placeable placeable) {
        super(1);
        this.this$0 = sizeAnimationModifierNode;
        this.$measuredSize = j;
        this.$width = i;
        this.$height = i2;
        this.$this_measure = measureScope;
        this.$placeable = placeable;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, this.$placeable, this.this$0.getAlignment().mo5655alignKFBX0sM(this.$measuredSize, IntSize.m9208constructorimpl((((long) this.$width) << 32) | (((long) this.$height) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), this.$this_measure.getLayoutDirection()), 0.0f, 2, null);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
