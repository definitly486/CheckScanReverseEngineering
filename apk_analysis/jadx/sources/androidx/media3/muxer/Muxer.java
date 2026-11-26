package androidx.media3.muxer;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import com.google.common.collect.j;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public interface Muxer extends AutoCloseable {

    public interface Factory {
        Muxer create(String str);

        j<String> getSupportedSampleMimeTypes(int i);

        default boolean supportsWritingNegativeTimestampsInEditList() {
            return false;
        }
    }

    void addMetadataEntry(Metadata.Entry entry);

    int addTrack(Format format);

    @Override // java.lang.AutoCloseable
    void close();

    void writeSampleData(int i, ByteBuffer byteBuffer, BufferInfo bufferInfo);
}
