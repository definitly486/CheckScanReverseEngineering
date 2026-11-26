package yads;

import android.content.Context;
import android.os.StatFs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class x74 {
    public static long a(Context context, long j, long j2) {
        long availableBlocks;
        if (j > j2) {
            j = j2;
        }
        try {
            StatFs statFs = new StatFs(pp0.a(context, "").getAbsolutePath());
            availableBlocks = ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (IllegalArgumentException unused) {
            availableBlocks = j;
        }
        long j3 = (2 * availableBlocks) / 100;
        long j4 = (availableBlocks * 50) / 100;
        if (j > j4) {
            j = j4;
        }
        if (j3 <= j2) {
            j2 = j3;
        }
        return j2 < j ? j : j2;
    }
}
