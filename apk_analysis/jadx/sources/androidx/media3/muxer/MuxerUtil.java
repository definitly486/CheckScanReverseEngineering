package androidx.media3.muxer;

import android.media.MediaCodec;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4OrientationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.XmpData;
import defpackage.ah;
import defpackage.jn;
import defpackage.n1;
import defpackage.o8;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class MuxerUtil {
    private static final short APP0_MARKER = -32;
    private static final short APP1_MARKER = -31;
    private static final short EOI_MARKER = -39;
    private static final String JPEG_XMP_IDENTIFIER = "http://ns.adobe.com/xap/1.0/\u0000";
    private static final int SEGMENT_MARKER_LENGTH = 2;
    private static final int SEGMENT_SIZE_LENGTH = 2;
    private static final short SOI_MARKER = -40;
    private static final short SOS_MARKER = -38;
    public static final long UNSIGNED_INT_MAX_VALUE = 4294967295L;

    private MuxerUtil() {
    }

    public static void createMotionPhotoFromJpegImageAndBmffVideo(FileInputStream fileInputStream, long j, FileInputStream fileInputStream2, String str, WritableByteChannel writableByteChannel) throws IOException {
        o8.f(str.equals(MimeTypes.VIDEO_MP4) || str.equals(MimeTypes.VIDEO_QUICK_TIME), "Only MP4 and QUICKTIME container mime types supported");
        FileChannel channel = fileInputStream.getChannel();
        MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
        FileChannel channel2 = fileInputStream2.getChannel();
        writeImageDataToOutput(map, j, MimeTypes.IMAGE_JPEG, channel2.size(), str, writableByteChannel);
        channel2.transferTo(0L, channel2.size(), writableByteChannel);
    }

    private static int findIndexForNewApp1Segment(ByteBuffer byteBuffer) {
        short s;
        byteBuffer.mark();
        o8.f(byteBuffer.getShort() == -40, "SOI marker not found");
        int iPosition = byteBuffer.position();
        while (byteBuffer.remaining() > 2 && (s = byteBuffer.getShort()) != -38 && s != -39) {
            int i = byteBuffer.getShort() - 2;
            if (s == -32 || s == -31) {
                iPosition = byteBuffer.position() + i;
            }
            byteBuffer.position(byteBuffer.position() + i);
        }
        byteBuffer.reset();
        return iPosition;
    }

    private static byte[] generateMotionPhotoXmp(long j, String str, String str2, long j2) {
        Locale locale = Locale.US;
        StringBuilder sbD = ah.d(j, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.1.0-jc003\">\n  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n    <rdf:Description rdf:about=\"\"\n        xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\"\n        xmlns:Container=\"http://ns.google.com/photos/1.0/container/\"\n        xmlns:Item=\"http://ns.google.com/photos/1.0/container/item/\"\n      GCamera:MotionPhoto=\"1\"\n      GCamera:MotionPhotoVersion=\"1\"\n      GCamera:MotionPhotoPresentationTimestampUs=\"", "\">\n        <Container:Directory>\n          <rdf:Seq>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\"", str);
        n1.d(sbD, "\"\n                Item:Semantic=\"Primary\"\n                Item:Length=\"0\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\"", str2, "\"\n                Item:Semantic=\"MotionPhoto\"\n                Item:Length=\"");
        sbD.append(j2);
        sbD.append("\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n          </rdf:Seq>\n        </Container:Directory>\n      </rdf:Description>\n    </rdf:RDF>\n  </x:xmpmeta>\n");
        return Util.getUtf8Bytes(sbD.toString());
    }

    private static ByteBuffer getApp1SegmentWithMotionPhotoXmpDate(byte[] bArr) {
        short length = (short) (31 + bArr.length);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(length + 2);
        byteBufferAllocateDirect.putShort((short) -31);
        byteBufferAllocateDirect.putShort(length);
        byteBufferAllocateDirect.put(Util.getUtf8Bytes(JPEG_XMP_IDENTIFIER));
        byteBufferAllocateDirect.put(bArr);
        byteBufferAllocateDirect.flip();
        return byteBufferAllocateDirect;
    }

    public static MdtaMetadataEntry getAuxiliaryTracksLengthMetadata(long j) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (255 & j);
            j >>= 8;
        }
        return new MdtaMetadataEntry(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_LENGTH, bArr, 78);
    }

    private static MdtaMetadataEntry getAuxiliaryTracksMapMetadata(List<Track> list) {
        int i;
        int size = list.size();
        byte[] bArr = new byte[size + 2];
        bArr[0] = 1;
        bArr[1] = (byte) size;
        for (int i2 = 0; i2 < size; i2++) {
            Track track = list.get(i2);
            int i3 = track.format.auxiliaryTrackType;
            if (i3 != 1) {
                i = 2;
                if (i3 == 2) {
                    i = 1;
                } else if (i3 == 3) {
                    continue;
                } else {
                    if (i3 != 4) {
                        jn.f(track.format.auxiliaryTrackType, "Unsupported auxiliary track type ");
                        return null;
                    }
                    i = 3;
                }
            } else {
                i = 0;
            }
            bArr[i2 + 2] = (byte) i;
        }
        return new MdtaMetadataEntry(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP, bArr, 0);
    }

    public static MdtaMetadataEntry getAuxiliaryTracksOffsetMetadata(long j) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (255 & j);
            j >>= 8;
        }
        return new MdtaMetadataEntry(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_OFFSET, bArr, 78);
    }

    private static MdtaMetadataEntry getAuxiliaryTracksSamplesLocationMetadata(boolean z) {
        return new MdtaMetadataEntry(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_INTERLEAVED, new byte[]{z ? (byte) 1 : (byte) 0}, 75);
    }

    public static BufferInfo getMuxerBufferInfoFromMediaCodecBufferInfo(MediaCodec.BufferInfo bufferInfo) {
        bufferInfo.getClass();
        return new BufferInfo(bufferInfo.presentationTimeUs, bufferInfo.size, Util.getBufferFlagsFromMediaCodecFlags(bufferInfo.flags));
    }

    public static boolean isAuxiliaryTrack(Format format) {
        if ((format.roleFlags & 32768) <= 0) {
            return false;
        }
        int i = format.auxiliaryTrackType;
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    private static boolean isMdtaMetadataEntrySupported(MdtaMetadataEntry mdtaMetadataEntry) {
        int i = mdtaMetadataEntry.typeIndicator;
        return i == 1 || i == 23;
    }

    public static boolean isMetadataSupported(Metadata.Entry entry) {
        if ((entry instanceof Mp4OrientationData) || (entry instanceof Mp4LocationData)) {
            return true;
        }
        if ((entry instanceof Mp4TimestampData) && isMp4TimestampDataSupported((Mp4TimestampData) entry)) {
            return true;
        }
        return ((entry instanceof MdtaMetadataEntry) && isMdtaMetadataEntrySupported((MdtaMetadataEntry) entry)) || (entry instanceof XmpData);
    }

    private static boolean isMp4TimestampDataSupported(Mp4TimestampData mp4TimestampData) {
        return mp4TimestampData.creationTimestampSeconds <= UNSIGNED_INT_MAX_VALUE && mp4TimestampData.modificationTimestampSeconds <= UNSIGNED_INT_MAX_VALUE;
    }

    public static void populateAuxiliaryTracksMetadata(MetadataCollector metadataCollector, Mp4TimestampData mp4TimestampData, boolean z, List<Track> list) {
        metadataCollector.addMetadata(mp4TimestampData);
        metadataCollector.addMetadata(getAuxiliaryTracksSamplesLocationMetadata(z));
        metadataCollector.addMetadata(getAuxiliaryTracksMapMetadata(list));
    }

    private static void writeImageDataToOutput(ByteBuffer byteBuffer, long j, String str, long j2, String str2, WritableByteChannel writableByteChannel) throws IOException {
        int iFindIndexForNewApp1Segment = findIndexForNewApp1Segment(byteBuffer);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(iFindIndexForNewApp1Segment);
        writableByteChannel.write(byteBuffer);
        byteBuffer.position(iPosition);
        byteBuffer.limit(iLimit);
        writableByteChannel.write(getApp1SegmentWithMotionPhotoXmpDate(generateMotionPhotoXmp(j, str, str2, j2)));
        byteBuffer.position(iFindIndexForNewApp1Segment);
        writableByteChannel.write(byteBuffer);
    }
}
