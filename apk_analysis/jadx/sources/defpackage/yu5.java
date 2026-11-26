package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yu5 {
    public static final j79<ea9> a;
    public static final j79<ea9> b;
    public static final j79<ea9> c;

    public /* synthetic */ class a extends tg5 {
        public static final a c = new a(ea9.class, "minutesOfHour", "getMinutesOfHour()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((ea9) obj).q();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((ea9) obj).d((Integer) obj2);
        }
    }

    public /* synthetic */ class b extends tg5 {
        public static final b c = new b(ea9.class, "secondsOfMinute", "getSecondsOfMinute()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((ea9) obj).j();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((ea9) obj).t((Integer) obj2);
        }
    }

    public static final class c implements c93<ea9> {
        public final wr6<ea9, Boolean> a = new wr6<>(a.c);

        public /* synthetic */ class a extends tg5 {
            public static final a c = new a(ea9.class, "isNegative", "isNegative()Ljava/lang/Boolean;", 0);

            @Override // defpackage.tg5, defpackage.bf4
            public final Object get(Object obj) {
                return ((ea9) obj).isNegative();
            }

            @Override // defpackage.tg5, defpackage.xe4
            public final void set(Object obj, Object obj2) {
                ((ea9) obj).c((Boolean) obj2);
            }
        }

        @Override // defpackage.c93
        public final boolean a(ea9 ea9Var) {
            ea9 ea9Var2 = ea9Var;
            ea9Var2.getClass();
            Integer numP = ea9Var2.p();
            if ((numP != null ? numP.intValue() : 0) == 0) {
                Integer numQ = ea9Var2.q();
                if ((numQ != null ? numQ.intValue() : 0) == 0) {
                    Integer numJ = ea9Var2.j();
                    if ((numJ != null ? numJ.intValue() : 0) == 0) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // defpackage.c93
        public final wr6 isNegative() {
            return this.a;
        }
    }

    public /* synthetic */ class d extends tg5 {
        public static final d c = new d(ea9.class, "totalHoursAbs", "getTotalHoursAbs()Ljava/lang/Integer;", 0);

        @Override // defpackage.tg5, defpackage.bf4
        public final Object get(Object obj) {
            return ((ea9) obj).p();
        }

        @Override // defpackage.tg5, defpackage.xe4
        public final void set(Object obj, Object obj2) {
            ((ea9) obj).f((Integer) obj2);
        }
    }

    static {
        c cVar = new c();
        a = new j79<>(new wr6(d.c), 0, 18, cVar, 8);
        b = new j79<>(new wr6(a.c), 0, 59, cVar, 8);
        c = new j79<>(new wr6(b.c), 0, 59, cVar, 8);
    }
}
