package yads;

import android.content.Context;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ho6 {
    public final eg a;
    public final lg b;

    public ho6(Context context, eg egVar) {
        lg lgVar = new lg(context);
        this.a = egVar;
        this.b = lgVar;
    }

    public final void a(Set set) {
        if (this.b.c()) {
            eg egVar = this.a;
            egVar.getClass();
            try {
                wm0 wm0Var = (wm0) egVar.a.getValue(egVar, eg.b[0]);
                if (wm0Var != null) {
                    wm0Var.a.setTriggeredTestIds(set);
                }
            } catch (Throwable unused) {
                set.toString();
            }
        }
    }

    public final void a(String str) {
        if (this.b.c()) {
            eg egVar = this.a;
            egVar.getClass();
            try {
                wm0 wm0Var = (wm0) egVar.a.getValue(egVar, eg.b[0]);
                if (wm0Var != null) {
                    wm0Var.a.setExperiments(str);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
