package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class xm9 {
    public static volatile xm9 i;
    public final Context a;
    public final fh8 b = new fh8(new f());
    public final fh8 c = new fh8(new a());
    public final fh8 d = new fh8(new g());
    public final fh8 e = new fh8(new b());
    public final fh8 f = new fh8(new c());
    public final fh8 g = new fh8(new e());
    public final fh8 h = nm4.b(d.f);

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a extends gh4 implements ll3<ow9> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ow9 invoke() {
            Context context = xm9.this.a;
            return new ow9(context, ql9.c.a(context).b);
        }
    }

    public static final class b extends gh4 implements ll3<t0a> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final t0a invoke() {
            ((hfa) xm9.this.f.getValue()).getClass();
            return new t0a();
        }
    }

    public static final class c extends gh4 implements ll3<hfa> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final hfa invoke() {
            return new hfa(xm9.this.a, new defpackage.g());
        }
    }

    public static final class d extends gh4 implements ll3<sha> {
        public static final d f = new d(0);

        @Override // defpackage.ll3
        public final sha invoke() {
            return new sha(new nh5(2), new u49());
        }
    }

    public static final class e extends gh4 implements ll3<hia> {
        public e() {
            super(0);
        }

        @Override // defpackage.ll3
        public final hia invoke() {
            xm9 xm9Var = xm9.this;
            return new hia((sha) xm9Var.h.getValue(), new c6a(xm9Var.a));
        }
    }

    public static final class f extends gh4 implements ll3<ru6> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final ru6 invoke() {
            xm9 xm9Var = xm9.this;
            return new ru6(xm9Var.a, new zya(), new eg9(3), new h03(1), (t0a) xm9Var.e.getValue(), new v8a(), (ow9) xm9Var.c.getValue(), new rm9());
        }
    }

    public static final class g extends gh4 implements ll3<fm9> {
        public g() {
            super(0);
        }

        @Override // defpackage.ll3
        public final fm9 invoke() {
            xm9 xm9Var = xm9.this;
            return new fm9((hfa) xm9Var.f.getValue(), (hia) xm9Var.g.getValue());
        }
    }

    public static final class h {
        public static xm9 a(Context context) {
            xm9 xm9Var;
            synchronized (h.class) {
                xm9Var = xm9.i;
                if (xm9Var == null) {
                    xm9Var = new xm9(context);
                    xm9.i = xm9Var;
                    ow9 ow9Var = (ow9) xm9Var.c.getValue();
                    ow9Var.getClass();
                    uz4 uz4Var = new uz4();
                    ow9Var.b(uz4Var);
                    j59 j59Var = j59.a;
                    ow9Var.c("SDKInfoNewImplementationTemporary", uz4Var.b());
                }
            }
            return xm9Var;
        }
    }

    public xm9(Context context) {
        this.a = context;
    }
}
