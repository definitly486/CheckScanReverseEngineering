package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class cn5 {
    public static final an5 a;
    public static final bn5 b;

    static {
        an5 an5Var = null;
        try {
            an5Var = (an5) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = an5Var;
        b = new bn5();
    }
}
