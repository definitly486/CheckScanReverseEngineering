package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1 extends gh4 implements dm3<MeasureScope, Measurable, Constraints, MeasureResult> {
    final /* synthetic */ Transition<T> $transition;
    final /* synthetic */ nl3<T, Boolean> $visible;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1(nl3<? super T, Boolean> nl3Var, Transition<T> transition) {
        super(3);
        this.$visible = nl3Var;
        this.$transition = transition;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        return m1076invoke3p2s80s(measureScope, measurable, constraints.m9001unboximpl());
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
    public final MeasureResult m1076invoke3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long jM9208constructorimpl;
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        if (!measureScope.isLookingAhead() || this.$visible.invoke((T) this.$transition.getTargetState()).booleanValue()) {
            jM9208constructorimpl = IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getWidth()) << 32) | (((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            jM9208constructorimpl = IntSize.Companion.m9218getZeroYbymL2g();
        }
        return MeasureScope.layout$default(measureScope, (int) (jM9208constructorimpl >> 32), (int) (jM9208constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE), null, new AnonymousClass1(placeableMo7702measureBRTryo0), 4, null);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        final /* synthetic */ Placeable $placeable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Placeable placeable) {
            super(1);
            this.$placeable = placeable;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
            Placeable.PlacementScope.place$default(placementScope, this.$placeable, 0, 0, 0.0f, 4, null);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }
    }
}
