package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nq5 {
    public static final a a = new a();

    public static final class a implements mi0<Object, Object> {
        @Override // defpackage.mi0
        public final boolean test(Object obj, Object obj2) {
            if (obj != obj2) {
                return obj != null && obj.equals(obj2);
            }
            return true;
        }
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        o2.d(str);
    }

    public static void b(int i, String str) {
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }
}
