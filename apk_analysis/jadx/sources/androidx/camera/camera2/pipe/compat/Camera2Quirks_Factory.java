package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.StrictMode;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Quirks_Factory implements xs6 {
    private final xs6<Camera2MetadataProvider> metadataProvider;
    private final xs6<StrictMode> strictModeProvider;

    private Camera2Quirks_Factory(xs6<Camera2MetadataProvider> xs6Var, xs6<StrictMode> xs6Var2) {
        this.metadataProvider = xs6Var;
        this.strictModeProvider = xs6Var2;
    }

    public static Camera2Quirks_Factory create(xs6<Camera2MetadataProvider> xs6Var, xs6<StrictMode> xs6Var2) {
        return new Camera2Quirks_Factory(xs6Var, xs6Var2);
    }

    public static Camera2Quirks newInstance(Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        return new Camera2Quirks(camera2MetadataProvider, strictMode);
    }

    @Override // defpackage.ws6
    public Camera2Quirks get() {
        return newInstance(this.metadataProvider.get(), this.strictModeProvider.get());
    }
}
