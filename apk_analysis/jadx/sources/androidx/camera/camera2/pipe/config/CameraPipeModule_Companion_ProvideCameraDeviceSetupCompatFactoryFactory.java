package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ProvideCameraDeviceSetupCompatFactoryFactory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;

    private CameraPipeModule_Companion_ProvideCameraDeviceSetupCompatFactoryFactory(xs6<Context> xs6Var) {
        this.cameraPipeContextProvider = xs6Var;
    }

    public static CameraPipeModule_Companion_ProvideCameraDeviceSetupCompatFactoryFactory create(xs6<Context> xs6Var) {
        return new CameraPipeModule_Companion_ProvideCameraDeviceSetupCompatFactoryFactory(xs6Var);
    }

    public static CameraDeviceSetupCompatFactory provideCameraDeviceSetupCompatFactory(Context context) {
        CameraDeviceSetupCompatFactory cameraDeviceSetupCompatFactoryProvideCameraDeviceSetupCompatFactory = CameraPipeModule.Companion.provideCameraDeviceSetupCompatFactory(context);
        te6.b(cameraDeviceSetupCompatFactoryProvideCameraDeviceSetupCompatFactory);
        return cameraDeviceSetupCompatFactoryProvideCameraDeviceSetupCompatFactory;
    }

    @Override // defpackage.ws6
    public CameraDeviceSetupCompatFactory get() {
        return provideCameraDeviceSetupCompatFactory(this.cameraPipeContextProvider.get());
    }
}
