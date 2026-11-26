package defpackage;

import android.content.Context;
import com.my.target.b3;
import com.my.target.t0;
import com.my.target.u;

/* JADX INFO: loaded from: classes4.dex */
public abstract class kd0 extends zc0 {
    public final Context e;
    public b3 f;
    public t0 g;

    public kd0(int i, Context context) {
        super(i, context);
        this.e = context;
    }

    public abstract void a(kia kiaVar, j8a j8aVar);

    public final void b() {
        boolean zCompareAndSet = this.c.compareAndSet(false, true);
        z2a z2aVar = this.a;
        if (!zCompareAndSet) {
            y14.r(null, "BaseInterstitialAd: Interstitial/Rewarded doesn't support multiple load");
            z2aVar.g.a(null, 0, 0, 1, null);
            l6a l6aVar = l6a.t;
            j8a j8aVar = new j8a();
            j8aVar.a = l6aVar;
            a(null, j8aVar);
            return;
        }
        int i = z2aVar.e;
        l5a l5aVar = l4a.a;
        z8a z8aVar = new z8a(this.d, null, Integer.valueOf(i), 3, 0, l5aVar);
        z2aVar.g = z8aVar;
        z8aVar.g = 0;
        z8aVar.b(0);
        t0.a aVar = this.b;
        t0 t0Var = new t0(aVar.a, "myTarget", 0);
        t0Var.e = aVar.b;
        u uVar = new u(z2aVar, aVar, null);
        uVar.c = new u20(this, 1);
        Context applicationContext = this.e.getApplicationContext();
        if (!rh5.a.get()) {
            rh5.a(applicationContext);
        }
        w4a.a(new nr1(2, uVar, t0Var));
    }

    public final void c() {
        b3 b3Var = this.f;
        if (b3Var == null) {
            y14.t("Base interstitial ad show - no ad");
        } else {
            b3Var.a(this.e);
        }
    }
}
