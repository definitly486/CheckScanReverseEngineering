package androidx.media3.container;

import androidx.media3.common.util.ParsableBitArray;
import defpackage.o8;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ObuParser {
    public static final int OBU_FRAME = 6;
    public static final int OBU_FRAME_HEADER = 3;
    public static final int OBU_METADATA = 5;
    public static final int OBU_PADDING = 15;
    public static final int OBU_SEQUENCE_HEADER = 1;
    public static final int OBU_TEMPORAL_DELIMITER = 2;

    public static final class FrameHeader {
        private static final int FRAME_TYPE_INTRA_ONLY_FRAME = 2;
        private static final int FRAME_TYPE_KEY_FRAME = 0;
        private static final int FRAME_TYPE_SWITCH_FRAME = 3;
        private static final int PROBE_BYTES = 4;
        private final boolean isDependedOn;

        private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            int i = obu.type;
            o8.e(i == 6 || i == 3);
            byte[] bArr = new byte[Math.min(4, obu.payload.remaining())];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            ObuParser.throwWhenFeatureRequired(sequenceHeader.reducedStillPictureHeader);
            if (parsableBitArray.readBit()) {
                this.isDependedOn = false;
                return;
            }
            int bits = parsableBitArray.readBits(2);
            boolean bit = parsableBitArray.readBit();
            ObuParser.throwWhenFeatureRequired(sequenceHeader.decoderModelInfoPresentFlag);
            if (!bit) {
                this.isDependedOn = true;
                return;
            }
            boolean bit2 = (bits == 3 || bits == 0) ? true : parsableBitArray.readBit();
            parsableBitArray.skipBit();
            ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceScreenContentTools);
            if (parsableBitArray.readBit()) {
                ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceIntegerMv);
                parsableBitArray.skipBit();
            }
            ObuParser.throwWhenFeatureRequired(sequenceHeader.frameIdNumbersPresentFlag);
            if (bits != 3) {
                parsableBitArray.skipBit();
            }
            parsableBitArray.skipBits(sequenceHeader.orderHintBits);
            if (bits != 2 && bits != 0 && !bit2) {
                parsableBitArray.skipBits(3);
            }
            this.isDependedOn = ((bits == 3 || bits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
        }

        public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
            try {
                return new FrameHeader(sequenceHeader, obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public boolean isDependedOn() {
            return this.isDependedOn;
        }
    }

    public static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    public static final class Obu {
        public final ByteBuffer payload;
        public final int type;

        private Obu(int i, ByteBuffer byteBuffer) {
            this.type = i;
            this.payload = byteBuffer;
        }
    }

    public static final class SequenceHeader {
        public final int chromaSamplePosition;
        public final byte colorPrimaries;
        public final boolean decoderModelInfoPresentFlag;
        public final boolean frameIdNumbersPresentFlag;
        public final boolean highBitdepth;
        public final int initialDisplayDelayMinus1;
        public final boolean initialDisplayDelayPresentFlag;
        public final byte matrixCoefficients;
        public final boolean monochrome;
        public final int orderHintBits;
        public final boolean reducedStillPictureHeader;
        public final boolean seqForceIntegerMv;
        public final boolean seqForceScreenContentTools;
        public final int seqLevelIdx0;
        public final int seqProfile;
        public final int seqTier0;
        public final boolean subsamplingX;
        public final boolean subsamplingY;
        public final byte transferCharacteristics;
        public final boolean twelveBit;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v4, types: [int] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6 */
        private SequenceHeader(Obu obu) {
            int bits;
            int bits2;
            boolean bit;
            ?? r8;
            boolean bit2;
            boolean bit3;
            boolean bit4;
            boolean bit5;
            byte bits3;
            byte bits4;
            byte bits5;
            boolean bit6;
            boolean bit7 = true;
            o8.e(obu.type == 1);
            byte[] bArr = new byte[obu.payload.remaining()];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            this.seqProfile = parsableBitArray.readBits(3);
            parsableBitArray.skipBit();
            boolean bit8 = parsableBitArray.readBit();
            this.reducedStillPictureHeader = bit8;
            if (bit8) {
                bits2 = parsableBitArray.readBits(5);
                this.decoderModelInfoPresentFlag = false;
                this.initialDisplayDelayPresentFlag = false;
                r8 = 0;
                bits = 0;
            } else {
                if (parsableBitArray.readBit()) {
                    skipTimingInfo(parsableBitArray);
                    boolean bit9 = parsableBitArray.readBit();
                    this.decoderModelInfoPresentFlag = bit9;
                    if (bit9) {
                        parsableBitArray.skipBits(47);
                    }
                } else {
                    this.decoderModelInfoPresentFlag = false;
                }
                this.initialDisplayDelayPresentFlag = parsableBitArray.readBit();
                int bits6 = parsableBitArray.readBits(5);
                int bits7 = 0;
                int i = 0;
                boolean z = false;
                bits = 0;
                while (i <= bits6) {
                    parsableBitArray.skipBits(12);
                    if (i == 0) {
                        bits7 = parsableBitArray.readBits(5);
                        bit = z;
                        if (bits7 > 7) {
                            bit = parsableBitArray.readBit();
                        }
                    } else {
                        bit = z;
                        if (parsableBitArray.readBits(5) > 7) {
                            parsableBitArray.skipBit();
                            bit = z;
                        }
                    }
                    if (this.decoderModelInfoPresentFlag) {
                        parsableBitArray.skipBit();
                    }
                    if (this.initialDisplayDelayPresentFlag && parsableBitArray.readBit()) {
                        if (i == 0) {
                            bits = parsableBitArray.readBits(4);
                        } else {
                            parsableBitArray.skipBits(4);
                        }
                    }
                    i++;
                    z = bit;
                }
                bits2 = bits7;
                r8 = z;
            }
            int bits8 = parsableBitArray.readBits(4);
            int bits9 = parsableBitArray.readBits(4);
            parsableBitArray.skipBits(bits8 + 1);
            parsableBitArray.skipBits(bits9 + 1);
            if (this.reducedStillPictureHeader) {
                this.frameIdNumbersPresentFlag = false;
                bit2 = false;
            } else {
                bit2 = parsableBitArray.readBit();
                this.frameIdNumbersPresentFlag = bit2;
            }
            if (bit2) {
                parsableBitArray.skipBits(4);
                parsableBitArray.skipBits(3);
            }
            parsableBitArray.skipBits(3);
            if (this.reducedStillPictureHeader) {
                this.seqForceIntegerMv = true;
                this.seqForceScreenContentTools = true;
                this.orderHintBits = 0;
            } else {
                parsableBitArray.skipBits(4);
                boolean bit10 = parsableBitArray.readBit();
                if (bit10) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    this.seqForceScreenContentTools = true;
                    bit3 = true;
                } else {
                    bit3 = parsableBitArray.readBit();
                    this.seqForceScreenContentTools = bit3;
                }
                if (!bit3 || parsableBitArray.readBit()) {
                    this.seqForceIntegerMv = true;
                } else {
                    this.seqForceIntegerMv = parsableBitArray.readBit();
                }
                if (bit10) {
                    this.orderHintBits = parsableBitArray.readBits(3) + 1;
                } else {
                    this.orderHintBits = 0;
                }
            }
            this.seqLevelIdx0 = bits2;
            this.seqTier0 = r8;
            this.initialDisplayDelayMinus1 = bits;
            parsableBitArray.skipBits(3);
            boolean bit11 = parsableBitArray.readBit();
            this.highBitdepth = bit11;
            if (this.seqProfile == 2 && bit11) {
                bit4 = parsableBitArray.readBit();
                this.twelveBit = bit4;
            } else {
                this.twelveBit = false;
                bit4 = false;
            }
            if (this.seqProfile != 1) {
                bit5 = parsableBitArray.readBit();
                this.monochrome = bit5;
            } else {
                this.monochrome = false;
                bit5 = false;
            }
            if (parsableBitArray.readBit()) {
                bits4 = (byte) parsableBitArray.readBits(8);
                this.colorPrimaries = bits4;
                bits5 = (byte) parsableBitArray.readBits(8);
                this.transferCharacteristics = bits5;
                bits3 = (byte) parsableBitArray.readBits(8);
                this.matrixCoefficients = bits3;
            } else {
                this.colorPrimaries = (byte) 0;
                this.transferCharacteristics = (byte) 0;
                this.matrixCoefficients = (byte) 0;
                bits3 = 0;
                bits4 = 0;
                bits5 = 0;
            }
            if (bit5) {
                parsableBitArray.skipBit();
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else if (bits4 == 1 && bits5 == 13 && bits3 == 0) {
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else {
                parsableBitArray.skipBit();
                int i2 = this.seqProfile;
                if (i2 == 0) {
                    this.subsamplingX = true;
                    this.subsamplingY = true;
                    bit6 = true;
                } else if (i2 == 1) {
                    this.subsamplingX = false;
                    this.subsamplingY = false;
                    bit6 = false;
                    bit7 = false;
                } else {
                    if (bit4) {
                        bit7 = parsableBitArray.readBit();
                        this.subsamplingX = bit7;
                        if (bit7) {
                            bit6 = parsableBitArray.readBit();
                            this.subsamplingY = bit6;
                        } else {
                            this.subsamplingY = false;
                        }
                    } else {
                        this.subsamplingX = true;
                        this.subsamplingY = false;
                    }
                    bit6 = false;
                }
                if (bit7 && bit6) {
                    this.chromaSamplePosition = parsableBitArray.readBits(2);
                } else {
                    this.chromaSamplePosition = 0;
                }
            }
            parsableBitArray.skipBit();
        }

        public static SequenceHeader parse(Obu obu) {
            try {
                return new SequenceHeader(obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private static void skipTimingInfo(ParsableBitArray parsableBitArray) {
            parsableBitArray.skipBits(64);
            if (parsableBitArray.readBit()) {
                ObuParser.skipUvlc(parsableBitArray);
            }
        }
    }

    private ObuParser() {
    }

    private static int leb128(ByteBuffer byteBuffer) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            byte b = byteBuffer.get();
            i |= (b & 127) << (i2 * 7);
            if ((b & 128) == 0) {
                return i;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void skipUvlc(ParsableBitArray parsableBitArray) {
        int i = 0;
        while (!parsableBitArray.readBit()) {
            i++;
        }
        if (i < 32) {
            parsableBitArray.skipBits(i);
        }
    }

    public static List<Obu> split(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            try {
                byte b = byteBufferAsReadOnlyBuffer.get();
                int i = (b >> 3) & 15;
                if (((b >> 2) & 1) != 0) {
                    byteBufferAsReadOnlyBuffer.get();
                }
                int iLeb128 = ((b >> 1) & 1) != 0 ? leb128(byteBufferAsReadOnlyBuffer) : byteBufferAsReadOnlyBuffer.remaining();
                if (byteBufferAsReadOnlyBuffer.position() + iLeb128 > byteBufferAsReadOnlyBuffer.limit()) {
                    break;
                }
                ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
                byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iLeb128);
                arrayList.add(new Obu(i, byteBufferDuplicate));
                byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iLeb128);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void throwWhenFeatureRequired(boolean z) throws NotYetImplementedException {
        if (z) {
            throw new NotYetImplementedException();
        }
    }
}
