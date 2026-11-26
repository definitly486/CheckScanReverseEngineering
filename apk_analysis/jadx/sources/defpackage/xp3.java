package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.a;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class xp3 implements s19<up3> {
    public final s19<Bitmap> b;

    public xp3(s19<Bitmap> s19Var) {
        r96.c(s19Var, "Argument must not be null");
        this.b = s19Var;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // defpackage.s19
    public final e47<up3> b(Context context, e47<up3> e47Var, int i, int i2) {
        up3 up3Var = e47Var.get();
        kj0 kj0Var = new kj0(a.a(context).b, up3Var.b.a.l);
        s19<Bitmap> s19Var = this.b;
        e47<Bitmap> e47VarB = s19Var.b(context, kj0Var, i, i2);
        if (kj0Var != e47VarB) {
            kj0Var.recycle();
        }
        up3Var.b.a.c(s19Var, e47VarB.get());
        return e47Var;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof xp3) {
            return this.b.equals(((xp3) obj).b);
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.b.hashCode();
    }
}
