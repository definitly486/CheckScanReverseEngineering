package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.a;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class ps2 implements s19<Drawable> {
    public final s19<Bitmap> b;
    public final boolean c;

    public ps2(s19<Bitmap> s19Var, boolean z) {
        this.b = s19Var;
        this.c = z;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // defpackage.s19
    public final e47<Drawable> b(Context context, e47<Drawable> e47Var, int i, int i2) {
        ij0 ij0Var = a.a(context).b;
        Drawable drawable = e47Var.get();
        kj0 kj0VarA = os2.a(ij0Var, drawable, i, i2);
        if (kj0VarA == null) {
            if (!this.c) {
                return e47Var;
            }
            yq.c(drawable, "Unable to convert ", " to a Bitmap");
            return null;
        }
        e47<Bitmap> e47VarB = this.b.b(context, kj0VarA, i, i2);
        if (!e47VarB.equals(kj0VarA)) {
            return new dl4(context.getResources(), e47VarB);
        }
        e47VarB.recycle();
        return e47Var;
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (obj instanceof ps2) {
            return this.b.equals(((ps2) obj).b);
        }
        return false;
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return this.b.hashCode();
    }
}
