package yads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ni4 extends ij4 implements pg4 {
    public final mi4 Q;
    public final b05 R;

    public ni4(Context context, mi4 mi4Var, b05 b05Var, rt rtVar, we4 we4Var) {
        super(context, rtVar, we4Var);
        this.Q = mi4Var;
        this.R = b05Var;
        e4 e4Var = rtVar.a.c;
        hk4 hk4Var = hk4.AD;
        zh4 zh4Var = new zh4(e4Var, "ad_unit", this.i, this.j, new xh4());
        zh4Var.f = gi4.CUSTOM;
        a(zh4Var);
    }

    @Override // yads.pg4
    public final String a() {
        return this.Q.a();
    }

    public final g70 b(ih4 ih4Var) {
        try {
            a(ih4Var.c, this.R, new rh4(ih4Var));
            return f70.a;
        } catch (yf4 e) {
            jn3.a("Ad binding failed: %s", e.b);
            return new e70(e.c, e);
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "Ad binding failed with unexpected exception";
            }
            jn3.a("Ad binding failed with unexpected error: %s", message);
            return new e70(null, th);
        }
    }

    @Override // yads.pg4
    public final String c() {
        return this.Q.c();
    }

    @Override // yads.pg4
    public final s70 e() {
        return this.Q.e();
    }

    @Override // yads.pg4
    public final f80 getAdAssets() {
        return this.Q.getAdAssets();
    }

    @Override // yads.pg4
    public final f95 getAdType() {
        return this.Q.getAdType();
    }

    @Override // yads.pg4
    public final String getInfo() {
        return this.Q.getInfo();
    }

    public final ArrayList k() {
        return new ArrayList(this.Q.a);
    }

    @Override // yads.ij4, yads.pg4
    public final void loadImages() {
        this.Q.loadImages();
    }

    @Override // yads.pg4
    public final void a(ih4 ih4Var, pz pzVar) {
        this.Q.a(ih4Var, pzVar);
    }

    @Override // yads.pg4
    public final g70 a(ih4 ih4Var) {
        return this.Q.a(ih4Var);
    }

    @Override // yads.ij4, yads.pg4
    public final void a(h80 h80Var) {
        this.Q.a(h80Var);
    }

    public final void b(h80 h80Var) {
        super.a(h80Var);
    }
}
