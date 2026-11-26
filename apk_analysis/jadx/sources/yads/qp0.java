package yads;

import android.os.Environment;
import android.os.StatFs;

/* JADX INFO: loaded from: classes.dex */
public final class qp0 {
    public static Long a() {
        try {
            return Long.valueOf(new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1048576);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Long b() {
        try {
            return Long.valueOf(new StatFs(Environment.getDataDirectory().getAbsolutePath()).getTotalBytes() / 1048576);
        } catch (Throwable unused) {
            return null;
        }
    }
}
