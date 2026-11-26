package yads;

import android.app.Activity;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class uc extends ls4 {
    public final yc k;

    public uc(Activity activity, yb ybVar) {
        new bo0();
        new fv3();
        yc ycVar = new yc(new lc(activity), ybVar);
        super(activity, null, null, 62);
        this.k = ycVar;
        if ("Xiaomi".equalsIgnoreCase(Build.MANUFACTURER)) {
            setLayerType(2, null);
        }
        setVisibility(0);
        setHtmlWebViewErrorListener(ycVar);
    }

    @Override // yads.ls4, yads.fa3
    public final void a(Context context, String str) {
        this.k.a(str);
    }

    @Override // yads.ls4
    public final void d() {
    }

    public final void setAdtuneWebViewListener(ad adVar) {
        this.k.e = adVar;
    }
}
