package androidx.camera.video.internal.audio;

import defpackage.k2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioStream_PacketInfo extends AudioStream.PacketInfo {
    private final int sizeInBytes;
    private final long timestampNs;

    public AutoValue_AudioStream_PacketInfo(int i, long j) {
        this.sizeInBytes = i;
        this.timestampNs = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioStream.PacketInfo) {
            AudioStream.PacketInfo packetInfo = (AudioStream.PacketInfo) obj;
            if (this.sizeInBytes == packetInfo.getSizeInBytes() && this.timestampNs == packetInfo.getTimestampNs()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream.PacketInfo
    public int getSizeInBytes() {
        return this.sizeInBytes;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream.PacketInfo
    public long getTimestampNs() {
        return this.timestampNs;
    }

    public int hashCode() {
        int i = (this.sizeInBytes ^ 1000003) * 1000003;
        long j = this.timestampNs;
        return ((int) (j ^ (j >>> 32))) ^ i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PacketInfo{sizeInBytes=");
        sb.append(this.sizeInBytes);
        sb.append(", timestampNs=");
        return k2.b(this.timestampNs, "}", sb);
    }
}
