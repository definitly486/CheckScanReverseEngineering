package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class eya {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            o2.d("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            o2.d(me0.c("null value in entry: ", obj.toString(), "=null"));
        }
    }
}
