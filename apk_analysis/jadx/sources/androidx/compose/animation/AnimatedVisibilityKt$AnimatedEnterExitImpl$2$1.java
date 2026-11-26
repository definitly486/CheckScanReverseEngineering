package androidx.compose.animation;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.gh4;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1 extends gh4 implements dm3<MeasureScope, Measurable, Constraints, MeasureResult> {
    final /* synthetic */ OnLookaheadMeasured $onLookaheadMeasured;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1(OnLookaheadMeasured onLookaheadMeasured) {
        super(3);
        this.$onLookaheadMeasured = onLookaheadMeasured;
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        return m1075invoke3p2s80s(measureScope, measurable, constraints.m9001unboximpl());
    }

    /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
    public final MeasureResult m1075invoke3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        OnLookaheadMeasured onLookaheadMeasured = this.$onLookaheadMeasured;
        if (measureScope.isLookingAhead()) {
            onLookaheadMeasured.m1140invokeozmzZPI(IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) placeableMo7702measureBRTryo0.getWidth()) << 32)));
        }
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1$1(placeableMo7702measureBRTryo0), 4, null);
    }
}
