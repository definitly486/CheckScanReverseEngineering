package androidx.camera.camera2.internal;

import androidx.camera.camera2.pipe.CameraDevices;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class IntrinsicZoomCalculatorImpl_Factory implements xs6 {
    private final xs6<CameraDevices> cameraDevicesProvider;

    private IntrinsicZoomCalculatorImpl_Factory(xs6<CameraDevices> xs6Var) {
        this.cameraDevicesProvider = xs6Var;
    }

    public static IntrinsicZoomCalculatorImpl_Factory create(xs6<CameraDevices> xs6Var) {
        return new IntrinsicZoomCalculatorImpl_Factory(xs6Var);
    }

    public static IntrinsicZoomCalculatorImpl newInstance(CameraDevices cameraDevices) {
        return new IntrinsicZoomCalculatorImpl(cameraDevices);
    }

    @Override // defpackage.ws6
    public IntrinsicZoomCalculatorImpl get() {
        return newInstance(this.cameraDevicesProvider.get());
    }
}
