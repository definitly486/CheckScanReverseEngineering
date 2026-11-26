package androidx.camera.camera2.impl;

/* JADX INFO: loaded from: classes.dex */
public interface UseCaseCameraControl {
    UseCaseCameraRequestControl getRequestControl();

    void reset();

    void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl);
}
