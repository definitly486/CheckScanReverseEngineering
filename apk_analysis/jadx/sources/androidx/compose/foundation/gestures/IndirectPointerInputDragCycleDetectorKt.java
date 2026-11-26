package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetectorKt {
    private static final int PixelSensibility = 2;
    private static final int SmoothingFactor = 3;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addIndirectPointerInputChange-Qf4Zb88, reason: not valid java name */
    public static final void m1543addIndirectPointerInputChangeQf4Zb88(VelocityTracker velocityTracker, IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, IndirectPointerInputEventSmoother indirectPointerInputEventSmoother, long j) {
        velocityTracker.m7675addPositionUv8p0NA(indirectPointerInputChange.getUptimeMillis(), Offset.m5992plusMKHz9U(m1549primaryAxisPositiongrjNGvw(indirectPointerInputEventSmoother.m1551smoothEventPositiontuRUvjQ(indirectPointerInputChange), orientation, indirectPointerEventPrimaryDirectionalMotionAxis), j));
    }

    private static final boolean changedToDown(IndirectPointerInputChange indirectPointerInputChange) {
        return (indirectPointerInputChange.isConsumed() || indirectPointerInputChange.getPreviousPressed() || !indirectPointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToDownIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return !indirectPointerInputChange.getPreviousPressed() && indirectPointerInputChange.getPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean changedToUpIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.getPreviousPressed() && !indirectPointerInputChange.getPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: positionChange-_bfSUIo, reason: not valid java name */
    public static final long m1544positionChange_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        return m1546positionChangeInternalwfG_k4k(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: positionChangeIgnoreConsumed-_bfSUIo, reason: not valid java name */
    public static final long m1545positionChangeIgnoreConsumed_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        return m1546positionChangeInternalwfG_k4k(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis, true);
    }

    /* JADX INFO: renamed from: positionChangeInternal-wfG_k4k, reason: not valid java name */
    private static final long m1546positionChangeInternalwfG_k4k(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
        return (z || !indirectPointerInputChange.isConsumed()) ? Offset.m5991minusMKHz9U(m1548primaryAxisPosition_bfSUIo(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), m1550primaryAxisPreviousPosition_bfSUIo(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis)) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    /* JADX INFO: renamed from: positionChangeInternal-wfG_k4k$default, reason: not valid java name */
    public static /* synthetic */ long m1547positionChangeInternalwfG_k4k$default(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m1546positionChangeInternalwfG_k4k(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: primaryAxisPosition-_bfSUIo, reason: not valid java name */
    public static final long m1548primaryAxisPosition_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float fIntBitsToFloat;
        if (orientation == null) {
            return indirectPointerInputChange.m7074getPositionF1C5BW0();
        }
        IndirectPointerEventPrimaryDirectionalMotionAxis.Companion companion = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion;
        if (indirectPointerEventPrimaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7060getXnZO2Niw())) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() >> 32));
        } else {
            if (!(indirectPointerEventPrimaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7061getYnZO2Niw()) : false)) {
                return indirectPointerInputChange.m7074getPositionF1C5BW0();
            }
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (orientation == Orientation.Horizontal) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: primaryAxisPosition-grjNGvw, reason: not valid java name */
    private static final long m1549primaryAxisPositiongrjNGvw(long j, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float fIntBitsToFloat;
        if (orientation == null) {
            return j;
        }
        IndirectPointerEventPrimaryDirectionalMotionAxis.Companion companion = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion;
        if (indirectPointerEventPrimaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7060getXnZO2Niw())) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        } else {
            if (!(indirectPointerEventPrimaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7061getYnZO2Niw()) : false)) {
                return j;
            }
            fIntBitsToFloat = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (orientation == Orientation.Horizontal) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: primaryAxisPreviousPosition-_bfSUIo, reason: not valid java name */
    private static final long m1550primaryAxisPreviousPosition_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float fIntBitsToFloat;
        if (orientation == null) {
            return indirectPointerInputChange.m7075getPreviousPositionF1C5BW0();
        }
        IndirectPointerEventPrimaryDirectionalMotionAxis.Companion companion = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion;
        if (indirectPointerEventPrimaryDirectionalMotionAxis == null ? false : IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7060getXnZO2Niw())) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.m7075getPreviousPositionF1C5BW0() >> 32));
        } else {
            if (!(indirectPointerEventPrimaryDirectionalMotionAxis != null ? IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(indirectPointerEventPrimaryDirectionalMotionAxis.m7058unboximpl(), companion.m7061getYnZO2Niw()) : false)) {
                return indirectPointerInputChange.m7075getPreviousPositionF1C5BW0();
            }
            fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.m7075getPreviousPositionF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        if (orientation == Orientation.Horizontal) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}
