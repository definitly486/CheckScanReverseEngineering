package defpackage;

import android.graphics.drawable.BitmapDrawable;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class wi0 implements l47<BitmapDrawable> {
    public final ij0 b;
    public final yi0 c;

    public wi0(ij0 ij0Var, yi0 yi0Var) {
        this.b = ij0Var;
        this.c = yi0Var;
    }

    @Override // defpackage.l47
    public final rx2 c(xz5 xz5Var) {
        return rx2.TRANSFORMED;
    }

    @Override // defpackage.vx2
    public final boolean d(Object obj, File file, xz5 xz5Var) {
        return this.c.d(new kj0(this.b, ((BitmapDrawable) ((e47) obj).get()).getBitmap()), file, xz5Var);
    }
}
