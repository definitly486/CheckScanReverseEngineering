package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x07 {
    public static final a17 a;
    public static final ne4[] b;

    static {
        a17 a17Var = null;
        try {
            a17Var = (a17) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (a17Var == null) {
            a17Var = new a17();
        }
        a = a17Var;
        b = new ne4[0];
    }

    public static zk1 a(Class cls) {
        a.getClass();
        return new zk1(cls);
    }
}
