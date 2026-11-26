package defpackage;

import com.google.android.gms.internal.measurement.zzahe;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class oe0 implements rxa {
    public static final ba8 b = new ba8("APP_ROUTER");
    public static final ba8 c = new ba8("APP_CICERONE");
    public static final ba8 d = new ba8("APP_NAV_HOLDER");
    public static final ba8 e = new ba8("APPLICATION_SCOPE");
    public static final bh8 f = new bh8("CLOSED");
    public static final /* synthetic */ oe0 g = new oe0();

    public static final Object a(hl7 hl7Var, long j, bm3 bm3Var) {
        Unsafe unsafe;
        long j2;
        while (true) {
            hl7 hl7Var2 = hl7Var;
            while (true) {
                if (hl7Var2.e >= j && !hl7Var2.d()) {
                    return hl7Var2;
                }
                Object objectVolatile = pz0.a.getObjectVolatile(hl7Var2, dv1.b);
                bh8 bh8Var = f;
                if (objectVolatile == bh8Var) {
                    return bh8Var;
                }
                hl7Var = (hl7) ((dv1) objectVolatile);
                if (hl7Var != null) {
                    break;
                }
                hl7 hl7Var3 = (hl7) bm3Var.invoke(Long.valueOf(hl7Var2.e + 1), hl7Var2);
                do {
                    unsafe = pz0.a;
                    j2 = dv1.b;
                    if (unsafe.compareAndSwapObject(hl7Var2, j2, (Object) null, hl7Var3)) {
                        if (hl7Var2.d()) {
                            hl7Var2.e();
                        }
                        hl7Var2 = hl7Var3;
                        break;
                    }
                } while (unsafe.getObjectVolatile(hl7Var2, j2) == null);
            }
        }
    }

    public static final Object b(Object obj) {
        return obj instanceof yq1 ? r57.a(((yq1) obj).a) : obj;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return zzahe.zza();
    }
}
