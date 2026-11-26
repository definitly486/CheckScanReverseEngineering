package androidx.window.area.adapter;

import androidx.window.area.WindowAreaCapability;
import androidx.window.core.ExtensionsUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaAdapter {
    public static final WindowAreaAdapter INSTANCE = new WindowAreaAdapter();

    private WindowAreaAdapter() {
    }

    public static /* synthetic */ WindowAreaCapability.Status translate$window_release$default(WindowAreaAdapter windowAreaAdapter, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();
        }
        return windowAreaAdapter.translate$window_release(i, z, i2);
    }

    public final WindowAreaCapability.Status translate$window_release(int i, boolean z, int i2) {
        return i2 <= 3 ? WindowAreaAdapterApi3.INSTANCE.translate(i, z) : WindowAreaAdapterApi4.INSTANCE.translate(i);
    }
}
