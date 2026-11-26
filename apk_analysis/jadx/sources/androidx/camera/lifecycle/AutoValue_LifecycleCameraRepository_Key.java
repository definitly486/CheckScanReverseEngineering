package androidx.camera.lifecycle;

import androidx.camera.core.CameraIdentifier;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_LifecycleCameraRepository_Key extends LifecycleCameraRepository.Key {
    private final CameraIdentifier cameraIdentifier;
    private final int lifecycleOwnerHash;

    public AutoValue_LifecycleCameraRepository_Key(int i, CameraIdentifier cameraIdentifier) {
        this.lifecycleOwnerHash = i;
        if (cameraIdentifier != null) {
            this.cameraIdentifier = cameraIdentifier;
        } else {
            o2.d("Null cameraIdentifier");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LifecycleCameraRepository.Key) {
            LifecycleCameraRepository.Key key = (LifecycleCameraRepository.Key) obj;
            if (this.lifecycleOwnerHash == key.getLifecycleOwnerHash() && this.cameraIdentifier.equals(key.getCameraIdentifier())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.Key
    public CameraIdentifier getCameraIdentifier() {
        return this.cameraIdentifier;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.Key
    public int getLifecycleOwnerHash() {
        return this.lifecycleOwnerHash;
    }

    public int hashCode() {
        return this.cameraIdentifier.hashCode() ^ ((this.lifecycleOwnerHash ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Key{lifecycleOwnerHash=" + this.lifecycleOwnerHash + ", cameraIdentifier=" + this.cameraIdentifier + "}";
    }
}
