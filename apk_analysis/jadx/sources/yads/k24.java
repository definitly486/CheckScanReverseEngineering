package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.monetization.ads.nativeads.CustomizableMediaView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class k24 {
    public final e4 a;
    public final yg6 b;
    public final xg6 c;
    public final ExecutorService d;

    public k24(Context context, e4 e4Var, bf5 bf5Var) {
        yg6 yg6Var = new yg6(context);
        xg6 xg6Var = new xg6(context, bf5Var);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.a = e4Var;
        this.b = yg6Var;
        this.c = xg6Var;
        this.d = executorServiceNewSingleThreadExecutor;
    }

    public final void a(CustomizableMediaView customizableMediaView, String str) {
        zx3 zx3Var;
        zx3 zx3Var2;
        e4 e4Var = this.a;
        String str2 = e4Var.c.a;
        if (str2 != null) {
            int i = e4Var.n;
            ViewGroup.LayoutParams layoutParams = customizableMediaView.getLayoutParams();
            Integer numValueOf = layoutParams != null ? Integer.valueOf(e46.a(layoutParams.width)) : null;
            ViewGroup.LayoutParams layoutParams2 = customizableMediaView.getLayoutParams();
            Integer numValueOf2 = layoutParams2 != null ? Integer.valueOf(e46.a(layoutParams2.height)) : null;
            int iA = e46.a(View.MeasureSpec.getSize(customizableMediaView.getWidthMeasureSpec()));
            int iA2 = e46.a(View.MeasureSpec.getSize(customizableMediaView.getHeightMeasureSpec()));
            int mode = View.MeasureSpec.getMode(customizableMediaView.getWidthMeasureSpec());
            if (mode != Integer.MIN_VALUE) {
                zx3Var = (mode == 0 || mode != 1073741824) ? zx3.UNSPECIFIED : zx3.EXACTLY;
            } else {
                zx3Var = zx3.AT_MOST;
            }
            int mode2 = View.MeasureSpec.getMode(customizableMediaView.getHeightMeasureSpec());
            if (mode2 != Integer.MIN_VALUE) {
                zx3Var2 = (mode2 == 0 || mode2 != 1073741824) ? zx3.UNSPECIFIED : zx3.EXACTLY;
            } else {
                zx3Var2 = zx3.AT_MOST;
            }
            this.d.execute(new defpackage.hu(this, new zg6(str2, i), new vg6(new ug6(e46.a(customizableMediaView.getWidth()), e46.a(customizableMediaView.getHeight())), new vr3(numValueOf, numValueOf2), new xx3(new yx3(iA, zx3Var), new yx3(iA2, zx3Var2)), defpackage.n05.e(new defpackage.b36("asset", "media"), new defpackage.b36("media_type", str))), 1));
        }
    }

    public static final void a(k24 k24Var, zg6 zg6Var, vg6 vg6Var) {
        k24Var.b.a(zg6Var, vg6Var);
        k24Var.c.a(vg6Var, k24Var.a);
    }
}
