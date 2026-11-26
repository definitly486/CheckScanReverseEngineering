package androidx.camera.video.internal.utils;

import android.os.StatFs;
import defpackage.fg;
import defpackage.ta8;
import java.io.File;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public final class StorageUtil {
    public static final StorageUtil INSTANCE = new StorageUtil();
    public static final String NO_SPACE_LEFT_MESSAGE = "No space left on device";
    private static final String TAG = "StorageUtil";

    private StorageUtil() {
    }

    public static final String formatSize(long j) {
        if (j < 0) {
            fg.c("Bytes cannot be negative");
            return null;
        }
        String[] strArr = {"B", "KB", "MB", "GB", "TB"};
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        double d = j;
        int i = 0;
        double d2 = d;
        while (d2 >= 1024.0d && i < 4) {
            d2 /= 1024.0d;
            i++;
        }
        if (i == 0) {
            return decimalFormat.format(d2) + ' ' + strArr[i];
        }
        StringBuilder sb = new StringBuilder();
        while (-1 < i) {
            double dPow = Math.pow(1024.0d, i);
            double dFloor = Math.floor(d / dPow);
            if (dFloor > 0.0d) {
                sb.append(decimalFormat.format(dFloor));
                sb.append(" ");
                sb.append(strArr[i]);
                sb.append(" ");
                d -= dFloor * dPow;
            }
            i--;
        }
        return ta8.f0(sb).toString();
    }

    public static final long getAvailableBytes(File file) {
        file.getClass();
        String path = file.getPath();
        path.getClass();
        return getAvailableBytes(path);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        if (r0.equals("external") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        if (r0.equals("external_primary") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        r3 = android.os.Environment.getExternalStorageDirectory();
        r3.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
    
        return getAvailableBytes(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long getAvailableBytesForMediaStoreUri(android.net.Uri r3) {
        /*
            r3.getClass()
            java.lang.String r0 = r3.getScheme()
            java.lang.String r1 = "content"
            boolean r0 = defpackage.aa4.e(r0, r1)
            if (r0 == 0) goto L7b
            java.util.List r0 = r3.getPathSegments()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L62
            int r1 = r0.hashCode()
            r2 = -1921573490(0xffffffff8d771d8e, float:-7.6148327E-31)
            if (r1 == r2) goto L4e
            r2 = -1820761141(0xffffffff937963cb, float:-3.147742E-27)
            if (r1 == r2) goto L45
            r2 = 570410685(0x21ffc6bd, float:1.7332078E-18)
            if (r1 == r2) goto L30
            goto L62
        L30:
            java.lang.String r1 = "internal"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L39
            goto L62
        L39:
            java.io.File r3 = android.os.Environment.getDataDirectory()
            r3.getClass()
            long r0 = getAvailableBytes(r3)
            return r0
        L45:
            java.lang.String r1 = "external"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L56
            goto L62
        L4e:
            java.lang.String r1 = "external_primary"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L62
        L56:
            java.io.File r3 = android.os.Environment.getExternalStorageDirectory()
            r3.getClass()
            long r0 = getAvailableBytes(r3)
            return r0
        L62:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unknown MediaStore URI: "
            r0.<init>(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.lang.String r0 = "StorageUtil"
            androidx.camera.core.Logger.w(r0, r3)
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            return r0
        L7b:
            java.lang.String r0 = "Not a content uri: "
            java.lang.String r3 = defpackage.rk3.c(r3, r0)
            defpackage.j2.d(r3)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.video.internal.utils.StorageUtil.getAvailableBytesForMediaStoreUri(android.net.Uri):long");
    }

    public static final boolean isStorageFullException(Throwable th) {
        if (th == null) {
            return false;
        }
        String message = th.getMessage();
        if (message == null || !ta8.D(message, NO_SPACE_LEFT_MESSAGE, false)) {
            return isStorageFullException(th.getCause());
        }
        return true;
    }

    public static final long getAvailableBytes(String str) {
        str.getClass();
        return new StatFs(str).getAvailableBytes();
    }
}
