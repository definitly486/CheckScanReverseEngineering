package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageProxy;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DngImage2Disk_In extends DngImage2Disk.In {
    private final ImageProxy imageProxy;
    private final ImageCapture.OutputFileOptions outputFileOptions;
    private final int rotationDegrees;

    public AutoValue_DngImage2Disk_In(ImageProxy imageProxy, int i, ImageCapture.OutputFileOptions outputFileOptions) {
        if (imageProxy == null) {
            o2.d("Null imageProxy");
            throw null;
        }
        this.imageProxy = imageProxy;
        this.rotationDegrees = i;
        if (outputFileOptions != null) {
            this.outputFileOptions = outputFileOptions;
        } else {
            o2.d("Null outputFileOptions");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DngImage2Disk.In) {
            DngImage2Disk.In in = (DngImage2Disk.In) obj;
            if (this.imageProxy.equals(in.getImageProxy()) && this.rotationDegrees == in.getRotationDegrees() && this.outputFileOptions.equals(in.getOutputFileOptions())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.DngImage2Disk.In
    public ImageProxy getImageProxy() {
        return this.imageProxy;
    }

    @Override // androidx.camera.core.imagecapture.DngImage2Disk.In
    public ImageCapture.OutputFileOptions getOutputFileOptions() {
        return this.outputFileOptions;
    }

    @Override // androidx.camera.core.imagecapture.DngImage2Disk.In
    public int getRotationDegrees() {
        return this.rotationDegrees;
    }

    public int hashCode() {
        return this.outputFileOptions.hashCode() ^ ((((this.imageProxy.hashCode() ^ 1000003) * 1000003) ^ this.rotationDegrees) * 1000003);
    }

    public String toString() {
        return "In{imageProxy=" + this.imageProxy + ", rotationDegrees=" + this.rotationDegrees + ", outputFileOptions=" + this.outputFileOptions + "}";
    }
}
