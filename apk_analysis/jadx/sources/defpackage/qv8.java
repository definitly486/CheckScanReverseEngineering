package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public interface qv8 {

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements qv8 {
        public static final a a = new a();

        /* JADX INFO: renamed from: qv8$a$a, reason: collision with other inner class name */
        public static final class C0320a implements kp1 {
            public final long b;

            public /* synthetic */ C0320a(long j) {
                this.b = j;
            }

            public static long a(long j) {
                long jB = dd5.b();
                au2 au2Var = au2.NANOSECONDS;
                au2Var.getClass();
                return (1 | (j - 1)) == Long.MAX_VALUE ? wt2.n(ew4.a(j)) : ew4.c(jB, j, au2Var);
            }

            public static final long c(long j, long j2) {
                int i = dd5.b;
                au2 au2Var = au2.NANOSECONDS;
                au2Var.getClass();
                if (((j2 - 1) | 1) != Long.MAX_VALUE) {
                    return (1 | (j - 1)) == Long.MAX_VALUE ? ew4.a(j) : ew4.c(j, j2, au2Var);
                }
                if (j != j2) {
                    return wt2.n(ew4.a(j2));
                }
                wt2.a aVar = wt2.c;
                return 0L;
            }

            @Override // java.lang.Comparable
            public final int compareTo(kp1 kp1Var) {
                kp1 kp1Var2 = kp1Var;
                kp1Var2.getClass();
                boolean z = kp1Var2 instanceof C0320a;
                long j = this.b;
                if (z) {
                    return wt2.d(c(j, ((C0320a) kp1Var2).b), 0L);
                }
                throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) ("ValueTimeMark(reading=" + j + ')')) + " and " + kp1Var2);
            }

            public final boolean equals(Object obj) {
                if (obj instanceof C0320a) {
                    return this.b == ((C0320a) obj).b;
                }
                return false;
            }

            public final int hashCode() {
                return Long.hashCode(this.b);
            }

            @Override // defpackage.kp1
            public final long m() {
                return a(this.b);
            }

            public final String toString() {
                return rg.g("ValueTimeMark(reading=", this.b, ')');
            }
        }

        @Override // defpackage.qv8
        public final C0320a a() {
            return new C0320a(dd5.b());
        }

        public final String toString() {
            int i = dd5.b;
            return "TimeSource(System.nanoTime())";
        }
    }

    a.C0320a a();
}
