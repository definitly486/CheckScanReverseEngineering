package defpackage;

import androidx.window.layout.WindowMetricsCalculator;
import yads.e92;
import yads.o91;
import yads.yj1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class oy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ oy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.k);
            case 1:
                return WindowMetricsCalculator.Companion.reset$lambda$1((WindowMetricsCalculator) obj);
            case 2:
                return Boolean.valueOf(e92.a(obj));
            case 3:
                return o91.a((String) obj);
            default:
                return yj1.a((String) obj);
        }
    }
}
