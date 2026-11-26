package com.hookedonplay.decoviewlib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import defpackage.ah;
import defpackage.dq4;
import defpackage.eq4;
import defpackage.fg;
import defpackage.hd2;
import defpackage.id2;
import defpackage.jd2;
import defpackage.ka1;
import defpackage.kd2;
import defpackage.n86;
import defpackage.pq7;
import defpackage.uw6;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class DecoView extends View {
    public final String b;
    public d c;
    public c d;
    public ArrayList<ka1> e;
    public int f;
    public int g;
    public RectF h;
    public final float i;
    public final int j;
    public final int k;
    public kd2 l;
    public float[] m;

    public class a implements pq7.c {
        public a() {
        }

        @Override // pq7.c
        public final void a() {
            DecoView.this.invalidate();
        }

        @Override // pq7.c
        public final void b() {
            DecoView.this.invalidate();
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[pq7.b.values().length];
            a = iArr;
            try {
                iArr[pq7.b.STYLE_DONUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[pq7.b.STYLE_PIE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[pq7.b.STYLE_LINE_HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[pq7.b.STYLE_LINE_VERTICAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c GRAVITY_HORIZONTAL_CENTER;
        public static final c GRAVITY_HORIZONTAL_FILL;
        public static final c GRAVITY_HORIZONTAL_LEFT;
        public static final c GRAVITY_HORIZONTAL_RIGHT;

        static {
            c cVar = new c("GRAVITY_HORIZONTAL_LEFT", 0);
            GRAVITY_HORIZONTAL_LEFT = cVar;
            c cVar2 = new c("GRAVITY_HORIZONTAL_CENTER", 1);
            GRAVITY_HORIZONTAL_CENTER = cVar2;
            c cVar3 = new c("GRAVITY_HORIZONTAL_RIGHT", 2);
            GRAVITY_HORIZONTAL_RIGHT = cVar3;
            c cVar4 = new c("GRAVITY_HORIZONTAL_FILL", 3);
            GRAVITY_HORIZONTAL_FILL = cVar4;
            $VALUES = new c[]{cVar, cVar2, cVar3, cVar4};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class d {
        private static final /* synthetic */ d[] $VALUES;
        public static final d GRAVITY_VERTICAL_BOTTOM;
        public static final d GRAVITY_VERTICAL_CENTER;
        public static final d GRAVITY_VERTICAL_FILL;
        public static final d GRAVITY_VERTICAL_TOP;

        static {
            d dVar = new d("GRAVITY_VERTICAL_TOP", 0);
            GRAVITY_VERTICAL_TOP = dVar;
            d dVar2 = new d("GRAVITY_VERTICAL_CENTER", 1);
            GRAVITY_VERTICAL_CENTER = dVar2;
            d dVar3 = new d("GRAVITY_VERTICAL_BOTTOM", 2);
            GRAVITY_VERTICAL_BOTTOM = dVar3;
            d dVar4 = new d("GRAVITY_VERTICAL_FILL", 3);
            GRAVITY_VERTICAL_FILL = dVar4;
            $VALUES = new d[]{dVar, dVar2, dVar3, dVar4};
        }

        public d() {
            throw null;
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }
    }

    public DecoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = getClass().getSimpleName();
        d dVar = d.GRAVITY_VERTICAL_CENTER;
        this.c = dVar;
        c cVar = c.GRAVITY_HORIZONTAL_CENTER;
        this.d = cVar;
        this.f = -1;
        this.g = -1;
        this.i = 30.0f;
        this.k = 360;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, uw6.a, 0, 0);
        try {
            this.i = typedArrayObtainStyledAttributes.getDimension(2, 30.0f);
            int i = typedArrayObtainStyledAttributes.getInt(3, 0);
            this.k = typedArrayObtainStyledAttributes.getInt(4, 360);
            this.c = d.values()[typedArrayObtainStyledAttributes.getInt(1, dVar.ordinal())];
            this.d = c.values()[typedArrayObtainStyledAttributes.getInt(0, cVar.ordinal())];
            typedArrayObtainStyledAttributes.recycle();
            int i2 = this.k;
            if (i2 <= 0) {
                fg.c("Total angle of the arc must be > 0");
                throw null;
            }
            this.k = i2;
            this.j = (i + 270) % 360;
            if (i2 < 360) {
                this.j = ((((360 - i2) / 2) + 90) + i) % 360;
            }
            ArrayList<ka1> arrayList = this.e;
            if (arrayList != null) {
                Iterator<ka1> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().e(this.k, this.j);
                }
            }
            c();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private kd2 getEventManager() {
        kd2 kd2Var = this.l;
        if (kd2Var != null) {
            return kd2Var;
        }
        kd2 kd2Var2 = new kd2(this);
        this.l = kd2Var2;
        return kd2Var2;
    }

    private float getWidestLine() {
        ArrayList<ka1> arrayList = this.e;
        float fMax = 0.0f;
        if (arrayList == null) {
            return 0.0f;
        }
        Iterator<ka1> it = arrayList.iterator();
        while (it.hasNext()) {
            fMax = Math.max(it.next().b.c, fMax);
        }
        return fMax;
    }

    public final void a(id2 id2Var) {
        kd2 eventManager = getEventManager();
        eventManager.getClass();
        id2.b bVar = id2Var.a;
        eventManager.a.postDelayed(new jd2(eventManager, bVar == id2.b.EVENT_SHOW || hd2.EFFECT_SPIRAL_OUT == null || hd2.EFFECT_SPIRAL_OUT_FILL == null, id2Var, bVar == id2.b.EVENT_MOVE), 0L);
    }

    public final int b(pq7 pq7Var) {
        Object dq4Var;
        if (this.e == null) {
            this.e = new ArrayList<>();
        }
        a aVar = new a();
        ArrayList<pq7.c> arrayList = pq7Var.j;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            pq7Var.j = arrayList;
        }
        arrayList.add(aVar);
        if (pq7Var.c < 0.0f) {
            pq7Var.c = this.i;
        }
        int i = b.a[pq7Var.h.ordinal()];
        int i2 = this.j;
        int i3 = this.k;
        if (i == 1) {
            dq4Var = new dq4(pq7Var, i3, i2);
        } else if (i == 2) {
            dq4Var = new n86(pq7Var, i3, i2);
        } else {
            if (i != 3 && i != 4) {
                ah.f("Chart Style not implemented");
                return 0;
            }
            Log.w(this.b, "STYLE_LINE_* is currently experimental");
            eq4 eq4Var = new eq4(pq7Var, i3, i2);
            eq4Var.r = this.d;
            eq4Var.s = this.c;
            dq4Var = eq4Var;
        }
        ArrayList<ka1> arrayList2 = this.e;
        arrayList2.add(arrayList2.size(), (ka1) dq4Var);
        this.m = new float[this.e.size()];
        d();
        return this.e.size() - 1;
    }

    public final void c() {
        float f = getContext().getResources().getDisplayMetrics().scaledDensity;
        if (isInEditMode()) {
            pq7.a aVar = new pq7.a(Color.argb(255, 218, 218, 218));
            aVar.a(100.0f, 100.0f);
            float f2 = this.i;
            aVar.c = f2;
            b(new pq7(aVar));
            pq7.a aVar2 = new pq7.a(Color.argb(255, 255, 64, 64));
            aVar2.a(100.0f, 25.0f);
            aVar2.c = f2;
            b(new pq7(aVar2));
        }
    }

    public final void d() {
        float f;
        float f2;
        if (this.f <= 0 || this.g <= 0) {
            return;
        }
        float widestLine = getWidestLine() / 2.0f;
        int i = this.f;
        int i2 = this.g;
        if (i == i2) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i > i2) {
            f = (i - i2) / 2;
            f2 = 0.0f;
        } else {
            f2 = (i2 - i) / 2;
            f = 0.0f;
        }
        if (this.c == d.GRAVITY_VERTICAL_FILL) {
            f2 = 0.0f;
        }
        if (this.d == c.GRAVITY_HORIZONTAL_FILL) {
            f = 0.0f;
        }
        RectF rectF = new RectF(getPaddingLeft() + f + widestLine, getPaddingTop() + f2 + widestLine, (this.f - widestLine) - (getPaddingRight() + f), (this.g - widestLine) - (getPaddingBottom() + f2));
        this.h = rectF;
        d dVar = this.c;
        if (dVar == d.GRAVITY_VERTICAL_TOP) {
            rectF.offset(0.0f, -f2);
        } else if (dVar == d.GRAVITY_VERTICAL_BOTTOM) {
            rectF.offset(0.0f, f2);
        }
        c cVar = this.d;
        if (cVar == c.GRAVITY_HORIZONTAL_LEFT) {
            this.h.offset(-f, 0.0f);
        } else if (cVar == c.GRAVITY_HORIZONTAL_RIGHT) {
            this.h.offset(f, 0.0f);
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        kd2 kd2Var = this.l;
        if (kd2Var != null) {
            kd2Var.a.removeCallbacksAndMessages(null);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float fD;
        super.onDraw(canvas);
        RectF rectF = this.h;
        if (rectF == null || rectF.isEmpty() || this.e == null) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            float fD2 = 0.0f;
            if (i2 >= this.e.size()) {
                break;
            }
            this.e.get(i2).c(canvas, this.h);
            float[] fArr = this.m;
            ka1 ka1Var = this.e.get(i2);
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < this.e.size(); i4++) {
                ka1 ka1Var2 = this.e.get(i4);
                if (ka1Var2.m && fD2 < ka1Var2.d()) {
                    fD2 = ka1Var2.d();
                }
            }
            if (fD2 < ka1Var.d()) {
                fD = ((this.j + 90.0f) / 360.0f) + ((this.k / 360.0f) * ((ka1Var.d() + fD2) / 2.0f));
                while (fD > 1.0f) {
                    fD -= 1.0f;
                }
            } else {
                fD = -1.0f;
            }
            fArr[i2] = fD;
            i2 = i3;
        }
        while (true) {
            float[] fArr2 = this.m;
            if (i >= fArr2.length) {
                return;
            }
            if (fArr2[i] >= 0.0f) {
                ka1 ka1Var3 = this.e.get(i);
                RectF rectF2 = this.h;
                float f = this.m[i];
                if (ka1Var3.m && (rectF2 == null || rectF2.isEmpty())) {
                    break;
                }
            }
            i++;
        }
        fg.c("Drawing bounds can not be null or empty");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f = i;
        this.g = i2;
        d();
    }

    public void setHorizGravity(c cVar) {
        this.d = cVar;
    }

    public void setVertGravity(d dVar) {
        this.c = dVar;
    }

    public DecoView(Context context) {
        super(context);
        this.b = getClass().getSimpleName();
        this.c = d.GRAVITY_VERTICAL_CENTER;
        this.d = c.GRAVITY_HORIZONTAL_CENTER;
        this.f = -1;
        this.g = -1;
        this.i = 30.0f;
        this.k = 360;
        c();
    }

    public DecoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = getClass().getSimpleName();
        this.c = d.GRAVITY_VERTICAL_CENTER;
        this.d = c.GRAVITY_HORIZONTAL_CENTER;
        this.f = -1;
        this.g = -1;
        this.i = 30.0f;
        this.k = 360;
        c();
    }
}
