package defpackage;

import android.content.pm.PackageManager;
import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class f16 implements d16 {
    public final PackageManager a;
    public final em2 b;

    public f16(PackageManager packageManager, em2 em2Var) {
        this.a = packageManager;
        this.b = em2Var;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    @Override // defpackage.d16
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.d16
    public final Object b(f02 f02Var) {
        e16 e16Var;
        if (f02Var instanceof e16) {
            e16Var = (e16) f02Var;
            int i = e16Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                e16Var.n = i - Integer.MIN_VALUE;
            } else {
                e16Var = new e16(this, f02Var);
            }
        } else {
            e16Var = new e16(this, f02Var);
        }
        Object objB = e16Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = e16Var.n;
        if (i2 == 0) {
            r57.b(objB);
            e16Var.n = 1;
            objB = this.b.b(e16Var);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        return ((bq) objB).a();
    }

    @Override // defpackage.d16
    public final Object c(ArrayList arrayList, so7 so7Var) {
        Object objA = this.b.a(arrayList, so7Var);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }
}
