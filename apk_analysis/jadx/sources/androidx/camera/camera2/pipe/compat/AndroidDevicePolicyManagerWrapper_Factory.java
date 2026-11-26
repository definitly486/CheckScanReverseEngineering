package androidx.camera.camera2.pipe.compat;

import android.app.admin.DevicePolicyManager;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidDevicePolicyManagerWrapper_Factory implements xs6 {
    private final xs6<DevicePolicyManager> devicePolicyManagerProvider;

    private AndroidDevicePolicyManagerWrapper_Factory(xs6<DevicePolicyManager> xs6Var) {
        this.devicePolicyManagerProvider = xs6Var;
    }

    public static AndroidDevicePolicyManagerWrapper_Factory create(xs6<DevicePolicyManager> xs6Var) {
        return new AndroidDevicePolicyManagerWrapper_Factory(xs6Var);
    }

    public static AndroidDevicePolicyManagerWrapper newInstance(DevicePolicyManager devicePolicyManager) {
        return new AndroidDevicePolicyManagerWrapper(devicePolicyManager);
    }

    @Override // defpackage.ws6
    public AndroidDevicePolicyManagerWrapper get() {
        return newInstance(this.devicePolicyManagerProvider.get());
    }
}
