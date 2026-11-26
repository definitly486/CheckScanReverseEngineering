package yads;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class mc extends ls4 {
    public final oc k;

    public mc(Context context) {
        new bo0();
        new fv3();
        oc ocVar = new oc(new uq4(context));
        super(context, null, null, 62);
        this.k = ocVar;
        if ("Xiaomi".equalsIgnoreCase(Build.MANUFACTURER)) {
            setLayerType(2, null);
        }
        setVisibility(0);
        setHtmlWebViewErrorListener(ocVar);
    }

    @Override // yads.ls4, yads.fa3
    public final void a(Context context, String str) {
        this.k.a(str);
    }

    @Override // yads.ls4
    public final void d() {
    }

    public final void setAdtuneWebViewListener(pc pcVar) {
        this.k.d = pcVar;
    }
}
