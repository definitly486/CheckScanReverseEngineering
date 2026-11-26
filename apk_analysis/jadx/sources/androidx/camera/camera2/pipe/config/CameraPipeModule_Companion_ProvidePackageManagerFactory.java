package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.content.pm.PackageManager;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvidePackageManagerFactory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;

    private CameraPipeModule_Companion_ProvidePackageManagerFactory(xs6<Context> xs6Var) {
        this.cameraPipeContextProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvidePackageManagerFactory create(xs6<Context> xs6Var) {
        return new CameraPipeModule_Companion_ProvidePackageManagerFactory(xs6Var);
    }

    public static PackageManager providePackageManager(Context context) {
        PackageManager packageManagerProvidePackageManager = CameraPipeModule.Companion.providePackageManager(context);
        te6.b(packageManagerProvidePackageManager);
        return packageManagerProvidePackageManager;
    }

    @Override // defpackage.ws6
    public PackageManager get() {
        return providePackageManager(this.cameraPipeContextProvider.get());
    }
}
