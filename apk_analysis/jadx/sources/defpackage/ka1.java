package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ka1 {
    public final pq7 b;
    public id2.b c;
    public float d;
    public float e;
    public float f;
    public float g;
    public RectF h;
    public RectF i;
    public final Paint l;
    public boolean m;
    public zb9 n;
    public sn1 o;
    public final String a = getClass().getSimpleName();
    public int j = 180;
    public int k = 360;

    public class a implements zb9.g {
        public final /* synthetic */ boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // zb9.g
        public final void a(zb9 zb9Var) {
            float fFloatValue = Float.valueOf(zb9Var.j().toString()).floatValue();
            if (this.a) {
                fFloatValue = 1.0f - fFloatValue;
            }
            ka1 ka1Var = ka1.this;
            ka1Var.g = fFloatValue;
            Iterator<pq7.c> it = ka1Var.b.j.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    public class b extends um {
        @Override // tm.a
        public final void onAnimationEnd() {
        }
    }

    public ka1(pq7 pq7Var, int i, int i2) {
        this.g = 1.0f;
        this.b = pq7Var;
        boolean z = pq7Var.f;
        this.m = z;
        e(i, i2);
        this.c = id2.b.EVENT_MOVE;
        this.m = z;
        b();
        this.d = 0.0f;
        float f = pq7Var.e;
        this.e = f;
        this.f = f;
        this.g = 1.0f;
        Paint paint = new Paint();
        this.l = paint;
        paint.setColor(pq7Var.a);
        this.l.setStyle(pq7Var.h == pq7.b.STYLE_DONUT ? Paint.Style.STROKE : Paint.Style.FILL);
        this.l.setStrokeWidth(pq7Var.c);
        this.l.setStrokeCap(pq7Var.g ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        this.l.setAntiAlias(true);
        this.h = null;
        Iterator<pq7.c> it = pq7Var.j.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public abstract void a();

    public final void b() {
        ArrayList<tm.a> arrayList;
        zb9 zb9Var = this.n;
        if (zb9Var != null && (zb9Var.i != 0 || zb9.t.get().contains(zb9Var) || zb9.u.get().contains(zb9Var))) {
            if (zb9Var.j && (arrayList = zb9Var.b) != null) {
                Iterator it = ((ArrayList) arrayList.clone()).iterator();
                while (it.hasNext()) {
                    ((tm.a) it.next()).getClass();
                }
            }
            zb9Var.i();
        }
        if (this.o != null) {
            this.l.setColor(this.b.a);
            this.o = null;
        }
    }

    public boolean c(Canvas canvas, RectF rectF) {
        if (!this.m) {
            return true;
        }
        if (rectF == null || rectF.isEmpty()) {
            fg.c("Drawing bounds can not be null or empty");
            return false;
        }
        RectF rectF2 = this.h;
        pq7 pq7Var = this.b;
        if (rectF2 == null || !rectF2.equals(rectF)) {
            this.h = new RectF(rectF);
            this.i = new RectF(rectF);
            if (pq7Var.a() != null) {
                this.i.inset(pq7Var.a().x, pq7Var.a().y);
            }
            a();
        }
        id2.b bVar = this.c;
        if (bVar == id2.b.EVENT_EFFECT) {
            return true;
        }
        id2.b bVar2 = id2.b.EVENT_HIDE;
        Paint paint = this.l;
        if (bVar == bVar2 || bVar == id2.b.EVENT_SHOW) {
            float f = pq7Var.c;
            float f2 = this.g;
            int i = pq7Var.a;
            if (f2 > 0.0f) {
                f *= 1.0f - f2;
                paint.setAlpha((int) ((1.0f - this.g) * Color.alpha(i)));
            } else {
                paint.setAlpha(Color.alpha(i));
            }
            paint.setStrokeWidth(f);
        } else if (pq7Var.c != paint.getStrokeWidth()) {
            paint.setStrokeWidth(pq7Var.c);
        }
        sn1 sn1Var = this.o;
        if (sn1Var != null) {
            float f3 = this.g;
            int i2 = sn1Var.a;
            int iAlpha = Color.alpha(i2);
            int i3 = sn1Var.b;
            paint.setColor(Color.argb(sn1Var.a(1, iAlpha, Color.alpha(i3), f3), sn1Var.a(2, Color.red(i2), Color.red(i3), f3), sn1Var.a(4, Color.green(i2), Color.green(i3), f3), sn1Var.a(8, Color.blue(i2), Color.blue(i3), f3)));
        } else {
            int color = paint.getColor();
            int i4 = pq7Var.a;
            if (color != i4) {
                paint.setColor(i4);
            }
        }
        return false;
    }

    public final float d() {
        return this.f / (this.b.d - 0.0f);
    }

    public final void e(int i, int i2) {
        if (i < 0 || i > 360) {
            fg.c("Total angle of view must be in the range 0..360");
            return;
        }
        if (i2 < 0 || i2 > 360) {
            fg.c("Rotate angle of view must be in the range 0..360");
            return;
        }
        this.j = i2;
        this.k = i;
        this.h = null;
    }

    public final void f(id2 id2Var, boolean z) {
        b();
        this.c = id2Var.a;
        this.g = z ? 1.0f : 0.0f;
        this.m = true;
        zb9 zb9VarL = zb9.l(0.0f, 1.0f);
        this.n = zb9VarL;
        zb9VarL.p(id2Var.b);
        this.n.n = new LinearInterpolator();
        zb9 zb9Var = this.n;
        a aVar = new a(z);
        ArrayList<zb9.g> arrayList = zb9Var.o;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            zb9Var.o = arrayList;
        }
        arrayList.add(aVar);
        zb9 zb9Var2 = this.n;
        b bVar = new b();
        ArrayList<tm.a> arrayList2 = zb9Var2.b;
        if (arrayList2 == null) {
            arrayList2 = new ArrayList<>();
            zb9Var2.b = arrayList2;
        }
        arrayList2.add(bVar);
        this.n.q();
    }
}
