package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hg6 {
    public static final uz4 a;

    static {
        uz4 uz4Var = new uz4();
        uz4Var.put(x07.a(String.class), ca8.a);
        uz4Var.put(x07.a(Character.TYPE), ba1.a);
        uz4Var.put(x07.a(char[].class), w91.c);
        uz4Var.put(x07.a(Double.TYPE), pq2.a);
        uz4Var.put(x07.a(double[].class), lq2.c);
        uz4Var.put(x07.a(Float.TYPE), wc3.a);
        uz4Var.put(x07.a(float[].class), rc3.c);
        uz4Var.put(x07.a(Long.TYPE), gw4.a);
        uz4Var.put(x07.a(long[].class), sv4.c);
        uz4Var.put(x07.a(p49.class), t49.a);
        uz4Var.put(x07.a(Integer.TYPE), z74.a);
        uz4Var.put(x07.a(int[].class), s74.c);
        uz4Var.put(x07.a(k49.class), o49.a);
        uz4Var.put(x07.a(Short.TYPE), jw7.a);
        uz4Var.put(x07.a(short[].class), gw7.c);
        uz4Var.put(x07.a(v49.class), z49.a);
        uz4Var.put(x07.a(Byte.TYPE), cx0.a);
        uz4Var.put(x07.a(byte[].class), rw0.c);
        uz4Var.put(x07.a(f49.class), j49.a);
        uz4Var.put(x07.a(Boolean.TYPE), gs0.a);
        uz4Var.put(x07.a(boolean[].class), es0.c);
        zk1 zk1VarA = x07.a(j59.class);
        j59.a.getClass();
        uz4Var.put(zk1VarA, n59.b);
        uz4Var.put(x07.a(Void.class), so5.a);
        try {
            zk1 zk1VarA2 = x07.a(wt2.class);
            wt2.a aVar = wt2.c;
            uz4Var.put(zk1VarA2, zt2.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            uz4Var.put(x07.a(q49.class), s49.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            uz4Var.put(x07.a(l49.class), n49.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            uz4Var.put(x07.a(w49.class), y49.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            uz4Var.put(x07.a(g49.class), i49.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            uz4Var.put(x07.a(tb9.class), vb9.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        try {
            zk1 zk1VarA3 = x07.a(g64.class);
            g64 g64Var = g64.d;
            uz4Var.put(zk1VarA3, q64.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused7) {
        }
        a = uz4Var.b();
    }

    public static final void a(String str) {
        for (df4 df4Var : (xz4) a.values()) {
            if (str.equals(df4Var.getDescriptor().h())) {
                StringBuilder sbD = n7.d("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exists ");
                sbD.append(x07.a(df4Var.getClass()).f());
                sbD.append(".\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                fg.c(na8.i(sbD.toString()));
                return;
            }
        }
    }
}
