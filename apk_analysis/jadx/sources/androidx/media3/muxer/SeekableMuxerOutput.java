package androidx.media3.muxer;

import java.io.FileOutputStream;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
public interface SeekableMuxerOutput extends WritableByteChannel {
    static SeekableMuxerOutput of(String str) {
        return new FileOutputStreamSeekableMuxerOutput(new FileOutputStream(str));
    }

    long getPosition();

    long getSize();

    void setPosition(long j);

    void truncate(long j);

    static SeekableMuxerOutput of(FileOutputStream fileOutputStream) {
        return new FileOutputStreamSeekableMuxerOutput(fileOutputStream);
    }
}
