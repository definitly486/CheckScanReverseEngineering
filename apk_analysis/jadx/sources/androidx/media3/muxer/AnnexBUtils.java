package androidx.media3.muxer;

import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.common.collect.j;
import com.google.common.collect.w;
import defpackage.o8;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class AnnexBUtils {
    private static final int THREE_BYTE_NAL_START_CODE_SIZE = 3;

    private AnnexBUtils() {
    }

    public static boolean doesSampleContainAnnexBNalUnits(Format format) {
        String str = format.sampleMimeType;
        str.getClass();
        if (!str.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            return str.equals("video/avc") || str.equals(MimeTypes.VIDEO_H265);
        }
        Pair<Integer, Integer> dolbyVisionProfileAndLevel = Boxes.getDolbyVisionProfileAndLevel(format);
        dolbyVisionProfileAndLevel.getClass();
        return ((Integer) dolbyVisionProfileAndLevel.first).intValue() != 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004a, code lost:
    
        if (r2 == 1) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int findNalEndIndex(ByteBuffer byteBuffer, int i) {
        while (i <= byteBuffer.limit() - 4) {
            int i2 = byteBuffer.getInt(i);
            int i3 = i2 & (-256);
            if (i3 == 0 || i3 == 256) {
                return i;
            }
            int i4 = 16777215 & i2;
            if (i4 == 0 || i4 == 1) {
                return i + 1;
            }
            if ((65535 & i2) == 0) {
                i += 2;
            } else {
                i = (i2 & 255) == 0 ? i + 3 : i + 4;
            }
        }
        if (i == byteBuffer.limit() - 3) {
            short s = byteBuffer.getShort(i);
            byte b = byteBuffer.get(i + 2);
            if (s == 0) {
                if (b != 0) {
                }
                return i;
            }
        }
        return byteBuffer.limit();
    }

    public static j<ByteBuffer> findNalUnits(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() == 0) {
            j.b bVar = j.c;
            return w.f;
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        int iSkipLeadingZerosAndFindNalStartCodeIndex = skipLeadingZerosAndFindNalStartCodeIndex(byteBufferAsReadOnlyBuffer, byteBufferAsReadOnlyBuffer.position()) + 3;
        j.a aVar = new j.a();
        int i = iSkipLeadingZerosAndFindNalStartCodeIndex;
        boolean z = true;
        while (iSkipLeadingZerosAndFindNalStartCodeIndex < byteBufferAsReadOnlyBuffer.limit()) {
            if (!z) {
                int iSkipLeadingZerosAndFindNalStartCodeIndex2 = skipLeadingZerosAndFindNalStartCodeIndex(byteBufferAsReadOnlyBuffer, iSkipLeadingZerosAndFindNalStartCodeIndex);
                if (iSkipLeadingZerosAndFindNalStartCodeIndex2 == byteBufferAsReadOnlyBuffer.limit()) {
                    break;
                }
                i = iSkipLeadingZerosAndFindNalStartCodeIndex2 + 3;
                z = true;
                iSkipLeadingZerosAndFindNalStartCodeIndex = i;
            } else {
                iSkipLeadingZerosAndFindNalStartCodeIndex = findNalEndIndex(byteBufferAsReadOnlyBuffer, iSkipLeadingZerosAndFindNalStartCodeIndex);
                aVar.c(getBytes(byteBufferAsReadOnlyBuffer, i, iSkipLeadingZerosAndFindNalStartCodeIndex - i));
                z = false;
            }
        }
        return aVar.g();
    }

    private static ByteBuffer getBytes(ByteBuffer byteBuffer, int i, int i2) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(i + i2);
        return byteBufferDuplicate.slice();
    }

    private static int skipLeadingZerosAndFindNalStartCodeIndex(ByteBuffer byteBuffer, int i) {
        while (true) {
            boolean z = false;
            if (i > byteBuffer.limit() - 4) {
                if (i <= byteBuffer.limit() - 3) {
                    o8.s(byteBuffer.getShort(i) == 0, "Invalid NAL units");
                    byte b = byteBuffer.get(i + 2);
                    if (b == 1) {
                        break;
                    }
                    o8.s(b == 0, "Invalid NAL units");
                } else {
                    while (i < byteBuffer.limit()) {
                        o8.s(byteBuffer.get(i) == 0, "Invalid NAL units");
                        i++;
                    }
                }
                return byteBuffer.limit();
            }
            int i2 = byteBuffer.getInt(i);
            int i3 = i2 & (-256);
            if (i3 == 256) {
                break;
            }
            o8.s(i3 == 0, "Invalid Nal units");
            int i4 = i2 & 255;
            if (i4 == 1) {
                return i + 1;
            }
            if (i4 == 0) {
                z = true;
            }
            o8.s(z, "Invalid Nal units");
            i++;
        }
        return i;
    }

    public static ByteBuffer stripEmulationPrevention(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.limit());
        int i = 0;
        for (int i2 = 0; i2 < byteBuffer.limit(); i2++) {
            if (byteBuffer.get(i2) != 3 || i < 2) {
                byteBufferAllocate.put(byteBuffer.get(i2));
            }
            i = byteBuffer.get(i2) == 0 ? i + 1 : 0;
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }
}
