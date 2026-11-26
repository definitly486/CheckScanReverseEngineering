package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraPipe;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideContextFactory implements xs6 {
    private final xs6<CameraPipe.Config> configProvider;

    private CameraPipeModule_Companion_ProvideContextFactory(xs6<CameraPipe.Config> xs6Var) {
        this.configProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideContextFactory create(xs6<CameraPipe.Config> xs6Var) {
        return new CameraPipeModule_Companion_ProvideContextFactory(xs6Var);
    }

    public static Context provideContext(CameraPipe.Config config) {
        Context contextProvideContext = CameraPipeModule.Companion.provideContext(config);
        te6.b(contextProvideContext);
        return contextProvideContext;
    }

    @Override // defpackage.ws6
    public Context get() {
        return provideContext(this.configProvider.get());
    }
}
