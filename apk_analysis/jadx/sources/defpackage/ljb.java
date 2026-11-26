package defpackage;

import com.google.android.gms.internal.auth.e;

/* JADX INFO: loaded from: classes4.dex */
public final class ljb {
    public static final Class a;
    public static final tlb b;
    public static final e c;

    static {
        Class<?> cls;
        Class<?> cls2;
        tlb tlbVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                tlbVar = (tlb) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        b = tlbVar;
        c = new e();
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
