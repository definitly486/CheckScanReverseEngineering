package defpackage;

import androidx.camera.core.ImageProxy;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class dm9 {

    public static final class a {
        public final c a;
        public final ByteBuffer b;

        public a(c cVar, ByteBuffer byteBuffer) {
            cVar.getClass();
            this.a = cVar;
            this.b = byteBuffer;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Converted(type=" + this.a + ", buffer=" + this.b + ")";
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final ByteBuffer c;
        public final int d;
        public final int e;

        public b(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = byteBuffer;
            this.d = i3;
            this.e = i4;
        }
    }

    public enum c {
        YUV_NV21(17),
        YUV_I420(35);

        private final int format;

        c(int i) {
            this.format = i;
        }

        public final int a() {
            return this.format;
        }
    }

    public static ByteBuffer a(ByteBuffer byteBuffer, int i, int i2) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(i + i2);
        ByteBuffer byteBufferSlice = byteBufferDuplicate.slice();
        byteBufferSlice.getClass();
        return byteBufferSlice;
    }

    public static void b(b bVar, ByteBuffer byteBuffer, int i) {
        if (bVar.e != 1) {
            fg.c("use removePaddingCompact with pixelStride == 1");
            return;
        }
        ByteBuffer byteBuffer2 = bVar.c;
        int i2 = bVar.d;
        byteBuffer.position(i);
        int i3 = bVar.b;
        for (int i4 = 0; i4 < i3; i4++) {
            byteBuffer.put(a(byteBuffer2, i4 * i2, bVar.a));
        }
    }

    public static a c(ImageProxy imageProxy, ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocateDirect;
        int width = imageProxy.getWidth();
        int height = imageProxy.getHeight();
        ImageProxy.PlaneProxy[] planes = imageProxy.getPlanes();
        ImageProxy.PlaneProxy planeProxy = planes[0];
        planeProxy.getClass();
        b bVarD = d(width, height, planeProxy);
        int i = width / 2;
        int i2 = height / 2;
        ImageProxy.PlaneProxy planeProxy2 = planes[1];
        planeProxy2.getClass();
        b bVarD2 = d(i, i2, planeProxy2);
        int i3 = bVarD2.e;
        ImageProxy.PlaneProxy planeProxy3 = planes[2];
        planeProxy3.getClass();
        b bVarD3 = d(i, i2, planeProxy3);
        ByteBuffer byteBuffer2 = bVarD3.c;
        int i4 = bVarD2.d;
        int i5 = bVarD3.d;
        int i6 = bVarD3.e;
        int i7 = bVarD.e;
        if (i7 != 1) {
            throw new IllegalArgumentException(String.format("Pixel stride for Y plane must be 1 but got %d instead", Arrays.copyOf(new Object[]{Integer.valueOf(i7)}, 1)).toString());
        }
        if (i3 != i6 || i4 != i5) {
            throw new IllegalArgumentException(String.format("U and V planes must have the same pixel and row strides but got pixel=%d row=%d for U and pixel=%d and row=%d for V", Arrays.copyOf(new Object[]{Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i6), Integer.valueOf(i5)}, 4)).toString());
        }
        if (i3 != 1 && i3 != 2) {
            fg.c("Supported pixel strides for U and V planes are 1 and 2");
            return null;
        }
        c cVar = i3 == 1 ? c.YUV_I420 : c.YUV_NV21;
        int i8 = ((width * height) * 3) / 2;
        if (byteBuffer == null || byteBuffer.capacity() < i8 || byteBuffer.isReadOnly() || !byteBuffer.isDirect()) {
            byteBufferAllocateDirect = ByteBuffer.allocateDirect(i8);
            byteBufferAllocateDirect.getClass();
        } else {
            byteBufferAllocateDirect = byteBuffer;
        }
        byteBufferAllocateDirect.rewind();
        int i9 = bVarD.a;
        int i10 = bVarD.b * i9;
        int i11 = bVarD2.a;
        int i12 = bVarD2.b;
        ByteBuffer byteBuffer3 = bVarD2.c;
        int i13 = i11 * i12;
        if (bVarD.d > i9) {
            b(bVarD, byteBufferAllocateDirect, 0);
        } else {
            byteBufferAllocateDirect.position(0);
            byteBufferAllocateDirect.put(bVarD.c);
        }
        if (cVar != c.YUV_I420) {
            int i14 = i11 * 2;
            if (i4 <= i14) {
                byteBufferAllocateDirect.position(i10);
                byteBufferAllocateDirect.put(byteBuffer2);
                byteBufferAllocateDirect.put(byteBuffer3.get(byteBuffer3.capacity() - 1));
            } else {
                if (i3 != 2) {
                    fg.c("use removePaddingNotCompact pixelStride == 2");
                    return null;
                }
                byteBufferAllocateDirect.position(i10);
                int i15 = i12 - 1;
                for (int i16 = 0; i16 < i15; i16++) {
                    byteBufferAllocateDirect.put(a(byteBuffer2, i16 * i4, i14));
                }
                byteBufferAllocateDirect.put(a(byteBuffer3, (i15 * i4) - 1, i14));
            }
        } else if (i4 > i11) {
            b(bVarD2, byteBufferAllocateDirect, i10);
            b(bVarD3, byteBufferAllocateDirect, i10 + i13);
        } else {
            byteBufferAllocateDirect.position(i10);
            byteBufferAllocateDirect.put(byteBuffer3);
            byteBufferAllocateDirect.position(i10 + i13);
            byteBufferAllocateDirect.put(byteBuffer2);
        }
        byteBufferAllocateDirect.rewind();
        return new a(cVar, byteBufferAllocateDirect);
    }

    public static b d(int i, int i2, ImageProxy.PlaneProxy planeProxy) {
        ByteBuffer buffer = planeProxy.getBuffer();
        buffer.getClass();
        return new b(buffer, i, i2, planeProxy.getRowStride(), planeProxy.getPixelStride());
    }
}
