package defpackage;

import com.posthog.PostHogEvent;
import com.posthog.surveys.PostHogSurveysConfig;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class nb6 {
    public String A;
    public String B;
    public String C;
    public String D;
    public oc6 E;
    public lc6 F;
    public String G;
    public ad6 H;
    public qb6 I;
    public final ArrayList J;
    public final Object K;
    public final ArrayList L;
    public final Object M;
    public volatile boolean a;
    public boolean b;
    public boolean c;
    public final boolean d;
    public final boolean e;
    public int f;
    public int g;
    public final int h;
    public int i;
    public final int j;
    public int k;
    public final nl3<? super UUID, UUID> l;
    public final w46 m;
    public final co5 n;
    public final hm3<nb6, db6, ExecutorService, rb6, nc6, xb6, yb6> o;
    public final gm3<nb6, db6, ib6, String, ExecutorService, xc6<PostHogEvent>> p;
    public final ub6 q;
    public String r;
    public volatile mx2 s;
    public final String t;
    public final String u;
    public ic6 v;
    public final fh8 w;
    public ob6 x;
    public String y;
    public String z;

    public nb6() {
        throw null;
    }

    public nb6(String str, String str2, sa6 sa6Var) {
        vu2 vu2Var = new vu2(2);
        w46 w46Var = w46.IDENTIFIED_ONLY;
        new PostHogSurveysConfig();
        co5 co5Var = new co5();
        new CopyOnWriteArrayList();
        kb6 kb6Var = new kb6();
        ub6 ub6Var = new ub6(0);
        w46Var.getClass();
        this.a = false;
        int i = 1;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = 20;
        this.g = 1000;
        this.h = 50;
        this.i = 3;
        this.j = 1;
        this.k = 30;
        this.l = vu2Var;
        this.m = w46Var;
        this.n = co5Var;
        this.o = kb6Var;
        this.p = sa6Var;
        this.q = ub6Var;
        this.r = null;
        this.s = mx2.b;
        this.t = ta8.f0(str).toString();
        String string = ta8.f0(str2).toString();
        this.u = ta8.M(string) ? "https://us.i.posthog.com" : string;
        this.v = new mc6();
        this.w = new fh8(new p14(this, i));
        this.y = "posthog-java";
        this.z = "6.27.0";
        this.G = "/s/";
        this.I = new sb6();
        this.J = new ArrayList();
        this.K = new Object();
        this.L = new ArrayList();
        this.M = new Object();
    }

    public final void a(ac6 ac6Var) {
        synchronized (this.K) {
            this.J.add(ac6Var);
        }
    }

    public final wd6 b() {
        return (wd6) this.w.getValue();
    }
}
