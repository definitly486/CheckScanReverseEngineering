package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class r1 {
    public static final /* synthetic */ defpackage.ze4[] m = {cb.a(r1.class, "activityInteractionEventListener", "getActivityInteractionEventListener()Lcom/monetization/ads/base/tracker/interaction/ActivityInteractionEventListener;", 0)};
    public final e4 a;
    public final d9 b;
    public final mt2 c;
    public final u8 d;
    public final q84 e;
    public final tt2 f;
    public final qt2 g;
    public final boolean h;
    public final e55 i;
    public q1 j;
    public zh4 k;
    public long l;

    /* JADX WARN: Code duplicated, block: B:25:0x0049  */
    public r1(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, p1 p1Var, mt2 mt2Var) {
        boolean z;
        zg5 zg5Var;
        u8 u8Var = new u8();
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        tt2 tt2Var = mt2Var != null ? new tt2(context, e4Var, bf5Var, mt2Var) : null;
        qt2 qt2VarA = pt2.a(context);
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA != null) {
            z = fe5VarA.J;
        }
        this.a = e4Var;
        this.b = d9Var;
        this.c = mt2Var;
        this.d = u8Var;
        this.e = q84VarA;
        this.f = tt2Var;
        this.g = qt2VarA;
        this.h = z;
        this.i = new e55(p1Var);
    }

    public final g75 a(q1 q1Var, String str) {
        h75 h75VarA = this.d.a(this.a.e);
        h75VarA.b(q1Var.b, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        h75VarA.b(this.a.a.b, "ad_type");
        h75VarA.b(this.a.c.a, "ad_unit_id");
        h75VarA.b(str, "interval");
        zh4 zh4Var = this.k;
        if (zh4Var != null) {
            h75VarA = i75.a(h75VarA, zh4Var.a());
        }
        e75 e75Var = e75.AD_LOADING_RESULT;
        Map map = h75VarA.a;
        d9 d9Var = this.b;
        return new g75("returned_to_app", defpackage.n05.n(map), d9Var != null ? d9Var.i : null);
    }

    public final void b(q1 q1Var) throws JSONException {
        Objects.toString(q1Var);
        this.l = System.currentTimeMillis();
        this.j = q1Var;
        if (q1Var == q1.BROWSER && this.h) {
            Map mapB = a(q1Var, null).b();
            d9 d9Var = this.b;
            this.g.a(new nt2(this.a.a(), this.l, q1Var, this.c, mapB, d9Var != null ? d9Var.a() : null));
        }
    }

    public final void a(q1 q1Var) {
        Objects.toString(q1Var);
        if (this.l == 0 || this.j != q1Var) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.l;
        this.e.a(a(q1Var, zp3.a(jCurrentTimeMillis)));
        e55 e55Var = this.i;
        defpackage.ze4 ze4Var = m[0];
        p1 p1Var = (p1) e55Var.a.get();
        if (p1Var != null) {
            p1Var.onReturnedToApplication();
        }
        tt2 tt2Var = this.f;
        if (tt2Var != null) {
            tt2Var.a(jCurrentTimeMillis);
        }
        if (this.h) {
            this.g.a(this.l);
        }
        this.l = 0L;
        this.j = null;
    }
}
