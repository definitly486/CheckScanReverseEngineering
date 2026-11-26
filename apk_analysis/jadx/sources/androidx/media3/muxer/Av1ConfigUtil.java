package androidx.media3.muxer;

import androidx.media3.container.ObuParser;
import androidx.tracing.Trace;
import defpackage.o8;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
final class Av1ConfigUtil {
    private static final int MAX_AV1_CONFIG_RECORD_SIZE_BYTES = 4;
    private static final int MAX_HEADER_AND_LENGTH_SIZE_BYTES = 9;
    private static final int MAX_LEB128_SIZE_BYTES = 8;
    private static final int OBU_HAS_SIZE_FIELD_BYTES = 2;

    private Av1ConfigUtil() {
    }

    public static byte[] createAv1CodecConfigurationRecord(ByteBuffer byteBuffer) {
        ArrayList arrayList = new ArrayList();
        ByteBuffer byteBufferConcatenateBuffers = null;
        ByteBuffer configFromSeqHeader = null;
        for (ObuParser.Obu obu : ObuParser.split(byteBuffer)) {
            int i = obu.type;
            if (i == 5) {
                arrayList.add(getConfigObuWithHeaderAndLength(obu));
            } else if (i == 1 && byteBufferConcatenateBuffers == null) {
                byteBufferConcatenateBuffers = getConfigObuWithHeaderAndLength(obu);
                configFromSeqHeader = parseConfigFromSeqHeader(obu);
            }
        }
        o8.l(byteBufferConcatenateBuffers, "No sequence header available.");
        ByteBuffer byteBufferConcatenateBuffers2 = BoxUtils.concatenateBuffers((ByteBuffer[]) arrayList.toArray(new ByteBuffer[0]));
        if (byteBufferConcatenateBuffers2 != null) {
            byteBufferConcatenateBuffers = BoxUtils.concatenateBuffers(byteBufferConcatenateBuffers, byteBufferConcatenateBuffers2);
        }
        o8.l(configFromSeqHeader, "csdHeader is null.");
        return BoxUtils.concatenateBuffers(configFromSeqHeader, byteBufferConcatenateBuffers).array();
    }

    private static ByteBuffer getConfigObuWithHeaderAndLength(ObuParser.Obu obu) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(obu.payload.remaining() + 9);
        byteBufferAllocate.put(obuHeader(obu.type));
        byteBufferAllocate.put(lebEncode(obu.payload.remaining()));
        byteBufferAllocate.put(obu.payload.duplicate());
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static ByteBuffer lebEncode(int i) {
        o8.e(i > 0);
        int iLebSizeInBytes = lebSizeInBytes(i);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iLebSizeInBytes);
        o8.r(iLebSizeInBytes < 8);
        for (int i2 = 0; i2 < iLebSizeInBytes; i2++) {
            int i3 = (byte) (i & Trace.MAX_TRACE_LABEL_LENGTH);
            i >>= 7;
            if (i != 0) {
                i3 |= 128;
            }
            byteBufferAllocate.put((byte) i3);
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static int lebSizeInBytes(int i) {
        int i2 = 0;
        do {
            i2++;
            i >>= 7;
        } while (i != 0);
        return i2;
    }

    private static byte obuHeader(int i) {
        return (byte) ((i << 3) | 2);
    }

    private static ByteBuffer parseConfigFromSeqHeader(ObuParser.Obu obu) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.put((byte) -127);
        ObuParser.SequenceHeader sequenceHeader = ObuParser.SequenceHeader.parse(obu);
        o8.l(sequenceHeader, "No sequence header available.");
        byteBufferAllocate.put((byte) ((sequenceHeader.seqProfile << 5) | sequenceHeader.seqLevelIdx0));
        byteBufferAllocate.put((byte) ((sequenceHeader.subsamplingY ? 4 : 0) | (sequenceHeader.seqTier0 > 0 ? 128 : 0) | (sequenceHeader.highBitdepth ? 64 : 0) | (sequenceHeader.twelveBit ? 32 : 0) | (sequenceHeader.monochrome ? 16 : 0) | (sequenceHeader.subsamplingX ? 8 : 0) | sequenceHeader.chromaSamplePosition));
        boolean z = sequenceHeader.initialDisplayDelayPresentFlag;
        byteBufferAllocate.put((byte) ((z ? 16 : 0) | (z ? sequenceHeader.initialDisplayDelayMinus1 & 15 : 0)));
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }
}
