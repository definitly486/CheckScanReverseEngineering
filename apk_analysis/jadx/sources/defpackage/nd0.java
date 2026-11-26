package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.PaintCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class nd0 implements xs2, ld0.a, of4 {
    public float A;
    public BlurMaskFilter B;
    public ch4 C;
    public final Path a = new Path();
    public final Matrix b = new Matrix();
    public final Matrix c = new Matrix();
    public final ch4 d = new ch4(1);
    public final ch4 e;
    public final ch4 f;
    public final ch4 g;
    public final ch4 h;
    public final RectF i;
    public final RectF j;
    public final RectF k;
    public final RectF l;
    public final RectF m;
    public final Matrix n;
    public final ox4 o;
    public final xk4 p;
    public final m15 q;
    public final tc3 r;
    public nd0 s;
    public nd0 t;
    public List<nd0> u;
    public final ArrayList v;
    public final o19 w;
    public boolean x;
    public boolean y;
    public ch4 z;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[i15.a.values().length];
            b = iArr;
            try {
                iArr[i15.a.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[i15.a.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[i15.a.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[i15.a.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[xk4.a.values().length];
            a = iArr2;
            try {
                iArr2[xk4.a.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[xk4.a.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[xk4.a.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[xk4.a.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[xk4.a.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[xk4.a.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[xk4.a.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public nd0(ox4 ox4Var, xk4 xk4Var) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.e = new ch4(mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f = new ch4(mode2);
        ch4 ch4Var = new ch4(1);
        this.g = ch4Var;
        PorterDuff.Mode mode3 = PorterDuff.Mode.CLEAR;
        ch4 ch4Var2 = new ch4();
        ch4Var2.setXfermode(new PorterDuffXfermode(mode3));
        this.h = ch4Var2;
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new RectF();
        this.m = new RectF();
        this.n = new Matrix();
        this.v = new ArrayList();
        this.x = true;
        this.A = 0.0f;
        this.o = ox4Var;
        this.p = xk4Var;
        List<i15> list = xk4Var.h;
        if (xk4Var.u == xk4.b.INVERT) {
            ch4Var.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            ch4Var.setXfermode(new PorterDuffXfermode(mode));
        }
        ql qlVar = xk4Var.i;
        qlVar.getClass();
        o19 o19Var = new o19(qlVar);
        this.w = o19Var;
        o19Var.b(this);
        if (list != null && !list.isEmpty()) {
            m15 m15Var = new m15(list);
            this.q = m15Var;
            Iterator it = m15Var.a.iterator();
            while (it.hasNext()) {
                ((ld0) it.next()).a(this);
            }
            for (ld0<?, ?> ld0Var : this.q.b) {
                c(ld0Var);
                ld0Var.a(this);
            }
        }
        xk4 xk4Var2 = this.p;
        if (xk4Var2.t.isEmpty()) {
            if (true != this.x) {
                this.x = true;
                this.o.invalidateSelf();
                return;
            }
            return;
        }
        tc3 tc3Var = new tc3(xk4Var2.t);
        this.r = tc3Var;
        tc3Var.b = true;
        tc3Var.a(new ld0.a() { // from class: md0
            @Override // ld0.a
            public final void e() {
                nd0 nd0Var = this.a;
                boolean z = nd0Var.r.m() == 1.0f;
                if (z != nd0Var.x) {
                    nd0Var.x = z;
                    nd0Var.o.invalidateSelf();
                }
            }
        });
        boolean z = this.r.f().floatValue() == 1.0f;
        if (z != this.x) {
            this.x = z;
            this.o.invalidateSelf();
        }
        c(this.r);
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        nd0 nd0Var = this.s;
        xk4 xk4Var = this.p;
        if (nd0Var != null) {
            String str = nd0Var.p.c;
            nf4 nf4Var3 = new nf4(nf4Var2);
            nf4Var3.a.add(str);
            if (nf4Var.a(i, this.s.p.c)) {
                nd0 nd0Var2 = this.s;
                nf4 nf4Var4 = new nf4(nf4Var3);
                nf4Var4.b = nd0Var2;
                arrayList.add(nf4Var4);
            }
            if (nf4Var.c(i, this.s.p.c) && nf4Var.d(i, xk4Var.c)) {
                this.s.q(nf4Var, nf4Var.b(i, this.s.p.c) + i, arrayList, nf4Var3);
            }
        }
        String str2 = xk4Var.c;
        String str3 = xk4Var.c;
        if (nf4Var.c(i, str2)) {
            if (!"__container".equals(str3)) {
                nf4 nf4Var5 = new nf4(nf4Var2);
                nf4Var5.a.add(str3);
                if (nf4Var.a(i, str3)) {
                    nf4 nf4Var6 = new nf4(nf4Var5);
                    nf4Var6.b = this;
                    arrayList.add(nf4Var6);
                }
                nf4Var2 = nf4Var5;
            }
            if (nf4Var.d(i, str3)) {
                q(nf4Var, nf4Var.b(i, str3) + i, arrayList, nf4Var2);
            }
        }
    }

    @Override // defpackage.xs2
    public void b(RectF rectF, Matrix matrix, boolean z) {
        this.i.set(0.0f, 0.0f, 0.0f, 0.0f);
        j();
        Matrix matrix2 = this.n;
        matrix2.set(matrix);
        if (z) {
            List<nd0> list = this.u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(this.u.get(size).w.e());
                }
            } else {
                nd0 nd0Var = this.t;
                if (nd0Var != null) {
                    matrix2.preConcat(nd0Var.w.e());
                }
            }
        }
        matrix2.preConcat(this.w.e());
    }

    public final void c(ld0<?, ?> ld0Var) {
        if (ld0Var == null) {
            return;
        }
        this.v.add(ld0Var);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x021d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0242  */
    /* JADX WARN: Code duplicated, block: B:106:0x024a  */
    /* JADX WARN: Code duplicated, block: B:108:0x024d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0254 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x0256  */
    /* JADX WARN: Code duplicated, block: B:113:0x027f  */
    /* JADX WARN: Code duplicated, block: B:114:0x029f  */
    /* JADX WARN: Code duplicated, block: B:116:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:117:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:118:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:120:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:122:0x0304  */
    /* JADX WARN: Code duplicated, block: B:123:0x032e  */
    /* JADX WARN: Code duplicated, block: B:124:0x033f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0347  */
    /* JADX WARN: Code duplicated, block: B:130:0x034e  */
    /* JADX WARN: Code duplicated, block: B:133:0x035c A[LOOP:2: B:128:0x0348->B:133:0x035c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:139:0x0376  */
    /* JADX WARN: Code duplicated, block: B:149:0x036d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x035f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0250 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0202  */
    /* JADX WARN: Code duplicated, block: B:98:0x020d  */
    @Override // defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        float f;
        int i2;
        ch4 ch4Var;
        BlendModeCompat blendModeCompat;
        ch4 ch4Var2;
        int i3;
        List<i15> list;
        ArrayList arrayList;
        List<i15> list2;
        ld0 ld0Var;
        ld0 ld0Var2;
        boolean z;
        int i4;
        int i5;
        int i6;
        ch4 ch4Var3;
        Integer numF;
        dt dtVar = ah4.a;
        if (this.x) {
            xk4 xk4Var = this.p;
            boolean z2 = xk4Var.v;
            bh4 bh4Var = xk4Var.y;
            if (z2) {
                return;
            }
            j();
            Matrix matrix2 = this.b;
            matrix2.reset();
            matrix2.set(matrix);
            for (int size = this.u.size() - 1; size >= 0; size--) {
                matrix2.preConcat(this.u.get(size).w.e());
            }
            dt dtVar2 = ah4.a;
            o19 o19Var = this.w;
            ld0<Integer, Integer> ld0Var3 = o19Var.p;
            int iIntValue = (int) ((((i / 255.0f) * ((ld0Var3 == null || (numF = ld0Var3.f()) == null) ? 100 : numF.intValue())) / 100.0f) * 255.0f);
            if (this.s == null && !n() && bh4Var == bh4.NORMAL) {
                matrix2.preConcat(o19Var.e());
                l(canvas, matrix2, iIntValue, et2Var);
                o();
                return;
            }
            RectF rectF = this.i;
            b(rectF, matrix2, false);
            if (this.s != null && xk4Var.u != xk4.b.INVERT) {
                RectF rectF2 = this.l;
                rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
                this.s.b(rectF2, matrix, true);
                if (!rectF.intersect(rectF2)) {
                    rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
                }
            }
            matrix2.preConcat(o19Var.e());
            RectF rectF3 = this.k;
            rectF3.set(0.0f, 0.0f, 0.0f, 0.0f);
            boolean zN = n();
            m15 m15Var = this.q;
            Path path = this.a;
            if (!zN) {
                f = 0.0f;
                break;
            }
            int size2 = m15Var.c.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size2) {
                    if (!rectF.intersect(rectF3)) {
                        f = 0.0f;
                        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
                        break;
                    }
                } else {
                    i15 i15Var = m15Var.c.get(i7);
                    Path path2 = (Path) ((ld0) m15Var.a.get(i7)).f();
                    if (path2 == null) {
                        i2 = size2;
                    } else {
                        path.set(path2);
                        path.transform(matrix2);
                        i2 = size2;
                        int i8 = a.b[i15Var.a.ordinal()];
                        if (i8 != 1 && i8 != 2 && ((i8 != 3 && i8 != 4) || !i15Var.d)) {
                            RectF rectF4 = this.m;
                            path.computeBounds(rectF4, false);
                            if (i7 == 0) {
                                rectF3.set(rectF4);
                            } else {
                                rectF3.set(Math.min(rectF3.left, rectF4.left), Math.min(rectF3.top, rectF4.top), Math.max(rectF3.right, rectF4.right), Math.max(rectF3.bottom, rectF4.bottom));
                            }
                            i7++;
                            size2 = i2;
                        }
                    }
                    i7++;
                    size2 = i2;
                }
                f = 0.0f;
                break;
            }
            float width = canvas.getWidth();
            float height = canvas.getHeight();
            RectF rectF5 = this.j;
            rectF5.set(f, f, width, height);
            Matrix matrix3 = this.c;
            canvas.getMatrix(matrix3);
            if (!matrix3.isIdentity()) {
                matrix3.invert(matrix3);
                matrix3.mapRect(rectF5);
            }
            if (!rectF.intersect(rectF5)) {
                rectF.set(f, f, f, f);
            }
            dt dtVar3 = ah4.a;
            if (rectF.width() >= 1.0f && rectF.height() >= 1.0f) {
                ch4 ch4Var4 = this.d;
                ch4Var4.setAlpha(255);
                bh4Var.getClass();
                switch (bh4.a.a[bh4Var.ordinal()]) {
                    case 2:
                        blendModeCompat = Build.VERSION.SDK_INT >= 29 ? BlendModeCompat.MULTIPLY : BlendModeCompat.MODULATE;
                        break;
                    case 3:
                        blendModeCompat = BlendModeCompat.SCREEN;
                        break;
                    case 4:
                        blendModeCompat = BlendModeCompat.OVERLAY;
                        break;
                    case 5:
                        blendModeCompat = BlendModeCompat.DARKEN;
                        break;
                    case 6:
                        blendModeCompat = BlendModeCompat.LIGHTEN;
                        break;
                    case 7:
                        blendModeCompat = BlendModeCompat.PLUS;
                        break;
                    default:
                        blendModeCompat = null;
                        break;
                }
                PaintCompat.setBlendMode(ch4Var4, blendModeCompat);
                ib9.e(canvas, ch4Var4, rectF);
                if (bh4Var != bh4.MULTIPLY) {
                    k(canvas);
                } else {
                    if (Build.VERSION.SDK_INT < 29) {
                        if (this.C == null) {
                            ch4 ch4Var5 = new ch4();
                            this.C = ch4Var5;
                            ch4Var5.setColor(-1);
                        }
                        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.C);
                    }
                    l(canvas, matrix2, iIntValue, et2Var);
                    if (n()) {
                        ch4Var2 = this.e;
                        canvas.saveLayer(rectF, ch4Var2);
                        if (Build.VERSION.SDK_INT < 28) {
                            k(canvas);
                        }
                        i3 = 0;
                        while (true) {
                            list = m15Var.c;
                            arrayList = m15Var.a;
                            list2 = m15Var.c;
                            if (i3 < list.size()) {
                                i15 i15Var2 = list2.get(i3);
                                ld0Var = (ld0) arrayList.get(i3);
                                ld0Var2 = (ld0) m15Var.b.get(i3);
                                int[] iArr = a.b;
                                i15.a aVar = i15Var2.a;
                                z = i15Var2.d;
                                i4 = iArr[aVar.ordinal()];
                                i5 = i3;
                                if (i4 != 1) {
                                    ch4Var3 = this.f;
                                    if (i4 != 2) {
                                        if (i5 == 0) {
                                            ch4Var4.setColor(-16777216);
                                            ch4Var4.setAlpha(255);
                                            canvas.drawRect(rectF, ch4Var4);
                                        }
                                        if (z) {
                                            ib9.e(canvas, ch4Var3, rectF);
                                            canvas.drawRect(rectF, ch4Var4);
                                            ch4Var3.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                            path.set((Path) ld0Var.f());
                                            path.transform(matrix2);
                                            canvas.drawPath(path, ch4Var3);
                                            canvas.restore();
                                        } else {
                                            path.set((Path) ld0Var.f());
                                            path.transform(matrix2);
                                            canvas.drawPath(path, ch4Var3);
                                        }
                                    } else if (i4 != 3) {
                                        if (i4 == 4) {
                                            if (z) {
                                                ib9.e(canvas, ch4Var4, rectF);
                                                canvas.drawRect(rectF, ch4Var4);
                                                path.set((Path) ld0Var.f());
                                                path.transform(matrix2);
                                                ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                                canvas.drawPath(path, ch4Var3);
                                                canvas.restore();
                                            } else {
                                                path.set((Path) ld0Var.f());
                                                path.transform(matrix2);
                                                ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                                canvas.drawPath(path, ch4Var4);
                                            }
                                        }
                                    } else if (z) {
                                        ib9.e(canvas, ch4Var2, rectF);
                                        canvas.drawRect(rectF, ch4Var4);
                                        ch4Var3.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                        path.set((Path) ld0Var.f());
                                        path.transform(matrix2);
                                        canvas.drawPath(path, ch4Var3);
                                        canvas.restore();
                                    } else {
                                        ib9.e(canvas, ch4Var2, rectF);
                                        path.set((Path) ld0Var.f());
                                        path.transform(matrix2);
                                        ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                        canvas.drawPath(path, ch4Var4);
                                        canvas.restore();
                                    }
                                } else {
                                    if (arrayList.isEmpty()) {
                                        i6 = 0;
                                        while (true) {
                                            if (i6 < list2.size()) {
                                                ch4Var4.setAlpha(255);
                                                canvas.drawRect(rectF, ch4Var4);
                                                break;
                                            } else if (list2.get(i6).a != i15.a.MASK_MODE_NONE) {
                                                i6++;
                                            }
                                        }
                                    }
                                    i3 = i5 + 1;
                                }
                                i3 = i5 + 1;
                            } else {
                                dt dtVar4 = ah4.a;
                                canvas.restore();
                            }
                        }
                    }
                    if (this.s != null) {
                        canvas.saveLayer(rectF, this.g);
                        k(canvas);
                        this.s.d(canvas, matrix, i, null);
                        canvas.restore();
                    }
                    canvas.restore();
                }
                l(canvas, matrix2, iIntValue, et2Var);
                if (n()) {
                    ch4Var2 = this.e;
                    canvas.saveLayer(rectF, ch4Var2);
                    if (Build.VERSION.SDK_INT < 28) {
                        k(canvas);
                    }
                    i3 = 0;
                    while (true) {
                        list = m15Var.c;
                        arrayList = m15Var.a;
                        list2 = m15Var.c;
                        if (i3 < list.size()) {
                            i15 i15Var3 = list2.get(i3);
                            ld0Var = (ld0) arrayList.get(i3);
                            ld0Var2 = (ld0) m15Var.b.get(i3);
                            int[] iArr2 = a.b;
                            i15.a aVar2 = i15Var3.a;
                            z = i15Var3.d;
                            i4 = iArr2[aVar2.ordinal()];
                            i5 = i3;
                            if (i4 != 1) {
                                ch4Var3 = this.f;
                                if (i4 != 2) {
                                    if (i5 == 0) {
                                        ch4Var4.setColor(-16777216);
                                        ch4Var4.setAlpha(255);
                                        canvas.drawRect(rectF, ch4Var4);
                                    }
                                    if (z) {
                                        ib9.e(canvas, ch4Var3, rectF);
                                        canvas.drawRect(rectF, ch4Var4);
                                        ch4Var3.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                        path.set((Path) ld0Var.f());
                                        path.transform(matrix2);
                                        canvas.drawPath(path, ch4Var3);
                                        canvas.restore();
                                    } else {
                                        path.set((Path) ld0Var.f());
                                        path.transform(matrix2);
                                        canvas.drawPath(path, ch4Var3);
                                    }
                                } else if (i4 != 3) {
                                    if (i4 == 4) {
                                        if (z) {
                                            ib9.e(canvas, ch4Var4, rectF);
                                            canvas.drawRect(rectF, ch4Var4);
                                            path.set((Path) ld0Var.f());
                                            path.transform(matrix2);
                                            ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                            canvas.drawPath(path, ch4Var3);
                                            canvas.restore();
                                        } else {
                                            path.set((Path) ld0Var.f());
                                            path.transform(matrix2);
                                            ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                            canvas.drawPath(path, ch4Var4);
                                        }
                                    }
                                } else if (z) {
                                    ib9.e(canvas, ch4Var2, rectF);
                                    canvas.drawRect(rectF, ch4Var4);
                                    ch4Var3.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                    path.set((Path) ld0Var.f());
                                    path.transform(matrix2);
                                    canvas.drawPath(path, ch4Var3);
                                    canvas.restore();
                                } else {
                                    ib9.e(canvas, ch4Var2, rectF);
                                    path.set((Path) ld0Var.f());
                                    path.transform(matrix2);
                                    ch4Var4.setAlpha((int) (((Integer) ld0Var2.f()).intValue() * 2.55f));
                                    canvas.drawPath(path, ch4Var4);
                                    canvas.restore();
                                }
                            } else {
                                if (arrayList.isEmpty()) {
                                    i6 = 0;
                                    while (true) {
                                        if (i6 < list2.size()) {
                                            ch4Var4.setAlpha(255);
                                            canvas.drawRect(rectF, ch4Var4);
                                            break;
                                            break;
                                        } else if (list2.get(i6).a != i15.a.MASK_MODE_NONE) {
                                            i6++;
                                        }
                                    }
                                }
                                i3 = i5 + 1;
                            }
                            i3 = i5 + 1;
                        } else {
                            dt dtVar5 = ah4.a;
                            canvas.restore();
                        }
                    }
                }
                if (this.s != null) {
                    canvas.saveLayer(rectF, this.g);
                    k(canvas);
                    this.s.d(canvas, matrix, i, null);
                    canvas.restore();
                }
                canvas.restore();
            }
            if (this.y && (ch4Var = this.z) != null) {
                ch4Var.setStyle(Paint.Style.STROKE);
                this.z.setColor(-251901);
                this.z.setStrokeWidth(4.0f);
                canvas.drawRect(rectF, this.z);
                this.z.setStyle(Paint.Style.FILL);
                this.z.setColor(1357638635);
                canvas.drawRect(rectF, this.z);
            }
            o();
        }
    }

    @Override // ld0.a
    public final void e() {
        this.o.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
    }

    public void i(by4 by4Var, Object obj) {
        this.w.c(by4Var, obj);
    }

    public final void j() {
        if (this.u != null) {
            return;
        }
        if (this.t == null) {
            this.u = Collections.EMPTY_LIST;
            return;
        }
        this.u = new ArrayList();
        for (nd0 nd0Var = this.t; nd0Var != null; nd0Var = nd0Var.t) {
            this.u.add(nd0Var);
        }
    }

    public final void k(Canvas canvas) {
        dt dtVar = ah4.a;
        RectF rectF = this.i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.h);
    }

    public abstract void l(Canvas canvas, Matrix matrix, int i, et2 et2Var);

    public ik0 m() {
        return this.p.w;
    }

    public final boolean n() {
        m15 m15Var = this.q;
        return (m15Var == null || m15Var.a.isEmpty()) ? false : true;
    }

    public final void o() {
        s46 s46Var = this.o.b.a;
        String str = this.p.c;
        HashMap map = s46Var.c;
        if (s46Var.a) {
            c85 c85Var = (c85) map.get(str);
            if (c85Var == null) {
                c85Var = new c85();
                map.put(str, c85Var);
            }
            int i = c85Var.a + 1;
            c85Var.a = i;
            if (i == Integer.MAX_VALUE) {
                c85Var.a = i / 2;
            }
            if (str.equals("__container")) {
                Iterator<E> it = s46Var.b.iterator();
                while (it.hasNext()) {
                    ((s46.a) it.next()).a();
                }
            }
        }
    }

    public final void p(ld0<?, ?> ld0Var) {
        this.v.remove(ld0Var);
    }

    public void q(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
    }

    public void r(boolean z) {
        if (z && this.z == null) {
            this.z = new ch4();
        }
        this.y = z;
    }

    public void s(float f) {
        dt dtVar = ah4.a;
        o19 o19Var = this.w;
        ld0<Integer, Integer> ld0Var = o19Var.p;
        if (ld0Var != null) {
            ld0Var.j(f);
        }
        ld0<?, Float> ld0Var2 = o19Var.v;
        if (ld0Var2 != null) {
            ld0Var2.j(f);
        }
        ld0<?, Float> ld0Var3 = o19Var.w;
        if (ld0Var3 != null) {
            ld0Var3.j(f);
        }
        ld0<PointF, PointF> ld0Var4 = o19Var.l;
        if (ld0Var4 != null) {
            ld0Var4.j(f);
        }
        ld0<?, PointF> ld0Var5 = o19Var.m;
        if (ld0Var5 != null) {
            ld0Var5.j(f);
        }
        ld0<od7, od7> ld0Var6 = o19Var.n;
        if (ld0Var6 != null) {
            ld0Var6.j(f);
        }
        ld0<Float, Float> ld0Var7 = o19Var.o;
        if (ld0Var7 != null) {
            ld0Var7.j(f);
        }
        tc3 tc3Var = o19Var.q;
        if (tc3Var != null) {
            tc3Var.j(f);
        }
        tc3 tc3Var2 = o19Var.r;
        if (tc3Var2 != null) {
            tc3Var2.j(f);
        }
        tc3 tc3Var3 = o19Var.s;
        if (tc3Var3 != null) {
            tc3Var3.j(f);
        }
        tc3 tc3Var4 = o19Var.t;
        if (tc3Var4 != null) {
            tc3Var4.j(f);
        }
        tc3 tc3Var5 = o19Var.u;
        if (tc3Var5 != null) {
            tc3Var5.j(f);
        }
        int i = 0;
        m15 m15Var = this.q;
        if (m15Var != null) {
            ArrayList arrayList = m15Var.a;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((ld0) arrayList.get(i2)).j(f);
            }
            dt dtVar2 = ah4.a;
        }
        tc3 tc3Var6 = this.r;
        if (tc3Var6 != null) {
            tc3Var6.j(f);
        }
        nd0 nd0Var = this.s;
        if (nd0Var != null) {
            nd0Var.s(f);
        }
        while (true) {
            ArrayList arrayList2 = this.v;
            if (i >= arrayList2.size()) {
                dt dtVar3 = ah4.a;
                return;
            } else {
                ((ld0) arrayList2.get(i)).j(f);
                i++;
            }
        }
    }
}
