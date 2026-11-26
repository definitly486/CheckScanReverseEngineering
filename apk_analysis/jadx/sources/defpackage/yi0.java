package defpackage;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class yi0 implements l47<Bitmap> {
    public static final qz5<Integer> c = qz5.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");
    public static final qz5<Bitmap.CompressFormat> d = new qz5<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, qz5.e);
    public final pr b;

    public yi0(pr prVar) {
        this.b = prVar;
    }

    @Override // defpackage.l47
    public final rx2 c(xz5 xz5Var) {
        return rx2.TRANSFORMED;
    }

    @Override // defpackage.vx2
    public final boolean d(Object obj, File file, xz5 xz5Var) throws Throwable {
        boolean z;
        Bitmap bitmap = (Bitmap) ((e47) obj).get();
        qz5<Bitmap.CompressFormat> qz5Var = d;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) xz5Var.c(qz5Var);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i = cv4.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) xz5Var.c(c)).intValue();
        OutputStream uu0Var = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    pr prVar = this.b;
                    if (prVar != null) {
                        try {
                            uu0Var = new uu0(fileOutputStream, prVar);
                        } catch (IOException e) {
                            e = e;
                            uu0Var = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (uu0Var != null) {
                                try {
                                    uu0Var.close();
                                } catch (IOException unused) {
                                }
                            }
                            z = false;
                        } catch (Throwable th) {
                            th = th;
                            uu0Var = fileOutputStream;
                            if (uu0Var != null) {
                                try {
                                    uu0Var.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        uu0Var = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, uu0Var);
                    uu0Var.close();
                    try {
                        uu0Var.close();
                    } catch (IOException unused3) {
                    }
                    z = true;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + eb9.c(bitmap) + " in " + cv4.a(jElapsedRealtimeNanos) + ", options format: " + xz5Var.c(qz5Var) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z;
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
