package yads;

import android.content.Context;
import com.monetization.ads.core.divkit.DivKitFeature;

/* JADX INFO: loaded from: classes6.dex */
public final class mo1 {
    public final zg5 a;

    public mo1() {
        zg5 zg5Var;
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
        this.a = zg5Var2;
    }

    public final boolean a(Context context) {
        fe5 fe5VarA = this.a.a(context);
        return (!DivKitFeature.isEnabled() || fe5VarA == null || fe5VarA.v) ? false : true;
    }
}
