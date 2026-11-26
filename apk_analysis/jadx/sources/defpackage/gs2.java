package defpackage;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public final class gs2 implements x04 {
    public final Drawable a;

    public interface a {
        long getSize();
    }

    public gs2(Drawable drawable) {
        this.a = drawable;
    }

    @Override // defpackage.x04
    public final boolean a() {
        return false;
    }

    @Override // defpackage.x04
    public final void draw(Canvas canvas) {
        this.a.draw(canvas);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gs2) && aa4.e(this.a, ((gs2) obj).a);
    }

    @Override // defpackage.x04
    public final int getHeight() {
        return sb9.a(this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.x04
    public final long getSize() {
        Drawable drawable = this.a;
        long size = drawable instanceof a ? ((a) drawable).getSize() : ((long) sb9.b(drawable)) * 4 * ((long) sb9.a(drawable));
        if (size < 0) {
            return 0L;
        }
        return size;
    }

    @Override // defpackage.x04
    public final int getWidth() {
        return sb9.b(this.a);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DrawableImage(drawable=" + this.a + ", shareable=false)";
    }
}
