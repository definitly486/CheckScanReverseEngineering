package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a17 {
    public static String a(nm3 nm3Var) {
        String string = nm3Var.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }
}
