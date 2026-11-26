package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qr {
    public static final int a;

    static {
        Object aVar;
        try {
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            aVar = property != null ? qa8.o(10, property) : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Integer num = (Integer) (aVar instanceof k57.a ? null : aVar);
        a = num != null ? num.intValue() : 2097152;
    }
}
