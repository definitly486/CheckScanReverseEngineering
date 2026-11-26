package defpackage;

import androidx.media3.common.C;
import androidx.window.core.layout.WindowSizeClass;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = mc2.class)
public abstract class lc2 {
    public static final a Companion = new a();
    public static final c a;
    public static final d b;

    public static final class a {
        public final df4<lc2> serializer() {
            return mc2.a;
        }
    }

    @up7(with = i92.class)
    public static abstract class b extends lc2 {
        public static final a Companion = new a();

        public static final class a {
            public final df4<b> serializer() {
                return i92.a;
            }
        }
    }

    @up7(with = rc2.class)
    public static final class c extends b {
        public static final a Companion = new a();
        public final int c;

        public static final class a {
            public final df4<c> serializer() {
                return rc2.a;
            }
        }

        public c(int i) {
            this.c = i;
            if (i > 0) {
                return;
            }
            c9.f(kv2.b(i, "Unit duration must be positive, but was ", " days."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.c == ((c) obj).c;
            }
            return false;
        }

        public final int hashCode() {
            return this.c ^ 65536;
        }

        public final String toString() {
            int i = this.c;
            return i % 7 == 0 ? lc2.a(i / 7, "WEEK") : lc2.a(i, "DAY");
        }
    }

    @up7(with = hd5.class)
    public static final class d extends b {
        public static final a Companion = new a();
        public final int c;

        public static final class a {
            public final df4<d> serializer() {
                return hd5.a;
            }
        }

        public d(int i) {
            this.c = i;
            if (i > 0) {
                return;
            }
            c9.f(kv2.b(i, "Unit duration must be positive, but was ", " months."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                return this.c == ((d) obj).c;
            }
            return false;
        }

        public final int hashCode() {
            return this.c ^ 131072;
        }

        public final String toString() {
            int i = this.c;
            if (i % WindowSizeClass.WIDTH_DP_LARGE_LOWER_BOUND == 0) {
                return lc2.a(i / WindowSizeClass.WIDTH_DP_LARGE_LOWER_BOUND, "CENTURY");
            }
            if (i % 12 == 0) {
                return lc2.a(i / 12, "YEAR");
            }
            return i % 3 == 0 ? lc2.a(i / 3, "QUARTER") : lc2.a(i, "MONTH");
        }
    }

    @up7(with = fu8.class)
    public static final class e extends lc2 {
        public static final a Companion = new a();
        public final long c;
        public final String d;
        public final long e;

        public static final class a {
            public final df4<e> serializer() {
                return fu8.a;
            }
        }

        public e(long j) {
            this.c = j;
            if (j <= 0) {
                c9.f(bg.d(j, "Unit duration must be positive, but was ", " ns."));
                throw null;
            }
            if (j % 3600000000000L == 0) {
                this.d = "HOUR";
                this.e = j / 3600000000000L;
                return;
            }
            if (j % 60000000000L == 0) {
                this.d = "MINUTE";
                this.e = j / 60000000000L;
                return;
            }
            if (j % C.NANOS_PER_SECOND == 0) {
                this.d = "SECOND";
                this.e = j / C.NANOS_PER_SECOND;
            } else if (j % 1000000 == 0) {
                this.d = "MILLISECOND";
                this.e = j / 1000000;
            } else if (j % 1000 == 0) {
                this.d = "MICROSECOND";
                this.e = j / 1000;
            } else {
                this.d = "NANOSECOND";
                this.e = j;
            }
        }

        public final e b(int i) {
            return new e(Math.multiplyExact(this.c, i));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                return this.c == ((e) obj).c;
            }
            return false;
        }

        public final int hashCode() {
            long j = this.c;
            return ((int) j) ^ ((int) (j >> 32));
        }

        public final String toString() {
            String str = this.d;
            str.getClass();
            long j = this.e;
            if (j == 1) {
                return str;
            }
            return j + '-' + str;
        }
    }

    static {
        new e(1L).b(1000).b(1000).b(1000).b(60).b(60);
        c cVar = new c(1);
        a = cVar;
        new c(Math.multiplyExact(cVar.c, 7));
        d dVar = new d(1);
        b = dVar;
        int i = dVar.c;
        new d(Math.multiplyExact(i, 3));
        new d(Math.multiplyExact(new d(Math.multiplyExact(i, 12)).c, 100));
    }

    public static String a(int i, String str) {
        if (i == 1) {
            return str;
        }
        return i + '-' + str;
    }
}
