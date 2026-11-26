package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class r46 {
    public static final a34 a;

    static {
        Object obj;
        Class<?> cls;
        a34 a34Var;
        try {
            cls = Class.forName("io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl");
            obj = null;
        } catch (Throwable th) {
            obj = th;
            cls = null;
        }
        if (cls != null) {
            try {
                a34Var = (a34) cls.asSubclass(a34.class).getConstructor(lj8.class).newInstance(a34.a);
            } catch (Throwable th2) {
                obj = th2;
                a34Var = null;
            }
        } else {
            a34Var = null;
        }
        if (a34Var != null) {
            a = a34Var;
        } else {
            a = new a34();
        }
        if (obj != null) {
            try {
                if (Boolean.getBoolean("io.perfmark.PerfMark.debug")) {
                    Class<?> cls2 = Class.forName("java.util.logging.Logger");
                    Object objInvoke = cls2.getMethod("getLogger", String.class).invoke(null, r46.class.getName());
                    Class<?> cls3 = Class.forName("java.util.logging.Level");
                    cls2.getMethod("log", cls3, String.class, Throwable.class).invoke(objInvoke, cls3.getField("FINE").get(null), "Error during PerfMark.<clinit>", obj);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a() {
        a.getClass();
    }

    public static void b() {
        a.getClass();
    }

    public static void c() {
        a.getClass();
    }
}
