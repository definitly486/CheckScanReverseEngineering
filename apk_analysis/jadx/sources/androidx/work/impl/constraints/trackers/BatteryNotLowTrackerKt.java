package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class BatteryNotLowTrackerKt {
    public static final float BATTERY_LOW_THRESHOLD = 0.15f;
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("BatteryNotLowTracker");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }
}
