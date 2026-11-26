package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface z14 {

    public static final class a implements z14 {
        public final ByteBuffer a;
        public final ArrayList b;
        public final pr c;

        public a(ByteBuffer byteBuffer, ArrayList arrayList, pr prVar) {
            this.a = byteBuffer;
            this.b = arrayList;
            this.c = prVar;
        }

        @Override // defpackage.z14
        public final boolean a() {
            ByteBuffer byteBufferC = ax0.c(this.a);
            pr prVar = this.c;
            if (byteBufferC != null) {
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    try {
                        boolean zC = ((ImageHeaderParser) arrayList.get(i)).c(byteBufferC, prVar);
                        if (zC) {
                            return true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return false;
        }

        @Override // defpackage.z14
        public final void b() {
        }

        @Override // defpackage.z14
        public final int c() {
            ByteBuffer byteBufferC = ax0.c(this.a);
            pr prVar = this.c;
            if (byteBufferC != null) {
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    try {
                        int iF = ((ImageHeaderParser) arrayList.get(i)).f(byteBufferC, prVar);
                        if (iF != -1) {
                            return iF;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return -1;
        }

        @Override // defpackage.z14
        public final Bitmap d(BitmapFactory.Options options) {
            return qq3.a(new ax0.a(ax0.c(this.a)), options, this);
        }

        @Override // defpackage.z14
        public final ImageHeaderParser.ImageType e() {
            return com.bumptech.glide.load.a.c(this.b, ax0.c(this.a));
        }
    }

    public static final class b implements z14 {
        public final com.bumptech.glide.load.data.c a;
        public final pr b;
        public final ArrayList c;

        public b(q05 q05Var, ArrayList arrayList, pr prVar) {
            r96.c(prVar, "Argument must not be null");
            this.b = prVar;
            this.c = arrayList;
            this.a = new com.bumptech.glide.load.data.c(q05Var, prVar);
        }

        @Override // defpackage.z14
        public final boolean a() {
            i07 i07Var = this.a.a;
            i07Var.reset();
            pr prVar = this.b;
            i07Var.mark(5242880);
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                try {
                    boolean zB = ((ImageHeaderParser) arrayList.get(i)).b(i07Var, prVar);
                    i07Var.reset();
                    if (zB) {
                        return true;
                    }
                } catch (Throwable th) {
                    i07Var.reset();
                    throw th;
                }
            }
            return false;
        }

        @Override // defpackage.z14
        public final void b() {
            i07 i07Var = this.a.a;
            synchronized (i07Var) {
                i07Var.d = i07Var.b.length;
            }
        }

        @Override // defpackage.z14
        public final int c() {
            i07 i07Var = this.a.a;
            i07Var.reset();
            return com.bumptech.glide.load.a.a(this.c, i07Var, this.b);
        }

        @Override // defpackage.z14
        public final Bitmap d(BitmapFactory.Options options) {
            i07 i07Var = this.a.a;
            i07Var.reset();
            return qq3.a(i07Var, options, this);
        }

        @Override // defpackage.z14
        public final ImageHeaderParser.ImageType e() {
            i07 i07Var = this.a.a;
            i07Var.reset();
            return com.bumptech.glide.load.a.b(this.c, i07Var, this.b);
        }
    }

    public static final class c implements z14 {
        public final pr a;
        public final ArrayList b;
        public final ParcelFileDescriptorRewinder c;

        public c(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, pr prVar) {
            r96.c(prVar, "Argument must not be null");
            this.a = prVar;
            this.b = arrayList;
            this.c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // defpackage.z14
        public final boolean a() throws Throwable {
            ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.c;
            pr prVar = this.a;
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ImageHeaderParser imageHeaderParser = (ImageHeaderParser) arrayList.get(i);
                i07 i07Var = null;
                try {
                    i07 i07Var2 = new i07(new FileInputStream(parcelFileDescriptorRewinder.c().getFileDescriptor()), prVar);
                    try {
                        boolean zB = imageHeaderParser.b(i07Var2, prVar);
                        i07Var2.release();
                        parcelFileDescriptorRewinder.c();
                        if (zB) {
                            return true;
                        }
                    } catch (Throwable th) {
                        th = th;
                        i07Var = i07Var2;
                        if (i07Var != null) {
                            i07Var.release();
                        }
                        parcelFileDescriptorRewinder.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return false;
        }

        @Override // defpackage.z14
        public final void b() {
        }

        @Override // defpackage.z14
        public final int c() throws Throwable {
            ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.c;
            pr prVar = this.a;
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ImageHeaderParser imageHeaderParser = (ImageHeaderParser) arrayList.get(i);
                i07 i07Var = null;
                try {
                    i07 i07Var2 = new i07(new FileInputStream(parcelFileDescriptorRewinder.c().getFileDescriptor()), prVar);
                    try {
                        int iA = imageHeaderParser.a(i07Var2, prVar);
                        i07Var2.release();
                        parcelFileDescriptorRewinder.c();
                        if (iA != -1) {
                            return iA;
                        }
                    } catch (Throwable th) {
                        th = th;
                        i07Var = i07Var2;
                        if (i07Var != null) {
                            i07Var.release();
                        }
                        parcelFileDescriptorRewinder.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return -1;
        }

        @Override // defpackage.z14
        public final Bitmap d(BitmapFactory.Options options) throws Throwable {
            FileDescriptor fileDescriptor = this.c.c().getFileDescriptor();
            int i = Build.VERSION.SDK_INT;
            Bitmap bitmap = null;
            if (i == 34) {
                if (((i == 34 && options.inPreferredConfig == Bitmap.Config.HARDWARE) ? ((Boolean) qq3.b.a.get()).booleanValue() : false) && qq3.b(this)) {
                    Bitmap.Config config = options.inPreferredConfig;
                    Bitmap.Config config2 = Bitmap.Config.HARDWARE;
                    r96.a(config == config2, "");
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    try {
                        Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        if (bitmapDecodeFileDescriptor == null) {
                            if (bitmapDecodeFileDescriptor != null) {
                                bitmapDecodeFileDescriptor.recycle();
                            }
                            options.inPreferredConfig = config2;
                            return null;
                        }
                        try {
                            Bitmap bitmapC = qq3.c(bitmapDecodeFileDescriptor);
                            bitmapDecodeFileDescriptor.recycle();
                            options.inPreferredConfig = config2;
                            return bitmapC;
                        } catch (Throwable th) {
                            th = th;
                            bitmap = bitmapDecodeFileDescriptor;
                            if (bitmap != null) {
                                bitmap.recycle();
                            }
                            options.inPreferredConfig = Bitmap.Config.HARDWARE;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }

        @Override // defpackage.z14
        public final ImageHeaderParser.ImageType e() throws Throwable {
            ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.c;
            pr prVar = this.a;
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ImageHeaderParser imageHeaderParser = (ImageHeaderParser) arrayList.get(i);
                i07 i07Var = null;
                try {
                    i07 i07Var2 = new i07(new FileInputStream(parcelFileDescriptorRewinder.c().getFileDescriptor()), prVar);
                    try {
                        ImageHeaderParser.ImageType imageTypeD = imageHeaderParser.d(i07Var2);
                        i07Var2.release();
                        parcelFileDescriptorRewinder.c();
                        if (imageTypeD != ImageHeaderParser.ImageType.UNKNOWN) {
                            return imageTypeD;
                        }
                    } catch (Throwable th) {
                        th = th;
                        i07Var = i07Var2;
                        if (i07Var != null) {
                            i07Var.release();
                        }
                        parcelFileDescriptorRewinder.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    boolean a();

    void b();

    int c();

    Bitmap d(BitmapFactory.Options options);

    ImageHeaderParser.ImageType e();
}
