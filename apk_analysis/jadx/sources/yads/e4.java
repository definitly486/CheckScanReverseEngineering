package yads;

import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class e4 {
    public final n70 a;
    public final c40 b;
    public final ma c;
    public final tl5 d;
    public n8 e;
    public hk4 f;
    public s46 g;
    public String h;
    public String i;
    public Integer j;
    public x54 k;
    public String l;
    public boolean m;
    public int n;
    public final int o;

    public e4(n70 n70Var) {
        c40 c40Var = new c40(new ed(), new vn2());
        ma maVar = new ma();
        tl5 tl5Var = new tl5();
        this.a = n70Var;
        this.b = c40Var;
        this.c = maVar;
        this.d = tl5Var;
        this.m = true;
        this.o = ra3.b;
    }

    public final void a(String str) {
        ma maVar = this.c;
        maVar.getClass();
        if (str == null || ta8.M(str)) {
            jn3.c("Ad Unit Id can't be null or empty.", new Object[0]);
            return;
        }
        String str2 = maVar.a;
        if (str2 == null || str2.equals(str)) {
            maVar.a = str;
        } else {
            jn3.c("Ad Unit Id can't be set twice.", new Object[0]);
        }
    }

    public final String b() {
        return this.c.a;
    }

    public final vn2 c() {
        return this.b.a;
    }

    public final void a(sl5 sl5Var) {
        tl5 tl5Var = this.d;
        if (sl5Var == null) {
            tl5Var.getClass();
            jn3.c("Ad size can't be null or empty.", new Object[0]);
            return;
        }
        sl5 sl5Var2 = tl5Var.a;
        if (sl5Var2 != null && !sl5Var2.equals(sl5Var)) {
            jn3.c("Ad size can't be set twice.", new Object[0]);
        } else {
            tl5Var.a = sl5Var;
        }
    }

    public final n70 a() {
        return this.a;
    }
}
