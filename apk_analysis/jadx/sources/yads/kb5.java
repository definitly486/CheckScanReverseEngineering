package yads;

import android.os.Build;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class kb5 {
    public static final kb5 a = new kb5();
    public static final String[] b = {"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"};

    public static boolean a() {
        boolean zExists;
        boolean z;
        try {
            zExists = new File("/system/app/Superuser/Superuser.apk").exists();
        } catch (Throwable unused) {
            zExists = false;
        }
        if (!zExists) {
            try {
                String[] strArr = b;
                z = false;
                for (int i = 0; i < 8; i++) {
                    z = z || (Build.VERSION.SDK_INT < 31 && new File(strArr[i]).exists());
                }
            } catch (Throwable unused2) {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }
}
