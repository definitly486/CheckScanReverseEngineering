package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface pv8 {
    public static final pv8 v1;

    static {
        pv8 eVar;
        try {
            Class.forName("java.time.Instant");
            eVar = new cd2();
        } catch (ClassNotFoundException unused) {
            eVar = new e();
        }
        v1 = eVar;
    }

    long b();
}
