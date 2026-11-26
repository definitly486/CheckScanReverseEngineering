package yads;

import android.graphics.Bitmap;
import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class pi1 implements yc3 {
    public final /* synthetic */ ji1 a;
    public final /* synthetic */ String b;

    public pi1(String str, ji1 ji1Var) {
        this.a = ji1Var;
        this.b = str;
    }

    @Override // yads.yc3
    public final void a(xc3 xc3Var, boolean z) {
        Bitmap bitmap = xc3Var.a;
        if (bitmap != null) {
            this.a.a(new uw(bitmap, Uri.parse(this.b), z ? hu.MEMORY : hu.NETWORK));
        }
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        this.a.a();
    }
}
