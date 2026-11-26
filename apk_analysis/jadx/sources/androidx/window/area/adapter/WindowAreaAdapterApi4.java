package androidx.window.area.adapter;

import androidx.window.area.WindowAreaCapability;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaAdapterApi4 {
    public static final WindowAreaAdapterApi4 INSTANCE = new WindowAreaAdapterApi4();

    private WindowAreaAdapterApi4() {
    }

    public final WindowAreaCapability.Status translate(int i) {
        if (i == 0) {
            return WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED;
        }
        if (i == 1) {
            return WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNAVAILABLE;
        }
        if (i != 2) {
            return i != 3 ? WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED : WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE;
        }
        return WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE;
    }
}
