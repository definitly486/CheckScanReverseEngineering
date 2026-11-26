package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Process;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class za6 {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            try {
                iArr[Bitmap.CompressFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Bitmap.CompressFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Bitmap.CompressFormat.WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final ConnectivityManager a(Context context) {
        Object systemService = context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            return (ConnectivityManager) systemService;
        }
        return null;
    }

    public static final PackageInfo b(Context context, ta6 ta6Var) {
        try {
            return Build.VERSION.SDK_INT >= 33 ? context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)) : context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Throwable th) {
            sg.f("Error getting package info: ", th, '.', ta6Var.v);
            return null;
        }
    }

    public static final boolean c(Context context) {
        return context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0;
    }

    public static final boolean d(Bitmap bitmap) {
        return !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static final rd6 e(Context context) {
        float f;
        int i;
        int i2;
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager == null) {
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        displayMetrics.getClass();
        if (Build.VERSION.SDK_INT >= 30) {
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            currentWindowMetrics.getClass();
            Rect bounds = currentWindowMetrics.getBounds();
            bounds.getClass();
            f = displayMetrics.density;
            i = (int) ((bounds.bottom - bounds.top) / f);
            i2 = (int) ((bounds.right - bounds.left) / f);
        } else {
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            int i3 = point.y;
            f = displayMetrics.density;
            int i4 = (int) (point.x / f);
            i = (int) (i3 / f);
            i2 = i4;
        }
        return new rd6(i2, i, f);
    }

    public static final long f(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }

    public static String g(Bitmap bitmap) throws IOException {
        if (d(bitmap)) {
            int i = Build.VERSION.SDK_INT;
            Bitmap.CompressFormat compressFormat = i >= 30 ? Bitmap.CompressFormat.WEBP_LOSSY : Bitmap.CompressFormat.WEBP;
            compressFormat.getClass();
            if (d(bitmap)) {
                Bitmap.CompressFormat compressFormat2 = i >= 30 ? Bitmap.CompressFormat.WEBP_LOSSY : Bitmap.CompressFormat.WEBP;
                Bitmap.CompressFormat compressFormat3 = i >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP;
                int i2 = a.a[compressFormat.ordinal()];
                String str = "jpeg";
                if (i2 != 1) {
                    if (i2 == 2) {
                        str = "png";
                    } else if (i2 == 3 || compressFormat == compressFormat2 || compressFormat == compressFormat3) {
                        str = "webp";
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getAllocationByteCount());
                try {
                    bitmap.compress(compressFormat, 30, byteArrayOutputStream);
                    String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                    if (strEncodeToString == null) {
                        byteArrayOutputStream.close();
                        return null;
                    }
                    String str2 = "data:image/" + str + ";base64," + strEncodeToString;
                    byteArrayOutputStream.close();
                    return str2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(byteArrayOutputStream, th);
                        throw th2;
                    }
                }
            }
        }
        return null;
    }
}
