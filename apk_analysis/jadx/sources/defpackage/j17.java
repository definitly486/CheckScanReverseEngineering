package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j17 {
    public static final g17 a;
    public static final g17 b;
    public static final g17 c;
    public static final g17 d;
    public static final g17 e;

    public static final class a extends gh4 implements ll3<g17> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\*{2}[^*]+\\*{2}");
        }
    }

    public static final class b extends gh4 implements ll3<g17> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\*{2}[^*]+\\*{2}");
        }
    }

    public static final class c extends gh4 implements ll3<g17> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("_[^_]+_");
        }
    }

    public static final class d extends gh4 implements ll3<g17> {
        public static final d f = new d(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("_[^_]+_");
        }
    }

    public static final class e extends gh4 implements ll3<g17> {
        public static final e f = new e(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\[[^()]*].?\\([^\\[\\]]*\\)");
        }
    }

    public static final class f extends gh4 implements ll3<g17> {
        public static final f f = new f(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\[[^()]*].?\\([^\\[\\]]*\\)");
        }
    }

    public static final class g extends gh4 implements ll3<g17> {
        public static final g f = new g(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\n-\\h.*[^\\n]");
        }
    }

    public static final class h extends gh4 implements ll3<g17> {
        public static final h f = new h(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("\\\\n-\\\\h.*[^\\\\n]");
        }
    }

    public static final class i extends gh4 implements ll3<g17> {
        public static final i f = new i(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("^#+\\h*\\n*");
        }
    }

    public static final class j extends gh4 implements ll3<g17> {
        public static final j f = new j(0);

        @Override // defpackage.ll3
        public final g17 invoke() {
            return new g17("^#+\\\\h*\\\\n*");
        }
    }

    static {
        fh8 fh8VarB = nm4.b(a.f);
        fh8 fh8VarB2 = nm4.b(c.f);
        fh8 fh8VarB3 = nm4.b(e.f);
        fh8 fh8VarB4 = nm4.b(g.f);
        fh8 fh8VarB5 = nm4.b(i.f);
        nm4.b(b.f);
        nm4.b(d.f);
        nm4.b(f.f);
        nm4.b(h.f);
        nm4.b(j.f);
        a = (g17) fh8VarB.getValue();
        b = (g17) fh8VarB2.getValue();
        c = (g17) fh8VarB3.getValue();
        d = (g17) fh8VarB4.getValue();
        e = (g17) fh8VarB5.getValue();
    }
}
