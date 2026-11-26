package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.my.target.b3;
import com.my.target.m1;
import com.my.target.t;
import com.my.target.t0;
import com.my.target.u;
import com.my.target.x;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ph5 implements m95 {
    public kia a;
    public z94 b;

    public class a implements z94.a {
        public final x.a a;

        public a(x.a aVar) {
            this.a = aVar;
        }

        @Override // z94.a
        public final void a(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: Ad displayed");
            x.a aVar = this.a;
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            m1.d(aVar.a.d, "show", 1, null);
            xVar.j.d();
        }

        @Override // z94.a
        public final void b(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: Video completed");
            x.a aVar = this.a;
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            xVar.k.b();
            m1.d(aVar.a.d, "reward", 999, null);
        }

        @Override // z94.a
        public final void c(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: On failed to show");
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            xVar.j.c();
        }

        @Override // z94.a
        public final void d(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: Ad loaded");
            x.a aVar = this.a;
            et9 et9Var = aVar.a;
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            y14.r(null, "MediationInterstitialAdEngine$AdapterListener: Data from " + et9Var.a + " ad network loaded successfully");
            xVar.a(et9Var, true);
            z94 z94Var2 = z94.this;
            z94.a aVar2 = z94Var2.h;
            if (aVar2 != null) {
                aVar2.d(z94Var2);
            }
        }

        @Override // z94.a
        public final void e(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: Ad dismissed");
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            xVar.j.a();
        }

        @Override // z94.a
        public final void f(z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: Ad clicked");
            x.a aVar = this.a;
            x xVar = x.this;
            if (xVar.d != ph5.this) {
                return;
            }
            m1.d(aVar.a.d, "click", 2, null);
            z94 z94Var2 = z94.this;
            z94.a aVar2 = z94Var2.h;
            if (aVar2 != null) {
                aVar2.f(z94Var2);
            }
        }

        @Override // z94.a
        public final void g(l6a l6aVar, z94 z94Var) {
            y14.r(null, "MyTargetInterstitialAdAdapter: No ad (" + l6aVar.b + ")");
            this.a.a(l6aVar, ph5.this);
        }
    }

    @Override // defpackage.m95
    public final void a(t.a aVar, x.a aVar2, Context context) {
        String str = aVar.a;
        try {
            int i = Integer.parseInt(str);
            z94 z94Var = new z94(i, context);
            this.b = z94Var;
            z2a z2aVar = z94Var.a;
            z2aVar.c = false;
            z94Var.h = new a(aVar2);
            f72 f72Var = z2aVar.a;
            int i2 = aVar.d;
            if (i2 >= 0) {
                y14.r(null, "CustomParams: Age param set to " + i2);
                f72Var.b("ea", String.valueOf(i2));
            } else {
                y14.r(null, "CustomParams: Age param removed");
                f72Var.c("ea");
            }
            int i3 = aVar.c;
            int i4 = 2;
            if (i3 == 0 || i3 == 1 || i3 == 2) {
                y14.r(null, "CustomParams: Gender param is set to " + i3);
                f72Var.b("eg", String.valueOf(i3));
            } else {
                f72Var.c("eg");
                y14.r(null, "CustomParams: Gender param removed");
            }
            for (Map.Entry entry : aVar.e.entrySet()) {
                String str2 = (String) entry.getKey();
                String str3 = (String) entry.getValue();
                if ("stories_playhead_v2".equals(str2)) {
                    if (Objects.equals(str3, "1")) {
                        y14.r(null, "CustomParams: STORIES_PLAYHEAD_V2 feature flag enabled");
                    } else {
                        y14.r(null, "CustomParams: STORIES_PLAYHEAD_V2 feature flag disabled");
                    }
                }
                f72Var.b(str2, str3);
                synchronized (f72Var) {
                    if (!TextUtils.isEmpty(str2)) {
                        HashMap map = f72Var.b;
                        if (str3 == null) {
                            map.remove(str2);
                        } else {
                            map.put(str2, str3);
                        }
                    }
                }
            }
            String str4 = aVar.b;
            if (this.a != null) {
                y14.r(null, "MyTargetInterstitialAdAdapter: Got banner from mediation response");
                z94 z94Var2 = this.b;
                kia kiaVar = this.a;
                t0.a aVar3 = z94Var2.b;
                t0 t0Var = new t0(aVar3.a, "myTarget", 0);
                t0Var.e = aVar3.b;
                u uVar = new u(z94Var2.a, aVar3, kiaVar);
                uVar.c = new jd0(z94Var2);
                Context applicationContext = z94Var2.e.getApplicationContext();
                if (!rh5.a.get()) {
                    rh5.a(applicationContext);
                }
                w4a.a(new nr1(i4, uVar, t0Var));
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                y14.r(null, "MyTargetInterstitialAdAdapter: Load id " + i);
                this.b.b();
                return;
            }
            y14.r(null, "MyTargetInterstitialAdAdapter: Load id " + i + " from BID " + str4);
            z94 z94Var3 = this.b;
            z94Var3.a.d = str4;
            z94Var3.b();
        } catch (Throwable unused) {
            y14.u(null, "MyTargetInterstitialAdAdapter: Error - failed to request ad, unable to convert slotId " + str + " to int");
            aVar2.a(l6a.o, this);
        }
    }

    @Override // defpackage.l95
    public final void destroy() {
        z94 z94Var = this.b;
        if (z94Var == null) {
            return;
        }
        z94Var.h = null;
        b3 b3Var = z94Var.f;
        if (b3Var != null) {
            b3Var.destroy();
            z94Var.f = null;
        }
        z94Var.h = null;
        this.b = null;
    }

    @Override // defpackage.m95
    public final void show() {
        z94 z94Var = this.b;
        if (z94Var == null) {
            return;
        }
        z94Var.c();
    }
}
