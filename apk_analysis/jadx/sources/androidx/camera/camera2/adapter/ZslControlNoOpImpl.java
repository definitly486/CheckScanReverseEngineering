package androidx.camera.camera2.adapter;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;

/* JADX INFO: loaded from: classes.dex */
public final class ZslControlNoOpImpl implements ZslControl {
    @Override // androidx.camera.camera2.adapter.ZslControl
    public void addZslConfig(SessionConfig.Builder builder) {
        builder.getClass();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void clearZslConfig() {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public ImageProxy dequeueImageFromBuffer() {
        return null;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByFlashMode() {
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByUserCaseConfig() {
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        deferrableSurface.getClass();
        sessionConfig.getClass();
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByFlashMode(boolean z) {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean z) {
    }
}
