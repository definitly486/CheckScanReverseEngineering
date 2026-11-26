package androidx.camera.core.imagecapture;

import android.util.Size;
import defpackage.l2;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_PostviewSettings extends PostviewSettings {
    private final int inputFormat;
    private final Size resolution;

    public AutoValue_PostviewSettings(Size size, int i) {
        if (size == null) {
            o2.d("Null resolution");
            throw null;
        }
        this.resolution = size;
        this.inputFormat = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PostviewSettings) {
            PostviewSettings postviewSettings = (PostviewSettings) obj;
            if (this.resolution.equals(postviewSettings.getResolution()) && this.inputFormat == postviewSettings.getInputFormat()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.PostviewSettings
    public int getInputFormat() {
        return this.inputFormat;
    }

    @Override // androidx.camera.core.imagecapture.PostviewSettings
    public Size getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        return this.inputFormat ^ ((this.resolution.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PostviewSettings{resolution=");
        sb.append(this.resolution);
        sb.append(", inputFormat=");
        return l2.e(sb, "}", this.inputFormat);
    }
}
