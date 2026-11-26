package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sx5 {
    public final gb2 a;
    public final bt0 b;
    public final ao2 c;
    public final fs2 d;
    public vq0 e;
    public final String f;
    public final List g;
    public final List h;
    public boolean i;
    public final uw5 j;

    public sx5(gb2 gb2Var, bt0 bt0Var, ao2 ao2Var, fs2 fs2Var) {
        this.a = gb2Var;
        this.b = bt0Var;
        this.c = ao2Var;
        this.d = fs2Var;
        String str = gb2Var.c;
        this.f = gb2Var.f;
        this.g = gb2Var.b;
        this.h = gb2Var.d;
        this.j = new uw5(str, new ox5(this), new px5(this), new qx5(this), new rx5(this), ao2Var);
        gb2Var.a.b(fs2Var, new defpackage.on4(this, 1));
        as2 as2Var = gb2Var.e;
        if (as2Var != null) {
            as2Var.b(fs2Var, new defpackage.gf6(this, 4));
        }
    }

    public static final j59 b(sx5 sx5Var, long j) {
        sx5Var.a();
        return j59.a;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(String str) {
        switch (str.hashCode()) {
            case -1367724422:
                if (str.equals("cancel")) {
                    this.j.a();
                    return;
                }
                break;
            case -934426579:
                if (str.equals("resume")) {
                    this.j.f();
                    return;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    this.j.i();
                    return;
                }
                break;
            case 106440182:
                if (str.equals("pause")) {
                    this.j.d();
                    return;
                }
                break;
            case 108404047:
                if (str.equals("reset")) {
                    this.j.e();
                    return;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    this.j.h();
                    return;
                }
                break;
        }
        this.c.a((RuntimeException) new IllegalArgumentException(str.concat(" is unsupported timer command!")));
    }

    public final void a() {
        uw5 uw5Var = this.j;
        long jLongValue = ((Number) this.a.a.a(this.d)).longValue();
        as2 as2Var = this.a.e;
        uw5Var.h = as2Var != null ? (Long) as2Var.a(this.d) : null;
        uw5Var.g = jLongValue != 0 ? Long.valueOf(jLongValue) : null;
    }

    public static final j59 a(sx5 sx5Var, long j) {
        sx5Var.a();
        return j59.a;
    }
}
