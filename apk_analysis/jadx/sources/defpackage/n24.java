package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public final class n24 {
    public static final Drawable a(x04 x04Var, Resources resources) {
        if (x04Var instanceof gs2) {
            return ((gs2) x04Var).a;
        }
        return x04Var instanceof dj0 ? new BitmapDrawable(resources, ((dj0) x04Var).a) : new j14(x04Var);
    }

    public static final x04 b(Drawable drawable) {
        return drawable instanceof BitmapDrawable ? new dj0(((BitmapDrawable) drawable).getBitmap()) : new gs2(drawable);
    }
}
