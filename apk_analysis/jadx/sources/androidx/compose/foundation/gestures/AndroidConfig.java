package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.ViewConfiguration;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidConfig implements ScrollConfig {
    public static final int $stable = 8;
    private final ViewConfiguration viewConfiguration;

    public AndroidConfig(ViewConfiguration viewConfiguration) {
        this.viewConfiguration = viewConfiguration;
    }

    @Override // androidx.compose.foundation.gestures.ScrollConfig
    /* JADX INFO: renamed from: calculateMouseWheelScroll-8xgXZGE, reason: not valid java name */
    public long mo1454calculateMouseWheelScroll8xgXZGE(Density density, PointerEvent pointerEvent, long j) {
        float f = -getVerticalScrollFactor$foundation(density);
        float f2 = -getHorizontalScrollFactor$foundation(density);
        List<PointerInputChange> changes = pointerEvent.getChanges();
        Offset offsetM5976boximpl = Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0());
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            offsetM5976boximpl = Offset.m5976boximpl(Offset.m5992plusMKHz9U(offsetM5976boximpl.m5997unboximpl(), changes.get(i).m7571getScrollDeltaF1C5BW0()));
        }
        long jM5997unboximpl = offsetM5976boximpl.m5997unboximpl();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM5997unboximpl >> 32)) * f2;
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * f;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getHorizontalScrollFactor$foundation(Density density) {
        return Build.VERSION.SDK_INT > 26 ? ViewConfigurationApi26Impl.INSTANCE.getHorizontalScrollFactor(this.viewConfiguration) : density.mo1434toPx0680j_4(Dp.m9042constructorimpl(64.0f));
    }

    public final float getVerticalScrollFactor$foundation(Density density) {
        return Build.VERSION.SDK_INT > 26 ? ViewConfigurationApi26Impl.INSTANCE.getVerticalScrollFactor(this.viewConfiguration) : density.mo1434toPx0680j_4(Dp.m9042constructorimpl(64.0f));
    }

    public final ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }
}
