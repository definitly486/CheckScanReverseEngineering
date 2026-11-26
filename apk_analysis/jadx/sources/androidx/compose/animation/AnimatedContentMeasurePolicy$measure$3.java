package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentMeasurePolicy$measure$3 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ int $maxHeight;
    final /* synthetic */ int $maxWidth;
    final /* synthetic */ Placeable[] $placeables;
    final /* synthetic */ AnimatedContentMeasurePolicy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedContentMeasurePolicy$measure$3(Placeable[] placeableArr, AnimatedContentMeasurePolicy animatedContentMeasurePolicy, int i, int i2) {
        super(1);
        this.$placeables = placeableArr;
        this.this$0 = animatedContentMeasurePolicy;
        this.$maxWidth = i;
        this.$maxHeight = i2;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        Placeable[] placeableArr = this.$placeables;
        AnimatedContentMeasurePolicy animatedContentMeasurePolicy = this.this$0;
        int i = this.$maxWidth;
        int i2 = this.$maxHeight;
        for (Placeable placeable : placeableArr) {
            if (placeable != null) {
                long jMo5655alignKFBX0sM = animatedContentMeasurePolicy.getRootScope().getContentAlignment().mo5655alignKFBX0sM(IntSize.m9208constructorimpl((((long) placeable.getWidth()) << 32) | (((long) placeable.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), IntSize.m9208constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), LayoutDirection.Ltr);
                Placeable.PlacementScope.place$default(placementScope, placeable, IntOffset.m9170getXimpl(jMo5655alignKFBX0sM), IntOffset.m9171getYimpl(jMo5655alignKFBX0sM), 0.0f, 4, null);
            }
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
