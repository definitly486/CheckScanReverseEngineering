package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a96 {
    public static final vi a;
    public static final w07 b;
    public static final dv0 c;

    static {
        String property = System.getProperty("java.vm.name");
        property.getClass();
        if (property.equals("RoboVM")) {
            a = null;
            b = new w07();
            c = new dv0();
        } else if (property.equals("Dalvik")) {
            a = new vi();
            b = new w07.a();
            c = new dv0.a();
        } else {
            a = null;
            b = new w07.b();
            c = new dv0.a();
        }
    }
}
