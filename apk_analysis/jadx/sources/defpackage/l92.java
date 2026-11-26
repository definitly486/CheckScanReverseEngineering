package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class l92 {
    public static final fp3<k92, Integer> a = new fp3<>(new wr6(e.c), null, 14);
    public static final j79<k92> b = new j79<>(new wr6(d.c), 1, 12, null, 56);
    public static final j79<k92> c = new j79<>(new wr6(a.c), 1, 31, null, 56);
    public static final j79<k92> d = new j79<>(new wr6(c.c), 1, 7, null, 56);

    public /* synthetic */ class a extends tg5 {
        public static final a c = new a(k92.class, "dayOfMonth", "getDayOfMonth()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((k92) obj).z();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((k92) obj).l((Integer) obj2);
        }
    }

    public /* synthetic */ class b extends tg5 {
        public static final b c = new b(k92.class, "dayOfYear", "getDayOfYear()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((k92) obj).x();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((k92) obj).s((Integer) obj2);
        }
    }

    public /* synthetic */ class c extends tg5 {
        public static final c c = new c(k92.class, "isoDayOfWeek", "getIsoDayOfWeek()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((k92) obj).b();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((k92) obj).o((Integer) obj2);
        }
    }

    public /* synthetic */ class d extends tg5 {
        public static final d c = new d(k92.class, "monthNumber", "getMonthNumber()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((k92) obj).n();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((k92) obj).u((Integer) obj2);
        }
    }

    public /* synthetic */ class e extends tg5 {
        public static final e c = new e(k92.class, "year", "getYear()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((k92) obj).k();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((k92) obj).y((Integer) obj2);
        }
    }

    static {
        b bVar = b.c;
        bVar.getClass();
        bVar.getName().getClass();
    }
}
