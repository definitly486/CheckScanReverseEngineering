package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
final class c2 implements b2 {
    private final h1 a;

    public static final class a implements b2.a {
        private final h1 a;
        private final h1.c b;

        public a(h1 h1Var, h1.c cVar) {
            this.a = h1Var;
            this.b = cVar;
        }

        @Override // com.my.tracker.obfuscated.b2.a
        public boolean b() {
            return this.b.b();
        }

        @Override // com.my.tracker.obfuscated.b2.a
        public long c() {
            return this.b.c();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.b.close();
        }

        @Override // com.my.tracker.obfuscated.b2.a
        public b2.b d() {
            return new b(this.a.e(this.b.a()));
        }

        @Override // com.my.tracker.obfuscated.b2.a
        public long g() {
            return this.b.g();
        }

        @Override // com.my.tracker.obfuscated.b2.a
        public byte[] l() {
            return this.b.l();
        }
    }

    public static final class b implements b2.b {
        private final h1.d a;

        public b(h1.d dVar) {
            this.a = dVar;
        }

        @Override // com.my.tracker.obfuscated.b2.b
        public boolean b() {
            return this.a.b();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.a.close();
        }

        @Override // com.my.tracker.obfuscated.b2.b
        public long e() {
            return this.a.e();
        }
    }

    public c2(h1 h1Var) {
        this.a = h1Var;
    }

    @Override // com.my.tracker.obfuscated.b2
    public b2.a a() {
        h1 h1Var = this.a;
        return new a(h1Var, h1Var.i());
    }
}
