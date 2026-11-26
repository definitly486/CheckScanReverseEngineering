package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class iu8 {
    public static final j79<hu8> a = new j79<>(new wr6(c.c), 0, 23, null, 56);
    public static final j79<hu8> b = new j79<>(new wr6(e.c), 0, 59, null, 56);
    public static final j79<hu8> c = new j79<>(new wr6(f.c), 0, 59, null, 40);
    public static final fp3<hu8, ed2> d = new fp3<>(new wr6(b.c), new ed2(0, 9), 10);

    public /* synthetic */ class a extends tg5 {
        public static final a c = new a(hu8.class, "amPm", "getAmPm()Lkotlinx/datetime/format/AmPmMarker;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).h();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).m((xc) obj2);
        }
    }

    public /* synthetic */ class b extends tg5 {
        public static final b c = new b(hu8.class, "fractionOfSecond", "getFractionOfSecond()Lkotlinx/datetime/internal/DecimalFraction;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).w();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).g((ed2) obj2);
        }
    }

    public /* synthetic */ class c extends tg5 {
        public static final c c = new c(hu8.class, "hour", "getHour()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).getHour();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).A((Integer) obj2);
        }
    }

    public /* synthetic */ class d extends tg5 {
        public static final d c = new d(hu8.class, "hourOfAmPm", "getHourOfAmPm()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).a();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).i((Integer) obj2);
        }
    }

    public /* synthetic */ class e extends tg5 {
        public static final e c = new e(hu8.class, "minute", "getMinute()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).getMinute();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).v((Integer) obj2);
        }
    }

    public /* synthetic */ class f extends tg5 {
        public static final f c = new f(hu8.class, "second", "getSecond()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((hu8) obj).r();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((hu8) obj).e((Integer) obj2);
        }
    }

    static {
        a aVar = a.c;
        aVar.getClass();
        aVar.getName().getClass();
        d dVar = d.c;
        dVar.getClass();
        dVar.getName().getClass();
    }
}
