package yads;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class v35 extends Drawable {
    public static final /* synthetic */ int g = 0;
    public final u35 a;
    public final p35 b;
    public final p35 c;
    public final int[] d;
    public final Paint e = new Paint();
    public final RectF f = new RectF();

    public v35(u35 u35Var, p35 p35Var, p35 p35Var2, int[] iArr) {
        this.a = u35Var;
        this.b = p35Var;
        this.c = p35Var2;
        this.d = iArr;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawRect(this.f, this.e);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.e.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.e.setShader(q35.a(this.a, this.b, this.c, this.d, rect.width(), rect.height()));
        this.f.set(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.e.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
