package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p54 {
    public z05 a;
    public zn5 b;
    public String c;
    public int d;

    public final String a(Pattern pattern) {
        z05 z05Var = this.a;
        z05Var.h = this.d;
        String strC = z05Var.c(pattern);
        this.d = this.a.h;
        return strC;
    }

    public abstract zn5 b();

    public final char c() {
        z05 z05Var = this.a;
        z05Var.h = this.d;
        return z05Var.d();
    }

    public abstract char d();

    public final void e() {
        z05 z05Var = this.a;
        z05Var.h = this.d;
        z05Var.c(z05.l);
        this.d = this.a.h;
    }

    public final dq8 f(String str) {
        this.a.getClass();
        return new dq8(str);
    }
}
