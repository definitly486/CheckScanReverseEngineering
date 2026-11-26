package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
final class MotionEventHelper {
    public static final MotionEventHelper INSTANCE = new MotionEventHelper();

    private MotionEventHelper() {
    }

    /* JADX INFO: renamed from: toRawOffset-dBAh8RU, reason: not valid java name */
    public final long m7491toRawOffsetdBAh8RU(MotionEvent motionEvent, int i) {
        float rawX = motionEvent.getRawX(i);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(motionEvent.getRawY(i))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(rawX) << 32));
    }
}
