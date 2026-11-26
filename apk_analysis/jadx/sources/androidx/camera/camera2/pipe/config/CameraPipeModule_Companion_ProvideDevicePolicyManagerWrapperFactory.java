package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;

    private CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory(xs6<Context> xs6Var) {
        this.cameraPipeContextProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory create(xs6<Context> xs6Var) {
        return new CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory(xs6Var);
    }

    public static DevicePolicyManagerWrapper provideDevicePolicyManagerWrapper(Context context) {
        DevicePolicyManagerWrapper devicePolicyManagerWrapperProvideDevicePolicyManagerWrapper = CameraPipeModule.Companion.provideDevicePolicyManagerWrapper(context);
        te6.b(devicePolicyManagerWrapperProvideDevicePolicyManagerWrapper);
        return devicePolicyManagerWrapperProvideDevicePolicyManagerWrapper;
    }

    @Override // defpackage.ws6
    public DevicePolicyManagerWrapper get() {
        return provideDevicePolicyManagerWrapper(this.cameraPipeContextProvider.get());
    }
}
