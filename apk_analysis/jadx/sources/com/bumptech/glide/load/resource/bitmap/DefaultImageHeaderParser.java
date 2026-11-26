package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.media3.muxer.WebmConstants;
import com.bumptech.glide.load.ImageHeaderParser;
import defpackage.bg;
import defpackage.pr;
import defpackage.r96;
import defpackage.vh;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {
    public static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final byte[] b = "MPF".getBytes(Charset.forName("UTF-8"));
    public static final int[] c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public interface Reader {

        public static final class EndOfFileException extends IOException {
            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int getUInt16();

        short getUInt8();

        int read(byte[] bArr, int i);

        long skip(long j);
    }

    public static final class a implements Reader {
        public final ByteBuffer a;

        public a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int getUInt16() {
            return getUInt8() | (getUInt8() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short getUInt8() throws Reader.EndOfFileException {
            ByteBuffer byteBuffer = this.a;
            if (byteBuffer.remaining() >= 1) {
                return (short) (byteBuffer.get() & 255);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int read(byte[] bArr, int i) {
            ByteBuffer byteBuffer = this.a;
            int iMin = Math.min(i, byteBuffer.remaining());
            if (iMin == 0) {
                return -1;
            }
            byteBuffer.get(bArr, 0, iMin);
            return iMin;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j) {
            ByteBuffer byteBuffer = this.a;
            int iMin = (int) Math.min(byteBuffer.remaining(), j);
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    public static final class b implements Reader {
        public final InputStream a;

        public b(InputStream inputStream) {
            this.a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int getUInt16() {
            return getUInt8() | (getUInt8() << 8);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short getUInt8() throws IOException {
            int i = this.a.read();
            if (i != -1) {
                return (short) i;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int read(byte[] bArr, int i) throws Reader.EndOfFileException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.a.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                InputStream inputStream = this.a;
                long jSkip = inputStream.skip(j2);
                if (jSkip > 0) {
                    j2 -= jSkip;
                } else {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    j2--;
                }
            }
            return j - j2;
        }
    }

    public static int g(Reader reader, pr prVar) {
        try {
            int uInt16 = reader.getUInt16();
            if ((uInt16 & 65496) == 65496 || uInt16 == 19789 || uInt16 == 18761) {
                int iK = k(reader, WebmConstants.MkvEbmlElement.AUDIO);
                if (iK != -1) {
                    byte[] bArr = (byte[]) prVar.c(byte[].class, iK);
                    try {
                        return l(reader, bArr, iK);
                    } finally {
                        prVar.put(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + uInt16);
                return -1;
            }
        } catch (Reader.EndOfFileException unused) {
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType h(Reader reader) {
        try {
            int uInt16 = reader.getUInt16();
            if (uInt16 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int uInt8 = (uInt16 << 8) | reader.getUInt8();
            if (uInt8 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int uInt9 = (uInt8 << 8) | reader.getUInt8();
            if (uInt9 == -1991225785) {
                reader.skip(21L);
                try {
                    return reader.getUInt8() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (uInt9 == 1380533830) {
                reader.skip(4L);
                if (((reader.getUInt16() << 16) | reader.getUInt16()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int uInt17 = (reader.getUInt16() << 16) | reader.getUInt16();
                if ((uInt17 & (-256)) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = uInt17 & 255;
                if (i != 88) {
                    if (i != 76) {
                        return ImageHeaderParser.ImageType.WEBP;
                    }
                    reader.skip(4L);
                    return (reader.getUInt8() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                }
                reader.skip(4L);
                short uInt10 = reader.getUInt8();
                if ((uInt10 & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                return (uInt10 & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
            if (((reader.getUInt16() << 16) | reader.getUInt16()) != 1718909296) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int uInt18 = (reader.getUInt16() << 16) | reader.getUInt16();
            if (uInt18 == 1635150195) {
                return ImageHeaderParser.ImageType.ANIMATED_AVIF;
            }
            int i2 = 0;
            boolean z = uInt18 == 1635150182;
            reader.skip(4L);
            int i3 = uInt9 - 16;
            if (i3 % 4 == 0) {
                while (i2 < 5 && i3 > 0) {
                    int uInt19 = (reader.getUInt16() << 16) | reader.getUInt16();
                    if (uInt19 == 1635150195) {
                        return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                    }
                    if (uInt19 == 1635150182) {
                        z = true;
                    }
                    i2++;
                    i3 -= 4;
                }
            }
            return z ? ImageHeaderParser.ImageType.AVIF : ImageHeaderParser.ImageType.UNKNOWN;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public static boolean i(Reader reader, pr prVar) {
        boolean zJ;
        if (h(reader) == ImageHeaderParser.ImageType.JPEG) {
            int iK = k(reader, 226);
            while (iK > 0) {
                byte[] bArr = (byte[]) prVar.c(byte[].class, iK);
                try {
                    int i = reader.read(bArr, iK);
                    if (i != iK) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Unable to read APP2 segment data, length: " + iK + ", actually read: " + i);
                        }
                        zJ = false;
                    } else {
                        zJ = j(bArr, iK, b);
                    }
                    if (zJ) {
                        prVar.put(bArr);
                        return true;
                    }
                    prVar.put(bArr);
                    iK = k(reader, 226);
                } catch (Throwable th) {
                    prVar.put(bArr);
                    throw th;
                }
            }
            if (Log.isLoggable("DfltImageHeaderParser", 2)) {
                Log.v("DfltImageHeaderParser", "hasMpf: Failed to parse APP2 segment length, or no APP2 segment with MPF metadata not found");
            }
        }
        return false;
    }

    public static boolean j(byte[] bArr, int i, byte[] bArr2) {
        boolean z = (bArr == null || bArr2 == null || i <= bArr2.length) ? false : true;
        if (z) {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
            }
        }
        return z;
    }

    public static int k(Reader reader, int i) {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt9 = reader.getUInt8();
            if (uInt9 == 255) {
                uInt8 = reader.getUInt8();
                if (uInt8 != 218) {
                    if (uInt8 != 217) {
                        uInt16 = reader.getUInt16() - 2;
                        if (uInt8 == i) {
                            return uInt16;
                        }
                        j = uInt16;
                        jSkip = reader.skip(j);
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Found MARKER_EOI in " + i + " segment");
                        return -1;
                    }
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                vh.d(uInt9, "Unknown segmentId=", "DfltImageHeaderParser");
                return -1;
            }
            return -1;
        } while (jSkip == j);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbF = bg.f(uInt8, uInt16, "Unable to skip enough data, type: ", ", wanted to skip: ", ", but actually skipped: ");
            sbF.append(jSkip);
            Log.d("DfltImageHeaderParser", sbF.toString());
        }
        return -1;
    }

    public static int l(Reader reader, byte[] bArr, int i) {
        ByteOrder byteOrder;
        int i2 = reader.read(bArr, i);
        if (i2 != i) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + i2);
                return -1;
            }
        } else if (j(bArr, i, a)) {
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
            short s = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
            if (s != 18761) {
                if (s != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                    vh.d(s, "Unknown endianness = ", "DfltImageHeaderParser");
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            byteBuffer.order(byteOrder);
            int i3 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i4 = i3 + 6;
            short s2 = byteBuffer.remaining() - i4 >= 2 ? byteBuffer.getShort(i4) : (short) -1;
            for (int i5 = 0; i5 < s2; i5++) {
                int i6 = (i5 * 12) + i3 + 8;
                short s3 = byteBuffer.remaining() - i6 >= 2 ? byteBuffer.getShort(i6) : (short) -1;
                if (s3 == 274) {
                    int i7 = i6 + 2;
                    short s4 = byteBuffer.remaining() - i7 >= 2 ? byteBuffer.getShort(i7) : (short) -1;
                    if (s4 >= 1 && s4 <= 12) {
                        int i8 = i6 + 4;
                        int i9 = byteBuffer.remaining() - i8 >= 4 ? byteBuffer.getInt(i8) : -1;
                        if (i9 >= 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sbF = bg.f(i5, s3, "Got tagIndex=", " tagType=", " formatCode=");
                                sbF.append((int) s4);
                                sbF.append(" componentCount=");
                                sbF.append(i9);
                                Log.d("DfltImageHeaderParser", sbF.toString());
                            }
                            int i10 = i9 + c[s4];
                            if (i10 <= 4) {
                                int i11 = i6 + 8;
                                if (i11 >= 0 && i11 <= byteBuffer.remaining()) {
                                    if (i10 >= 0 && i10 + i11 <= byteBuffer.remaining()) {
                                        if (byteBuffer.remaining() - i11 >= 2) {
                                            return byteBuffer.getShort(i11);
                                        }
                                        return -1;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        vh.d(s3, "Illegal number of bytes for TI tag data tagType=", "DfltImageHeaderParser");
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) s3));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                vh.d(s4, "Got byte count > 4, not orientation, continuing, formatCode=", "DfltImageHeaderParser");
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Negative tiff component count");
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        vh.d(s4, "Got invalid format code = ", "DfltImageHeaderParser");
                    }
                }
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int a(InputStream inputStream, pr prVar) {
        r96.c(inputStream, "Argument must not be null");
        b bVar = new b(inputStream);
        r96.c(prVar, "Argument must not be null");
        return g(bVar, prVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean b(InputStream inputStream, pr prVar) {
        r96.c(inputStream, "Argument must not be null");
        b bVar = new b(inputStream);
        r96.c(prVar, "Argument must not be null");
        return i(bVar, prVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean c(ByteBuffer byteBuffer, pr prVar) {
        r96.c(byteBuffer, "Argument must not be null");
        a aVar = new a(byteBuffer);
        r96.c(prVar, "Argument must not be null");
        return i(aVar, prVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) {
        r96.c(inputStream, "Argument must not be null");
        return h(new b(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType e(ByteBuffer byteBuffer) {
        r96.c(byteBuffer, "Argument must not be null");
        return h(new a(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int f(ByteBuffer byteBuffer, pr prVar) {
        r96.c(byteBuffer, "Argument must not be null");
        a aVar = new a(byteBuffer);
        r96.c(prVar, "Argument must not be null");
        return g(aVar, prVar);
    }
}
