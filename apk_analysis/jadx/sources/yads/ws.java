package yads;

import android.content.Context;
import androidx.media3.common.MimeTypes;
import androidx.window.core.layout.WindowSizeClass;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ws {
    public final a04 a;
    public final iu b;

    public ws(Context context) {
        a04 a04Var = ao0.TV == new bo0().a(context.getApplicationContext()) ? new a04(1920, 1080, 6800) : new a04(854, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, 1000);
        iu iuVar = new iu(a04Var);
        this.a = a04Var;
        this.b = iuVar;
    }

    public final zz3 a(List list) {
        Iterator it = list.iterator();
        double d = -1.0d;
        zz3 zz3Var = null;
        while (it.hasNext()) {
            zz3 zz3Var2 = (zz3) it.next();
            double d2 = MimeTypes.VIDEO_MP4.equals(zz3Var2.d) ? 1.5d : 1.0d;
            iu iuVar = this.b;
            iuVar.getClass();
            int i = zz3Var2.i;
            if (i == 0) {
                int i2 = zz3Var2.h * zz3Var2.g;
                a04 a04Var = iuVar.a;
                i = (int) ((i2 / (a04Var.a * a04Var.b)) * a04Var.c);
            }
            int i3 = this.a.c;
            int iMax = (int) Math.max(0.0d, i);
            double dAbs = d2 / ((iMax < 100 ? 10.0d : ((double) ((int) Math.abs(i3 - iMax))) / ((double) i3)) + 1.0d);
            if (dAbs > d) {
                zz3Var = zz3Var2;
                d = dAbs;
            }
        }
        return zz3Var;
    }
}
