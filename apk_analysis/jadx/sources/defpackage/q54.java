package defpackage;

import android.graphics.Bitmap;
import android.media.Image;
import com.google.android.gms.common.internal.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class q54 implements my4 {
    public volatile Bitmap a;
    public volatile ByteBuffer b;
    public volatile yva c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;

    public q54(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        boolean z;
        if (i4 == 842094169) {
            z = true;
        } else if (i4 == 17) {
            i4 = 17;
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.b = (ByteBuffer) Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.limit() > i * i2, "Image dimension, ByteBuffer size and format don't match. Please check if the ByteBuffer is in the decalred format.");
        byteBuffer.rewind();
        this.d = i;
        this.e = i2;
        b(i3);
        this.f = i3;
        this.g = i4;
    }

    public static void b(int i) {
        boolean z = true;
        if (i != 0 && i != 90 && i != 180 && i != 270) {
            z = false;
        }
        Preconditions.checkArgument(z, "Invalid rotation. Only 0, 90, 180, 270 are supported currently.");
    }

    public final Image.Plane[] a() {
        if (this.c == null) {
            return null;
        }
        return this.c.a.getPlanes();
    }

    public q54(Image image, int i, int i2, int i3) {
        Preconditions.checkNotNull(image);
        this.c = new yva(image);
        this.d = i;
        this.e = i2;
        b(i3);
        this.f = i3;
        this.g = 35;
    }

    public q54(Bitmap bitmap) {
        this.a = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.d = bitmap.getWidth();
        this.e = bitmap.getHeight();
        b(0);
        this.f = 0;
        this.g = -1;
    }
}
