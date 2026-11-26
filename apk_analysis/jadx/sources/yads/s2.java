package yads;

import android.content.Context;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.j59;
import defpackage.k57;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class s2 implements n2 {
    public final AdActivity a;
    public final f2 b;
    public final x1 c;

    public s2(AdActivity adActivity, f2 f2Var, bf5 bf5Var) {
        Context context = ((do6) bf5Var).a;
        x1 x1Var = new x1(mw.a(context, context));
        this.a = adActivity;
        this.b = f2Var;
        this.c = x1Var;
    }

    @Override // yads.n2
    public final void a() {
    }

    @Override // yads.n2
    public final void b() {
    }

    @Override // yads.n2
    public final void c() {
        Object aVar;
        x1 x1Var = this.c;
        AdActivity adActivity = this.a;
        f2 f2Var = this.b;
        x1Var.getClass();
        en0 en0Var = f2Var.g;
        if (en0Var == null) {
            return;
        }
        try {
            adActivity.startActivityForResult(en0Var.a, 0);
            aVar = j59.a;
            y1 y1Var = x1Var.a;
            h75 h75VarA = y1Var.b.a(f2Var.b, f2Var.a);
            e75 e75Var = e75.AD_LOADING_RESULT;
            Map map = h75VarA.a;
            y1Var.a.a(new g75("activity_result_opened", defpackage.n05.n(map), h75VarA.b));
            en0Var.b.invoke();
            adActivity.finish();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            adActivity.finish();
            x1Var.a.a.reportError("Failed to register ActivityResult", thA);
            en0Var.c.invoke(thA);
        }
    }

    @Override // yads.n2
    public final boolean d() {
        return true;
    }

    @Override // yads.n2
    public final void f() {
    }

    @Override // yads.n2
    public final void g() {
    }

    @Override // yads.n2
    public final void onAdClosed() {
    }
}
