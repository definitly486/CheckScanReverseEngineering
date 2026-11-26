package defpackage;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ns2<T extends Drawable> implements e47<T>, g54 {
    public final T b;

    public ns2(T t) {
        r96.c(t, "Argument must not be null");
        this.b = t;
    }

    @Override // defpackage.e47
    public final Object get() {
        T t = this.b;
        Drawable.ConstantState constantState = t.getConstantState();
        return constantState == null ? t : constantState.newDrawable();
    }

    @Override // defpackage.g54
    public void initialize() {
        T t = this.b;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof up3) {
            ((up3) t).b.a.l.prepareToDraw();
        }
    }
}
