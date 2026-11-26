package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.Log;
import com.hookedonplay.decoviewlib.DecoView;

/* JADX INFO: loaded from: classes4.dex */
public final class eq4 extends ka1 {
    public final String p;
    public final Path q;
    public DecoView.c r;
    public DecoView.d s;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[DecoView.c.values().length];
            b = iArr;
            try {
                iArr[DecoView.c.GRAVITY_HORIZONTAL_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[DecoView.c.GRAVITY_HORIZONTAL_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[DecoView.c.GRAVITY_HORIZONTAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[DecoView.d.values().length];
            a = iArr2;
            try {
                iArr2[DecoView.d.GRAVITY_VERTICAL_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[DecoView.d.GRAVITY_VERTICAL_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[DecoView.d.GRAVITY_VERTICAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public eq4(pq7 pq7Var, int i, int i2) {
        super(pq7Var, i, i2);
        String simpleName = eq4.class.getSimpleName();
        this.p = simpleName;
        this.q = new Path();
        this.r = DecoView.c.GRAVITY_HORIZONTAL_CENTER;
        this.s = DecoView.d.GRAVITY_VERTICAL_CENTER;
        Log.e(simpleName, "LineSeries is experimental. Not all functionality is implemented.");
    }

    @Override // defpackage.ka1
    public final void a() {
        pq7 pq7Var = this.b;
        if (Color.alpha(pq7Var.b) != 0) {
            int i = pq7Var.a;
            int i2 = pq7Var.b;
            RectF rectF = this.h;
            this.l.setShader(new LinearGradient(rectF.left, rectF.top, rectF.right, rectF.bottom, i, i2, Shader.TileMode.CLAMP));
        }
    }

    @Override // defpackage.ka1
    public final boolean c(Canvas canvas, RectF rectF) {
        float f;
        float height;
        float height2;
        if (super.c(canvas, rectF)) {
            return true;
        }
        pq7 pq7Var = this.b;
        float f2 = pq7Var.a() != null ? pq7Var.a().x : 0.0f;
        float f3 = pq7Var.a() != null ? pq7Var.a().y : 0.0f;
        float f4 = pq7Var.c / 2.0f;
        float f5 = this.f / (pq7Var.d - 0.0f);
        if (Math.abs(f5) < 0.01f) {
            f5 = 0.01f;
        }
        float f6 = f4 * 2.0f;
        float width = ((canvas.getWidth() - f6) * f5) + f4;
        float height3 = ((canvas.getHeight() - f6) * f5) + f4;
        pq7.b bVar = pq7Var.h;
        pq7.b bVar2 = pq7.b.STYLE_LINE_HORIZONTAL;
        String str = this.p;
        if (bVar == bVar2) {
            int i = a.a[this.s.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        Log.w(str, "Invalid Gravity set, VERTICAL_CENTER set (" + this.s + ")");
                    }
                    height2 = canvas.getHeight() / 2;
                } else {
                    height = (canvas.getHeight() - f4) - f3;
                }
                f = height;
            } else {
                height2 = f4 / 2.0f;
            }
            height = height2 + f3;
            f = height;
        } else {
            int i2 = a.b[this.r.ordinal()];
            if (i2 == 1) {
                width = f4 + f2;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    Log.w(str, "Invalid Gravity set, HORIZONTAL_CENTER set (" + this.r + ")");
                }
                width = (canvas.getWidth() / 2) + f2;
            } else {
                width = (canvas.getWidth() - f4) - f2;
            }
            f = height3;
            height = f4;
            f4 = width;
        }
        Path path = this.q;
        path.reset();
        path.moveTo(f4, height);
        path.lineTo(width, f);
        canvas.drawPath(path, this.l);
        return true;
    }
}
