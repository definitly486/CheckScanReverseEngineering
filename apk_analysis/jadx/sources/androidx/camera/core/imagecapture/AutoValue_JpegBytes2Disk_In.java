package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.Packet;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_JpegBytes2Disk_In extends JpegBytes2Disk.In {
    private final ImageCapture.OutputFileOptions outputFileOptions;
    private final Packet<byte[]> packet;

    public AutoValue_JpegBytes2Disk_In(Packet<byte[]> packet, ImageCapture.OutputFileOptions outputFileOptions) {
        if (packet == null) {
            o2.d("Null packet");
            throw null;
        }
        this.packet = packet;
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
        if (obj instanceof JpegBytes2Disk.In) {
            JpegBytes2Disk.In in = (JpegBytes2Disk.In) obj;
            if (this.packet.equals(in.getPacket()) && this.outputFileOptions.equals(in.getOutputFileOptions())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    public ImageCapture.OutputFileOptions getOutputFileOptions() {
        return this.outputFileOptions;
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    public Packet<byte[]> getPacket() {
        return this.packet;
    }

    public int hashCode() {
        return this.outputFileOptions.hashCode() ^ ((this.packet.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "In{packet=" + this.packet + ", outputFileOptions=" + this.outputFileOptions + "}";
    }
}
