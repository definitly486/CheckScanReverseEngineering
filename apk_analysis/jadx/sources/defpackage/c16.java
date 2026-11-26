package defpackage;

import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public final class c16 implements b16 {
    public final PackageManager a;

    public c16(PackageManager packageManager) {
        this.a = packageManager;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    @Override // defpackage.b16
    public final boolean a(String str) {
        Object aVar;
        str.getClass();
        try {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            PackageManager packageManager = this.a;
            if (i >= 33) {
                if (packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(0L)) == null) {
                    z = false;
                }
            } else if (packageManager.getPackageInfo(str, 0) == null) {
                z = false;
            }
            aVar = Boolean.valueOf(z);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            s0.c("Package Not Found " + str + ", check Manifest queries");
        }
        Boolean bool = Boolean.FALSE;
        if (aVar instanceof k57.a) {
            aVar = bool;
        }
        return ((Boolean) aVar).booleanValue();
    }
}
