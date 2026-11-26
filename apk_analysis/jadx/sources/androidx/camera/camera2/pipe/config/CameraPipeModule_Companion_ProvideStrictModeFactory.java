package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.StrictMode;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideStrictModeFactory implements xs6 {
    private final xs6<CameraPipe.Flags> flagsProvider;

    private CameraPipeModule_Companion_ProvideStrictModeFactory(xs6<CameraPipe.Flags> xs6Var) {
        this.flagsProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideStrictModeFactory create(xs6<CameraPipe.Flags> xs6Var) {
        return new CameraPipeModule_Companion_ProvideStrictModeFactory(xs6Var);
    }

    public static StrictMode provideStrictMode(CameraPipe.Flags flags) {
        StrictMode strictModeProvideStrictMode = CameraPipeModule.Companion.provideStrictMode(flags);
        te6.b(strictModeProvideStrictMode);
        return strictModeProvideStrictMode;
    }

    @Override // defpackage.ws6
    public StrictMode get() {
        return provideStrictMode(this.flagsProvider.get());
    }
}
