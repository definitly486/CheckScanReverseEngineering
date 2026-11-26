package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface n64 {

    public static final class a implements n64 {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // defpackage.n64
        public final g64 toInstant() {
            throw new i64(this.a + " when parsing an Instant from \"" + m64.e(64, this.b) + '\"');
        }
    }

    public static final class b implements n64 {
        public final long a;
        public final int b;

        public b(long j, int i) {
            this.a = j;
            this.b = i;
        }

        @Override // defpackage.n64
        public final g64 toInstant() {
            long j = g64.d.b;
            long j2 = this.a;
            if (j2 < j || j2 > g64.e.b) {
                throw new i64(rg.g("The parsed date is outside the range representable by Instant (Unix epoch second ", j2, ')'));
            }
            return g64.a.a(this.b, j2);
        }
    }

    g64 toInstant();
}
