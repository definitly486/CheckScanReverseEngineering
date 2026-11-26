package androidx.compose.animation;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactor;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class SkipToLookaheadSizeNode$measure$2 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
    final /* synthetic */ long $constrainedSize;
    final /* synthetic */ Placeable $p;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ SkipToLookaheadSizeNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SkipToLookaheadSizeNode$measure$2(SkipToLookaheadSizeNode skipToLookaheadSizeNode, Placeable placeable, long j, MeasureScope measureScope) {
        super(1);
        this.this$0 = skipToLookaheadSizeNode;
        this.$p = placeable;
        this.$constrainedSize = j;
        this.$this_measure = measureScope;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Placeable.PlacementScope placementScope) {
        long jM7812constructorimpl;
        ScaleToBoundsImpl scaleToBounds = this.this$0.getScaleToBounds();
        if (scaleToBounds == null) {
            Placeable.PlacementScope.place$default(placementScope, this.$p, 0, 0, 0.0f, 4, null);
            return;
        }
        ContentScale contentScale = scaleToBounds.getContentScale();
        if (((int) (this.this$0.lookaheadSize >> 32)) == 0 || ((int) (this.this$0.lookaheadSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == 0) {
            jM7812constructorimpl = ScaleFactor.m7812constructorimpl((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            jM7812constructorimpl = contentScale.mo7695computeScaleFactorH7hwNQA(IntSizeKt.m9225toSizeozmzZPI(this.this$0.lookaheadSize), IntSizeKt.m9225toSizeozmzZPI(this.$constrainedSize));
        }
        long jMo5655alignKFBX0sM = scaleToBounds.getAlignment().mo5655alignKFBX0sM(IntSize.m9208constructorimpl((((long) w65.b(Float.intBitsToFloat((int) (jM7812constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * ((int) (this.this$0.lookaheadSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) w65.b(Float.intBitsToFloat((int) (jM7812constructorimpl >> 32)) * ((int) (this.this$0.lookaheadSize >> 32)))) << 32)), this.$constrainedSize, this.$this_measure.getLayoutDirection());
        Placeable.PlacementScope.placeWithLayer$default(placementScope, this.$p, IntOffset.m9170getXimpl(jMo5655alignKFBX0sM), IntOffset.m9171getYimpl(jMo5655alignKFBX0sM), 0.0f, new AnonymousClass1(jM7812constructorimpl), 4, (Object) null);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SkipToLookaheadSizeNode$measure$2$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
        final /* synthetic */ long $resolvedScale;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(long j) {
            super(1);
            this.$resolvedScale = j;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
            graphicsLayerScope.setScaleX(Float.intBitsToFloat((int) (this.$resolvedScale >> 32)));
            graphicsLayerScope.setScaleY(Float.intBitsToFloat((int) (this.$resolvedScale & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.0f, 0.0f));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
            invoke2(graphicsLayerScope);
            return j59.a;
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
        invoke2(placementScope);
        return j59.a;
    }
}
