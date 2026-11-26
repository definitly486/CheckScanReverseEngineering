package androidx.media3.muxer;

import android.util.Pair;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.media3.common.Format;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.common.collect.l;
import defpackage.o8;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class AacWriter {
    private static final int ADTS_HEADER_LENGTH = 7;
    private static final l<Integer, Integer> SAMPLE_RATE_TABLE_INDEX;
    private Format format;
    private final FileChannel outputFileChannel;
    private int profileCode;
    private int sampleFreqIndex;

    static {
        List listAsList = Arrays.asList(new AbstractMap.SimpleImmutableEntry(Integer.valueOf(DefaultEncoderProfilesProvider.DEFAULT_AUDIO_BITRATE), 0), new AbstractMap.SimpleImmutableEntry(88200, 1), new AbstractMap.SimpleImmutableEntry(64000, 2), new AbstractMap.SimpleImmutableEntry(Integer.valueOf(OpusUtil.SAMPLE_RATE), 3), new AbstractMap.SimpleImmutableEntry(44100, 4), new AbstractMap.SimpleImmutableEntry(32000, 5), new AbstractMap.SimpleImmutableEntry(24000, 6), new AbstractMap.SimpleImmutableEntry(22050, 7), new AbstractMap.SimpleImmutableEntry(Integer.valueOf(AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND), 8), new AbstractMap.SimpleImmutableEntry(12000, 9), new AbstractMap.SimpleImmutableEntry(11025, 10), new AbstractMap.SimpleImmutableEntry(8000, 11), new AbstractMap.SimpleImmutableEntry(7350, 12));
        l.a aVar = new l.a(listAsList instanceof Collection ? listAsList.size() : 4);
        aVar.c(listAsList);
        SAMPLE_RATE_TABLE_INDEX = aVar.a(true);
    }

    public AacWriter(FileOutputStream fileOutputStream) {
        this.outputFileChannel = fileOutputStream.getChannel();
    }

    private ByteBuffer createAdtsHeader(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(7);
        byteBufferAllocate.put((byte) -1);
        byteBufferAllocate.put((byte) -15);
        Format format = this.format;
        format.getClass();
        int i2 = format.channelCount;
        byteBufferAllocate.put((byte) ((this.sampleFreqIndex << 2) | (this.profileCode << 6) | (i2 >> 2)));
        byteBufferAllocate.put((byte) (((i2 & 3) << 6) | ((i & 6144) >> 11)));
        byteBufferAllocate.put((byte) ((i & 2040) >> 3));
        byteBufferAllocate.put((byte) (((i & 7) << 5) | 31));
        byteBufferAllocate.put((byte) -4);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public void setFormat(Format format) {
        int i = format.channelCount;
        o8.b(i, "Channel count must be between 1 and 7, got %s", i >= 1 && i <= 7);
        Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
        codecProfileAndLevel.getClass();
        this.profileCode = ((Integer) codecProfileAndLevel.first).intValue();
        Integer num = SAMPLE_RATE_TABLE_INDEX.get(Integer.valueOf(format.sampleRate));
        num.getClass();
        this.sampleFreqIndex = num.intValue();
        this.format = format;
    }

    public void writeSampleData(ByteBuffer byteBuffer, BufferInfo bufferInfo) throws IOException {
        this.outputFileChannel.write(createAdtsHeader(bufferInfo.size + 7));
        this.outputFileChannel.write(byteBuffer);
    }
}
