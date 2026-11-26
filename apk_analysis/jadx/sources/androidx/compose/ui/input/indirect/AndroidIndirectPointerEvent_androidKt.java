package androidx.compose.ui.input.indirect;

import android.view.InputDevice;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidIndirectPointerEvent_androidKt {
    private static final float RATIO_CUTOFF = 5.0f;

    /* JADX INFO: renamed from: IndirectPointerEvent-eAXfkT4, reason: not valid java name */
    public static final IndirectPointerEvent m7050IndirectPointerEventeAXfkT4(MotionEvent motionEvent, int i, MotionEvent motionEvent2) {
        int actionIndex;
        long j;
        long eventTime;
        long jM5979constructorimpl;
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            actionIndex = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            actionIndex = 0;
        }
        Integer numValueOf = motionEvent2 != null ? Integer.valueOf(motionEvent2.getActionMasked()) : null;
        boolean z2 = (numValueOf != null && numValueOf.intValue() == 0) || (numValueOf != null && numValueOf.intValue() == 5) || (numValueOf != null && numValueOf.intValue() == 2);
        long eventTime2 = motionEvent.getEventTime();
        int pointerCount = motionEvent.getPointerCount();
        ArrayList arrayList = new ArrayList(pointerCount);
        int i2 = 0;
        while (i2 < pointerCount) {
            int pointerId = motionEvent.getPointerId(i2);
            long jM7546constructorimpl = PointerId.m7546constructorimpl(pointerId);
            long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getX(i2))) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getY(i2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            actionIndex = actionIndex;
            boolean z3 = i2 != actionIndex;
            int iFindPointerIndex = motionEvent2 != null ? motionEvent2.findPointerIndex(pointerId) : -1;
            if (iFindPointerIndex >= 0) {
                motionEvent2.getClass();
                j = jM5979constructorimpl2;
                z = z2;
                eventTime = motionEvent2.getEventTime();
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent2.getX(iFindPointerIndex))) << 32) | (((long) Float.floatToRawIntBits(motionEvent2.getY(iFindPointerIndex))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            } else {
                j = jM5979constructorimpl2;
                eventTime = eventTime2;
                jM5979constructorimpl = j;
                z = false;
            }
            int i3 = pointerCount;
            arrayList.add(new IndirectPointerInputChange(jM7546constructorimpl, eventTime2, j, z3, motionEvent.getPressure(i2), eventTime, jM5979constructorimpl, z, null));
            i2++;
            pointerCount = i3;
        }
        return new AndroidIndirectPointerEvent(arrayList, convertActionToIndirectPointerEventType(actionMasked), i, motionEvent, null);
    }

    /* JADX INFO: renamed from: IndirectPointerEvent-eAXfkT4$default, reason: not valid java name */
    public static /* synthetic */ IndirectPointerEvent m7051IndirectPointerEventeAXfkT4$default(MotionEvent motionEvent, int i, MotionEvent motionEvent2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7059getNonenZO2Niw();
        }
        if ((i2 & 4) != 0) {
            motionEvent2 = null;
        }
        return m7050IndirectPointerEventeAXfkT4(motionEvent, i, motionEvent2);
    }

    public static final int convertActionToIndirectPointerEventType(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return IndirectPointerEventType.Companion.m7069getMove4ZHQPSE();
                }
                if (i != 5) {
                    if (i != 6) {
                        return IndirectPointerEventType.Companion.m7072getUnknown4ZHQPSE();
                    }
                }
            }
            return IndirectPointerEventType.Companion.m7071getRelease4ZHQPSE();
        }
        return IndirectPointerEventType.Companion.m7070getPress4ZHQPSE();
    }

    public static final MotionEvent getNativeEvent(IndirectPointerEvent indirectPointerEvent) {
        indirectPointerEvent.getClass();
        return ((AndroidIndirectPointerEvent) indirectPointerEvent).getNativeEvent$ui();
    }

    public static final int indirectPrimaryDirectionalScrollAxis(MotionEvent motionEvent) {
        if (!motionEvent.isFromSource(2097152)) {
            fg.c("MotionEvent must be a touch navigation source");
            return 0;
        }
        InputDevice device = motionEvent.getDevice();
        if (device != null) {
            InputDevice.MotionRange motionRange = device.getMotionRange(0);
            InputDevice.MotionRange motionRange2 = device.getMotionRange(1);
            if (motionRange != null && motionRange2 == null) {
                return IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7060getXnZO2Niw();
            }
            if (motionRange2 != null && motionRange == null) {
                return IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7061getYnZO2Niw();
            }
            if (motionRange != null && motionRange2 != null) {
                float range = motionRange.getRange();
                float range2 = motionRange2.getRange();
                if (range > range2 && (range2 == 0.0f || range / range2 >= RATIO_CUTOFF)) {
                    return IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7060getXnZO2Niw();
                }
                if (range2 > range && (range == 0.0f || range2 / range >= RATIO_CUTOFF)) {
                    return IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7061getYnZO2Niw();
                }
            }
        }
        return IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7059getNonenZO2Niw();
    }
}
