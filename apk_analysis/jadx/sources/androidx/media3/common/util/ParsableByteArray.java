package androidx.media3.common.util;

import com.google.common.collect.n;
import defpackage.ag;
import defpackage.ah;
import defpackage.bj;
import defpackage.fa4;
import defpackage.i79;
import defpackage.jh;
import defpackage.n7;
import defpackage.o8;
import defpackage.r01;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class ParsableByteArray {
    public static final int INVALID_CODE_POINT = 1114112;
    private byte[] data;
    private int limit;
    private int position;
    private static final char[] CR_AND_LF = {'\r', '\n'};
    private static final char[] LF = {'\n'};
    private static final n<Charset> SUPPORTED_CHARSETS_FOR_READLINE = n.m(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    private static final AtomicBoolean shouldEnforceLimitOnLegacyMethods = new AtomicBoolean();

    public ParsableByteArray(int i) {
        this.data = new byte[i];
        this.limit = i;
    }

    private static int decodeUtf8CodeUnit(int i, int i2, int i3, int i4) {
        byte b = (byte) i3;
        return fa4.X((byte) 0, i79.a(((i & 7) << 2) | ((i2 & 48) >> 4)), i79.a(((((byte) i2) & 15) << 4) | ((b & 60) >> 2)), i79.a(((b & 3) << 6) | (((byte) i4) & 63)));
    }

    /* JADX WARN: Code duplicated, block: B:37:0x007a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0093 A[SYNTHETIC] */
    private int findNextLineTerminator(Charset charset) {
        int i;
        byte[] bArr;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            i = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                r01.e(charset, "Unsupported charset: ");
                return 0;
            }
            i = 2;
        }
        int i2 = this.position;
        while (true) {
            int i3 = this.limit;
            if (i2 >= i3 - (i - 1)) {
                return i3;
            }
            if ((!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) || !Util.isLinebreak(this.data[i2])) {
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr2 = this.data;
                    if (bArr2[i2] != 0 || !Util.isLinebreak(bArr2[i2 + 1])) {
                        if (charset.equals(StandardCharsets.UTF_16LE)) {
                            bArr = this.data;
                            if (bArr[i2 + 1] != 0 || !Util.isLinebreak(bArr[i2])) {
                            }
                        }
                        i2 += i;
                    }
                } else {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        bArr = this.data;
                        if (bArr[i2 + 1] != 0) {
                            continue;
                        }
                    }
                    i2 += i;
                }
            }
            return i2;
        }
    }

    private static int getSmallestCodeUnitSize(Charset charset) {
        o8.h(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    private static boolean isUtf8ContinuationByte(byte b) {
        return (b & 192) == 128;
    }

    private void maybeAssertAtLeastBytesLeftForLegacyMethod(int i) {
        if (!shouldEnforceLimitOnLegacyMethods.get() || bytesLeft() >= i) {
            return;
        }
        bj.d(bytesLeft(), n7.c(i, "bytesNeeded= ", ", bytesLeft="));
    }

    private int peekCodePointAndSize(Charset charset) {
        int codePoint;
        o8.h(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() < getSmallestCodeUnitSize(charset)) {
            ag.f(", limit=", this.position, this.limit, "position=");
            return 0;
        }
        byte b = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b2 = this.data[this.position];
            if ((b2 & 128) == 0) {
                codePoint = Byte.toUnsignedInt(b2);
                return (codePoint << 8) | b;
            }
            return 0;
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            byte bPeekUtf8CodeUnitSize = peekUtf8CodeUnitSize();
            if (bPeekUtf8CodeUnitSize == 1) {
                codePoint = Byte.toUnsignedInt(this.data[this.position]);
            } else if (bPeekUtf8CodeUnitSize == 2) {
                byte[] bArr = this.data;
                int i = this.position;
                codePoint = decodeUtf8CodeUnit(0, 0, bArr[i], bArr[i + 1]);
            } else {
                if (bPeekUtf8CodeUnitSize != 3) {
                    if (bPeekUtf8CodeUnitSize == 4) {
                        byte[] bArr2 = this.data;
                        int i2 = this.position;
                        codePoint = decodeUtf8CodeUnit(bArr2[i2], bArr2[i2 + 1], bArr2[i2 + 2], bArr2[i2 + 3]);
                    }
                    return 0;
                }
                byte[] bArr3 = this.data;
                int i3 = this.position;
                codePoint = decodeUtf8CodeUnit(0, bArr3[i3] & 15, bArr3[i3 + 1], bArr3[i3 + 2]);
            }
            b = bPeekUtf8CodeUnitSize;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char cPeekChar = peekChar(byteOrder, 0);
            if (!Character.isHighSurrogate(cPeekChar) || bytesLeft() < 4) {
                codePoint = cPeekChar;
                b = 2;
            } else {
                codePoint = Character.toCodePoint(cPeekChar, peekChar(byteOrder, 2));
                b = 4;
            }
        }
        return (codePoint << 8) | b;
    }

    private byte peekUtf8CodeUnitSize() {
        byte b = this.data[this.position];
        if ((b & 128) == 0) {
            return (byte) 1;
        }
        if ((b & 224) == 192 && bytesLeft() >= 2 && isUtf8ContinuationByte(this.data[this.position + 1])) {
            return (byte) 2;
        }
        if ((this.data[this.position] & 240) == 224 && bytesLeft() >= 3 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2])) {
            return (byte) 3;
        }
        return ((this.data[this.position] & 248) == 240 && bytesLeft() >= 4 && isUtf8ContinuationByte(this.data[this.position + 1]) && isUtf8ContinuationByte(this.data[this.position + 2]) && isUtf8ContinuationByte(this.data[this.position + 3])) ? (byte) 4 : (byte) 0;
    }

    private char readCharacterIfInList(Charset charset, char[] cArr) {
        int iPeekCodePointAndSize;
        if (bytesLeft() < getSmallestCodeUnitSize(charset) || (iPeekCodePointAndSize = peekCodePointAndSize(charset)) == 0) {
            return (char) 0;
        }
        long j = iPeekCodePointAndSize >>> 8;
        o8.c(j, (j >> 32) == 0, "out of range: %s");
        int i = (int) j;
        if (Character.isSupplementaryCodePoint(i)) {
            return (char) 0;
        }
        long j2 = i;
        char c = (char) j2;
        o8.c(j2, ((long) c) == j2, "Out of range: %s");
        for (char c2 : cArr) {
            if (c2 == c) {
                this.position = fa4.V(iPeekCodePointAndSize & 255) + this.position;
                return c;
            }
        }
        return (char) 0;
    }

    public static void setShouldEnforceLimitOnLegacyMethods(boolean z) {
        shouldEnforceLimitOnLegacyMethods.set(z);
    }

    private void skipLineTerminator(Charset charset) {
        if (readCharacterIfInList(charset, CR_AND_LF) == '\r') {
            readCharacterIfInList(charset, LF);
        }
    }

    public int bytesLeft() {
        return Math.max(this.limit - this.position, 0);
    }

    public int capacity() {
        return this.data.length;
    }

    public void ensureCapacity(int i) {
        if (i > capacity()) {
            this.data = Arrays.copyOf(this.data, i);
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    @Deprecated
    public char peekChar(Charset charset) {
        int iPeekUnsignedByte;
        o8.h(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() != 0) {
            if (charset.equals(StandardCharsets.US_ASCII)) {
                iPeekUnsignedByte = peekUnsignedByte();
            } else if (charset.equals(StandardCharsets.UTF_8)) {
                if ((this.data[this.position] & 128) == 0) {
                    iPeekUnsignedByte = peekUnsignedByte();
                }
            } else if (bytesLeft() >= 2) {
                return peekChar(charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN, 0);
            }
            return (char) iPeekUnsignedByte;
        }
        return (char) 0;
    }

    public int peekCodePoint(Charset charset) {
        int iPeekCodePointAndSize = peekCodePointAndSize(charset);
        return iPeekCodePointAndSize != 0 ? fa4.V(iPeekCodePointAndSize >>> 8) : INVALID_CODE_POINT;
    }

    public int peekInt() {
        if (bytesLeft() < 4) {
            ag.f(", limit=", this.position, this.limit, "position=");
            return 0;
        }
        int i = readInt();
        this.position -= 4;
        return i;
    }

    public int peekUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        return this.data[this.position] & 255;
    }

    public int peekUnsignedInt24() {
        if (bytesLeft() < 3) {
            ag.f(", limit=", this.position, this.limit, "position=");
            return 0;
        }
        int unsignedInt24 = readUnsignedInt24();
        this.position -= 3;
        return unsignedInt24;
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i2);
        System.arraycopy(this.data, this.position, bArr, i, i2);
        this.position += i2;
    }

    public String readDelimiterTerminatedString(char c) {
        if (bytesLeft() == 0) {
            return null;
        }
        int i = this.position;
        while (i < this.limit && this.data[i] != c) {
            i++;
        }
        byte[] bArr = this.data;
        int i2 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr, i2, i - i2);
        this.position = i;
        if (i < this.limit) {
            this.position = i + 1;
        }
        return strFromUtf8Bytes;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 16) | i3;
        int i6 = i + 3;
        this.position = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.position = i + 4;
        return (bArr[i6] & 255) | i7;
    }

    public int readInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = ((bArr[i] & 255) << 24) >> 8;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.position = i + 3;
        return (bArr[i4] & 255) | i5;
    }

    public String readLine(Charset charset) {
        o8.h(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: %s", charset);
        if (bytesLeft() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            readUtfCharsetFromBom();
        }
        String string = readString(findNextLineTerminator(charset) - this.position, charset);
        if (this.position == this.limit) {
            return string;
        }
        skipLineTerminator(charset);
        return string;
    }

    public int readLittleEndianInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        int i6 = i + 3;
        this.position = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.position = i + 4;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public int readLittleEndianInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.position = i + 3;
        return ((bArr[i4] & 255) << 16) | i5;
    }

    public long readLittleEndianLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i + 2;
        this.position = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i + 3;
        this.position = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        int i5 = i + 4;
        this.position = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 24);
        int i6 = i + 5;
        this.position = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i7 = i + 6;
        this.position = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 40);
        int i8 = i + 7;
        this.position = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 48);
        this.position = i + 8;
        return ((((long) bArr[i8]) & 255) << 56) | j7;
    }

    public short readLittleEndianShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        this.position = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public long readLittleEndianUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i + 2;
        this.position = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i + 3;
        this.position = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        this.position = i + 4;
        return ((((long) bArr[i4]) & 255) << 24) | j3;
    }

    public int readLittleEndianUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.position = i + 3;
        return ((bArr[i4] & 255) << 16) | i5;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int littleEndianInt = readLittleEndianInt();
        if (littleEndianInt >= 0) {
            return littleEndianInt;
        }
        ah.f(jh.b(littleEndianInt, "Top bit not zero: "));
        return 0;
    }

    public int readLittleEndianUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        this.position = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public long readLong() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(8);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = (((long) bArr[i]) & 255) << 56;
        int i3 = i + 2;
        this.position = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 48);
        int i4 = i + 3;
        this.position = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 40);
        int i5 = i + 4;
        this.position = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 32);
        int i6 = i + 5;
        this.position = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 24);
        int i7 = i + 6;
        this.position = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 16);
        int i8 = i + 7;
        this.position = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 8);
        this.position = i + 8;
        return (((long) bArr[i8]) & 255) | j7;
    }

    public String readNullTerminatedString(int i) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i);
        if (i == 0) {
            return "";
        }
        int i2 = this.position;
        int i3 = (i2 + i) - 1;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(this.data, i2, (i3 >= this.limit || this.data[i3] != 0) ? i : i - 1);
        this.position += i;
        return strFromUtf8Bytes;
    }

    public short readShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.position = i + 2;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public String readString(int i, Charset charset) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i);
        String str = new String(this.data, this.position, i, charset);
        this.position += i;
        return str;
    }

    public int readSynchSafeInt() {
        return readUnsignedByte() | (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7);
    }

    public int readUnsignedByte() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.position = i + 2;
        int i4 = (bArr[i2] & 255) | i3;
        this.position = i + 4;
        return i4;
    }

    public long readUnsignedInt() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(4);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        long j = (((long) bArr[i]) & 255) << 24;
        int i3 = i + 2;
        this.position = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 16);
        int i4 = i + 3;
        this.position = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        this.position = i + 4;
        return (((long) bArr[i4]) & 255) | j3;
    }

    public int readUnsignedInt24() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(3);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i + 2;
        this.position = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.position = i + 3;
        return (bArr[i4] & 255) | i5;
    }

    public int readUnsignedIntToInt() {
        int i = readInt();
        if (i >= 0) {
            return i;
        }
        ah.f(jh.b(i, "Top bit not zero: "));
        return 0;
    }

    public int readUnsignedLeb128ToInt() {
        return fa4.V(readUnsignedLeb128ToLong());
    }

    public long readUnsignedLeb128ToLong() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.position == this.limit) {
                ah.f("Attempting to read a byte over the limit.");
                return 0L;
            }
            long unsignedByte = readUnsignedByte();
            j |= (127 & unsignedByte) << (i * 7);
            if ((unsignedByte & 128) == 0) {
                return j;
            }
        }
        return j;
    }

    public long readUnsignedLongToLong() {
        long j = readLong();
        if (j >= 0) {
            return j;
        }
        ah.f(r01.c(j, "Top bit not zero: "));
        return 0L;
    }

    public int readUnsignedShort() {
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.position = i + 2;
        return (bArr[i2] & 255) | i3;
    }

    public long readUtf8EncodedLong() {
        int i;
        maybeAssertAtLeastBytesLeftForLegacyMethod(1);
        long j = this.data[this.position];
        int i2 = 7;
        while (true) {
            if (i2 >= 0) {
                int i3 = 1 << i2;
                if ((((long) i3) & j) == 0) {
                    if (i2 < 6) {
                        j &= (long) (i3 - 1);
                        i = 7 - i2;
                        break;
                    }
                    if (i2 == 7) {
                        i = 1;
                        break;
                    }
                } else {
                    i2--;
                }
            }
            i = 0;
            break;
        }
        if (i == 0) {
            throw new NumberFormatException(r01.c(j, "Invalid UTF-8 sequence first byte: "));
        }
        maybeAssertAtLeastBytesLeftForLegacyMethod(i);
        for (int i4 = 1; i4 < i; i4++) {
            byte b = this.data[this.position + i4];
            if ((b & 192) != 128) {
                throw new NumberFormatException(r01.c(j, "Invalid UTF-8 sequence continuation byte: "));
            }
            j = (j << 6) | ((long) (b & 63));
        }
        this.position += i;
        return j;
    }

    public Charset readUtfCharsetFromBom() {
        if (bytesLeft() >= 3) {
            byte[] bArr = this.data;
            int i = this.position;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.position = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (bytesLeft() < 2) {
            return null;
        }
        byte[] bArr2 = this.data;
        int i2 = this.position;
        byte b = bArr2[i2];
        if (b == -2 && bArr2[i2 + 1] == -1) {
            this.position = i2 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b != -1 || bArr2[i2 + 1] != -2) {
            return null;
        }
        this.position = i2 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public void reset(int i) {
        reset(capacity() < i ? new byte[i] : this.data, i);
    }

    public void setLimit(int i) {
        o8.e(i >= 0 && i <= this.data.length);
        this.limit = i;
    }

    public void setPosition(int i) {
        o8.e(i >= 0 && i <= this.limit);
        this.position = i;
    }

    public void skipBytes(int i) {
        setPosition(this.position + i);
    }

    public void skipLeb128() {
        while ((readUnsignedByte() & 128) != 0) {
        }
    }

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i) {
        readBytes(parsableBitArray.data, 0, i);
        parsableBitArray.setPosition(0);
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
        this.position = 0;
    }

    public void readBytes(ByteBuffer byteBuffer, int i) {
        maybeAssertAtLeastBytesLeftForLegacyMethod(i);
        byteBuffer.put(this.data, this.position, i);
        this.position += i;
    }

    public String readString(int i) {
        return readString(i, StandardCharsets.UTF_8);
    }

    public String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public String readLine() {
        return readLine(StandardCharsets.UTF_8);
    }

    public char peekChar() {
        return peekChar(ByteOrder.BIG_ENDIAN, 0);
    }

    private char peekChar(ByteOrder byteOrder, int i) {
        byte b;
        byte b2;
        maybeAssertAtLeastBytesLeftForLegacyMethod(2);
        ByteOrder byteOrder2 = ByteOrder.BIG_ENDIAN;
        byte[] bArr = this.data;
        int i2 = this.position;
        if (byteOrder == byteOrder2) {
            int i3 = i2 + i;
            b = bArr[i3];
            b2 = bArr[i3 + 1];
        } else {
            int i4 = i2 + i;
            b = bArr[i4 + 1];
            b2 = bArr[i4];
        }
        return (char) ((b2 & 255) | (b << 8));
    }
}
