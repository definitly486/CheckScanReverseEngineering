package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
final class e2 implements d2 {
    private final h1 a;
    private final String b;

    public static final class a implements d2.a {
        private final h1 a;
        private final h1.f b;

        public a(h1 h1Var, h1.f fVar) {
            this.a = h1Var;
            this.b = fVar;
        }

        @Override // com.my.tracker.obfuscated.d2.a
        public long a() {
            return this.b.a();
        }

        @Override // com.my.tracker.obfuscated.d2.a
        public boolean b() {
            return this.b.b();
        }

        @Override // com.my.tracker.obfuscated.d2.a
        public long c() {
            return this.b.c();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.b.close();
        }

        @Override // com.my.tracker.obfuscated.d2.a
        public d2.b d() {
            return new b(this.a.h(this.b.a()));
        }

        @Override // com.my.tracker.obfuscated.d2.a
        public String k() {
            return this.b.k();
        }
    }

    public static final class b implements d2.b {
        private final h1.g a;

        public b(h1.g gVar) {
            this.a = gVar;
        }

        @Override // com.my.tracker.obfuscated.d2.b
        public boolean b() {
            return this.a.b();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.a.close();
        }

        @Override // com.my.tracker.obfuscated.d2.b
        public boolean f() {
            return this.a.o();
        }

        @Override // com.my.tracker.obfuscated.d2.b
        public long h() {
            return this.a.n();
        }

        @Override // com.my.tracker.obfuscated.d2.b
        public long j() {
            return this.a.m();
        }
    }

    public e2(h1 h1Var, String str) {
        this.a = h1Var;
        this.b = str;
    }

    @Override // com.my.tracker.obfuscated.d2
    public d2.a a() {
        h1 h1Var = this.a;
        return new a(h1Var, h1Var.a(this.b));
    }
}
