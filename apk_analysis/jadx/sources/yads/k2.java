package yads;

import android.view.Window;
import android.widget.RelativeLayout;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class k2 implements o2 {
    public final bf5 a;

    public k2(bf5 bf5Var) {
        this.a = bf5Var;
    }

    @Override // yads.o2
    public final n2 a(AdActivity adActivity, RelativeLayout relativeLayout, x2 x2Var, i2 i2Var, Window window, f2 f2Var) {
        zg5 zg5Var;
        if (f2Var == null) {
            return null;
        }
        d9 d9Var = f2Var.a;
        e4 e4Var = f2Var.b;
        pg4 pg4Var = f2Var.e;
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
        fe5 fe5VarA = zg5Var2.a(window.getContext());
        if (pg4Var == null) {
            return null;
        }
        return new m2(adActivity, relativeLayout, window, pg4Var, d9Var, x2Var, i2Var, e4Var, this.a, f2Var.f, fe5VarA);
    }
}
