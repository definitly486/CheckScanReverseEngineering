package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultVelocityTracker implements PlatformVelocityTracker {
    public static final int $stable = 8;
    private long currentPointerPositionAccumulator;
    private long lastMoveEventTimeStamp;
    private final VelocityTracker1D.Strategy strategy;
    private final VelocityTracker1D xVelocityTracker;
    private final VelocityTracker1D yVelocityTracker;

    public DefaultVelocityTracker() {
        VelocityTracker1D.Strategy strategy = VelocityTracker1D.Strategy.Lsq2;
        this.strategy = strategy;
        boolean z = false;
        int i = 1;
        jh2 jh2Var = null;
        this.xVelocityTracker = new VelocityTracker1D(z, strategy, i, jh2Var);
        this.yVelocityTracker = new VelocityTracker1D(z, strategy, i, jh2Var);
        this.currentPointerPositionAccumulator = Offset.Companion.m6003getZeroF1C5BW0();
    }

    /* JADX INFO: renamed from: addPointerInputChangeLegacy-Uv8p0NA, reason: not valid java name */
    private final void m7663addPointerInputChangeLegacyUv8p0NA(PointerInputChange pointerInputChange, long j) {
        if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            this.currentPointerPositionAccumulator = pointerInputChange.m7569getPositionF1C5BW0();
            resetTracking();
        }
        long jM7570getPreviousPositionF1C5BW0 = pointerInputChange.m7570getPreviousPositionF1C5BW0();
        List<HistoricalChange> historical = pointerInputChange.getHistorical();
        int size = historical.size();
        int i = 0;
        while (i < size) {
            HistoricalChange historicalChange = historical.get(i);
            long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(historicalChange.m7470getPositionF1C5BW0(), jM7570getPreviousPositionF1C5BW0);
            long jM7470getPositionF1C5BW0 = historicalChange.m7470getPositionF1C5BW0();
            this.currentPointerPositionAccumulator = Offset.m5992plusMKHz9U(this.currentPointerPositionAccumulator, jM5991minusMKHz9U);
            mo7666addPositionUv8p0NA(historicalChange.getUptimeMillis(), Offset.m5992plusMKHz9U(this.currentPointerPositionAccumulator, j));
            i++;
            jM7570getPreviousPositionF1C5BW0 = jM7470getPositionF1C5BW0;
        }
        this.currentPointerPositionAccumulator = Offset.m5992plusMKHz9U(this.currentPointerPositionAccumulator, Offset.m5991minusMKHz9U(pointerInputChange.m7569getPositionF1C5BW0(), jM7570getPreviousPositionF1C5BW0));
        mo7666addPositionUv8p0NA(pointerInputChange.getUptimeMillis(), Offset.m5992plusMKHz9U(this.currentPointerPositionAccumulator, j));
    }

    /* JADX INFO: renamed from: addPointerInputChangeWithFix-Uv8p0NA, reason: not valid java name */
    private final void m7664addPointerInputChangeWithFixUv8p0NA(PointerInputChange pointerInputChange, long j) {
        if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            resetTracking();
        }
        if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            List<HistoricalChange> historical = pointerInputChange.getHistorical();
            int size = historical.size();
            for (int i = 0; i < size; i++) {
                HistoricalChange historicalChange = historical.get(i);
                mo7666addPositionUv8p0NA(historicalChange.getUptimeMillis(), Offset.m5992plusMKHz9U(historicalChange.m7468getOriginalEventPositionF1C5BW0$ui(), j));
            }
            mo7666addPositionUv8p0NA(pointerInputChange.getUptimeMillis(), Offset.m5992plusMKHz9U(pointerInputChange.m7567getOriginalEventPositionF1C5BW0$ui(), j));
        }
        if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange) && pointerInputChange.getUptimeMillis() - this.lastMoveEventTimeStamp > 40) {
            resetTracking();
        }
        this.lastMoveEventTimeStamp = pointerInputChange.getUptimeMillis();
    }

    @Override // androidx.compose.ui.input.pointer.util.PlatformVelocityTracker
    /* JADX INFO: renamed from: addPointerInputChange-Uv8p0NA, reason: not valid java name */
    public void mo7665addPointerInputChangeUv8p0NA(PointerInputChange pointerInputChange, long j) {
        if (VelocityTrackerKt.getVelocityTrackerAddPointsFix()) {
            m7664addPointerInputChangeWithFixUv8p0NA(pointerInputChange, j);
        } else {
            m7663addPointerInputChangeLegacyUv8p0NA(pointerInputChange, j);
        }
    }

    @Override // androidx.compose.ui.input.pointer.util.PlatformVelocityTracker
    /* JADX INFO: renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public void mo7666addPositionUv8p0NA(long j, long j2) {
        this.xVelocityTracker.addDataPoint(j, Float.intBitsToFloat((int) (j2 >> 32)));
        this.yVelocityTracker.addDataPoint(j, Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    @Override // androidx.compose.ui.input.pointer.util.PlatformVelocityTracker
    /* JADX INFO: renamed from: calculateVelocity-AH228Gc, reason: not valid java name */
    public long mo7667calculateVelocityAH228Gc(long j) {
        if (!(Velocity.m9280getXimpl(j) > 0.0f && Velocity.m9281getYimpl(j) > 0.0f)) {
            InlineClassHelperKt.throwIllegalStateException("maximumVelocity should be a positive value. You specified=" + ((Object) Velocity.m9287toStringimpl(j)));
        }
        return VelocityKt.Velocity(this.xVelocityTracker.calculateVelocity(Velocity.m9280getXimpl(j)), this.yVelocityTracker.calculateVelocity(Velocity.m9281getYimpl(j)));
    }

    /* JADX INFO: renamed from: getCurrentPointerPositionAccumulator-F1C5BW0$ui, reason: not valid java name */
    public final long m7668getCurrentPointerPositionAccumulatorF1C5BW0$ui() {
        return this.currentPointerPositionAccumulator;
    }

    public final long getLastMoveEventTimeStamp$ui() {
        return this.lastMoveEventTimeStamp;
    }

    @Override // androidx.compose.ui.input.pointer.util.PlatformVelocityTracker
    public void resetTracking() {
        this.xVelocityTracker.resetTracking();
        this.yVelocityTracker.resetTracking();
        this.lastMoveEventTimeStamp = 0L;
    }

    /* JADX INFO: renamed from: setCurrentPointerPositionAccumulator-k-4lQ0M$ui, reason: not valid java name */
    public final void m7669setCurrentPointerPositionAccumulatork4lQ0M$ui(long j) {
        this.currentPointerPositionAccumulator = j;
    }

    public final void setLastMoveEventTimeStamp$ui(long j) {
        this.lastMoveEventTimeStamp = j;
    }
}
