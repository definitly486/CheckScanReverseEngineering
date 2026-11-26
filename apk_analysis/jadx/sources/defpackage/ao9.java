package defpackage;

import android.text.TextUtils;
import com.my.target.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ao9 {
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public q H;
    public aga I;
    public String J;
    public String K;
    public boolean L;
    public String M;
    public String N;
    public boolean O;
    public final zn9 P;
    public final pp9 Q;
    public final n4a a;
    public final a0a b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public Float h;
    public Integer i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public List o;
    public h14 p;
    public h14 q;
    public t2a r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public int y;
    public float z;

    public ao9(pp9 pp9Var) {
        a0a a0aVar = new a0a();
        a0aVar.a = 1.0f;
        a0aVar.b = 0.5f;
        a0aVar.c = 0.0f;
        this.b = a0aVar;
        this.c = "";
        this.e = "";
        this.f = "";
        this.g = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = "web";
        this.n = "";
        new ArrayList();
        this.r = t2a.r;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = 0;
        this.A = "";
        this.B = "";
        this.L = false;
        this.M = "";
        this.O = true;
        zn9 zn9Var = new zn9();
        zn9Var.a = false;
        zn9Var.b = false;
        zn9Var.c = false;
        zn9Var.d = false;
        this.P = zn9Var;
        this.Q = pp9Var;
        this.a = new n4a(pp9Var);
    }

    public String a() {
        return this.K;
    }

    public final float b() {
        Float f = this.h;
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    public int c() {
        return this.x;
    }

    public final String d() {
        String strConcat = "";
        if (!TextUtils.isEmpty(this.n)) {
            strConcat = "" + this.n;
        }
        if (TextUtils.isEmpty(this.g)) {
            return strConcat;
        }
        if (!TextUtils.isEmpty(strConcat)) {
            strConcat = strConcat.concat(" ");
        }
        return strConcat + this.g;
    }

    public String e() {
        return this.G;
    }

    public void f(String str) {
        this.J = str;
    }

    public final String g() {
        String str = this.d;
        if (str == null) {
            return "store".equals(this.m) ? "Install" : "Visit";
        }
        return str;
    }

    public String h() {
        return this.J;
    }

    public void i(String str) {
        this.K = str;
    }

    public int j() {
        return this.y;
    }

    public ao9() {
        this(pp9.d);
    }
}
