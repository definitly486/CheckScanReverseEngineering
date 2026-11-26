package androidx.camera.camera2.pipe.compat;

import android.app.admin.DevicePolicyManager;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidDevicePolicyManagerWrapper implements DevicePolicyManagerWrapper {
    private final DevicePolicyManager devicePolicyManager;

    public AndroidDevicePolicyManagerWrapper(DevicePolicyManager devicePolicyManager) {
        devicePolicyManager.getClass();
        this.devicePolicyManager = devicePolicyManager;
    }

    @Override // androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper
    public boolean getCamerasDisabled() {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("DevicePolicyManager#getCameraDisabled");
            return this.devicePolicyManager.getCameraDisabled(null);
        } finally {
            Trace.endSection();
        }
    }
}
