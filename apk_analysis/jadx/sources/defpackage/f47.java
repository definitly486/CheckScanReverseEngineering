package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;

/* JADX INFO: loaded from: classes3.dex */
public final class f47 implements i47<Uri, Bitmap> {
    public final k47 a;
    public final ij0 b;

    public f47(k47 k47Var, ij0 ij0Var) {
        this.a = k47Var;
        this.b = ij0Var;
    }

    @Override // defpackage.i47
    public final e47<Bitmap> a(Uri uri, int i, int i2, xz5 xz5Var) {
        e47 e47VarC = this.a.c(uri, xz5Var);
        if (e47VarC == null) {
            return null;
        }
        return os2.a(this.b, (Drawable) ((ns2) e47VarC).get(), i, i2);
    }

    @Override // defpackage.i47
    public final boolean b(Uri uri, xz5 xz5Var) {
        return "android.resource".equals(uri.getScheme());
    }
}
