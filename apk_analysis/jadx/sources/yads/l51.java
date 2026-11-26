package yads;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.yandex.mobile.ads.R$dimen;
import defpackage.fh8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import yads.l51;

/* JADX INFO: loaded from: classes6.dex */
public final class l51 implements hs2 {
    public final vq0 a;
    public final View b;
    public f51 c;
    public float h;
    public float[] i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public final h51 d = new h51(this);
    public final defpackage.cl4 e = new fh8(new defpackage.aw4(this, 8));
    public final defpackage.cl4 f = new fh8(new defpackage.js3(this, 5));
    public final j51 g = new j51();
    public boolean n = true;
    public final ArrayList o = new ArrayList();

    public l51(vq0 vq0Var, View view) {
        this.a = vq0Var;
        this.b = view;
    }

    /* JADX WARN: Code duplicated, block: B:98:0x01d4  */
    public final void a(f51 f51Var, fs2 fs2Var) {
        float[] fArr;
        boolean z;
        nv1 nv1Var;
        ac1 ac1Var;
        nv1 nv1Var2;
        ac1 ac1Var2;
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        boolean z2;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        as2 as2Var8;
        l42 l42Var;
        l42 l42Var2;
        as2 as2Var9;
        l42 l42Var3;
        DisplayMetrics displayMetrics = this.b.getResources().getDisplayMetrics();
        float fA = (f51Var == null || (l42Var3 = f51Var.e) == null) ? 0.0f : n51.a(l42Var3, fs2Var, displayMetrics);
        this.h = fA;
        boolean z3 = true;
        boolean z4 = fA > 0.0f;
        this.k = z4;
        if (z4) {
            int iIntValue = (f51Var == null || (l42Var2 = f51Var.e) == null || (as2Var9 = l42Var2.a) == null) ? 0 : ((Number) as2Var9.a(fs2Var)).intValue();
            g51 g51Var = (g51) this.e.getValue();
            g51Var.a.setStrokeWidth(Math.min(g51Var.d, Math.max(1.0f, g51Var.h.h * 0.1f)) + this.h);
            g51Var.a.setColor(iIntValue);
            ((g51) this.e.getValue()).c = ((f51Var == null || (l42Var = f51Var.e) == null) ? null : l42Var.b) instanceof q42;
        }
        if (f51Var != null) {
            float fB = defpackage.w65.b(pq.a((Number) Integer.valueOf(this.b.getWidth()), displayMetrics));
            float fB2 = defpackage.w65.b(pq.a((Number) Integer.valueOf(this.b.getHeight()), displayMetrics));
            p91 p91Var = f51Var.b;
            if (p91Var == null || (as2Var5 = p91Var.c) == null) {
                as2Var5 = f51Var.a;
            }
            float fA2 = uq.a(as2Var5 != null ? (Long) as2Var5.a(fs2Var) : null, displayMetrics);
            p91 p91Var2 = f51Var.b;
            if (p91Var2 == null || (as2Var6 = p91Var2.d) == null) {
                as2Var6 = f51Var.a;
            }
            float fA3 = uq.a(as2Var6 != null ? (Long) as2Var6.a(fs2Var) : null, displayMetrics);
            p91 p91Var3 = f51Var.b;
            if (p91Var3 == null || (as2Var7 = p91Var3.a) == null) {
                as2Var7 = f51Var.a;
            }
            float fA4 = uq.a(as2Var7 != null ? (Long) as2Var7.a(fs2Var) : null, displayMetrics);
            p91 p91Var4 = f51Var.b;
            if (p91Var4 == null || (as2Var8 = p91Var4.b) == null) {
                as2Var8 = f51Var.a;
            }
            float fA5 = uq.a(as2Var8 != null ? (Long) as2Var8.a(fs2Var) : null, displayMetrics);
            Float f = (Float) Collections.min(u96.i(Float.valueOf(fB / (fA2 + fA3)), Float.valueOf(fB / (fA4 + fA5)), Float.valueOf(fB2 / (fA2 + fA4)), Float.valueOf(fB2 / (fA3 + fA5))));
            if (f.floatValue() > 0.0f && f.floatValue() < 1.0f) {
                fA2 *= f.floatValue();
                fA3 *= f.floatValue();
                fA4 *= f.floatValue();
                fA5 *= f.floatValue();
            }
            fArr = new float[]{fA2, fA2, fA3, fA3, fA5, fA5, fA4, fA4};
        } else {
            fArr = null;
        }
        this.i = fArr;
        if (fArr == null) {
            z = false;
        } else {
            if (fArr.length == 0) {
                defpackage.ag.g("Array is empty.");
                return;
            }
            float f2 = fArr[0];
            int length = fArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = true;
                    break;
                } else {
                    if (!Float.valueOf(fArr[i]).equals(Float.valueOf(f2))) {
                        z2 = false;
                        break;
                    }
                    i++;
                }
            }
            z = !z2;
        }
        this.j = z;
        boolean z5 = this.l;
        boolean zBooleanValue = (f51Var == null || (as2Var4 = f51Var.c) == null) ? false : ((Boolean) as2Var4.a(fs2Var)).booleanValue();
        this.m = zBooleanValue;
        if (zBooleanValue) {
            if ((f51Var != null ? f51Var.d : null) == null && !(this.b.getParent() instanceof uf1)) {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        this.l = z3;
        View view = this.b;
        view.setElevation((this.m && !z3) ? view.getContext().getResources().getDimension(R$dimen.monetization_ads_divkit_div_shadow_elevation) : 0.0f);
        if (this.l) {
            k51 k51Var = (k51) this.f.getValue();
            xz1 xz1Var = f51Var != null ? f51Var.d : null;
            DisplayMetrics displayMetrics2 = k51Var.j.b.getResources().getDisplayMetrics();
            k51Var.b = (xz1Var == null || (as2Var3 = xz1Var.b) == null) ? k51Var.a : pq.a((Number) Long.valueOf(((Number) as2Var3.a(fs2Var)).longValue()), displayMetrics2);
            k51Var.c = (xz1Var == null || (as2Var2 = xz1Var.c) == null) ? -16777216 : ((Number) as2Var2.a(fs2Var)).intValue();
            k51Var.d = (xz1Var == null || (as2Var = xz1Var.a) == null) ? 0.14f : (float) ((Number) as2Var.a(fs2Var)).doubleValue();
            k51Var.h = ((xz1Var == null || (nv1Var2 = xz1Var.d) == null || (ac1Var2 = nv1Var2.a) == null) ? defpackage.w65.b(pq.a(Float.valueOf(0.0f), displayMetrics2)) : pq.a(ac1Var2, displayMetrics2, fs2Var)) - k51Var.b;
            k51Var.i = ((xz1Var == null || (nv1Var = xz1Var.d) == null || (ac1Var = nv1Var.b) == null) ? defpackage.w65.b(pq.a(Float.valueOf(0.5f), displayMetrics2)) : pq.a(ac1Var, displayMetrics2, fs2Var)) - k51Var.b;
        }
        d();
        if (this.l || z5) {
            Object parent = this.b.getParent();
            View view2 = parent instanceof View ? (View) parent : null;
            if (view2 != null) {
                view2.invalidate();
            }
        }
    }

    public final void b(final f51 f51Var, final fs2 fs2Var) {
        nv1 nv1Var;
        ac1 ac1Var;
        as2 as2Var;
        nv1 nv1Var2;
        ac1 ac1Var2;
        as2 as2Var2;
        nv1 nv1Var3;
        ac1 ac1Var3;
        as2 as2Var3;
        nv1 nv1Var4;
        ac1 ac1Var4;
        as2 as2Var4;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        as2 as2Var8;
        as2 as2Var9;
        as2 as2Var10;
        as2 as2Var11;
        as2 as2Var12;
        as2 as2Var13;
        as2 as2Var14;
        p91 p91Var;
        xz1 xz1Var;
        nv1 nv1Var5;
        ac1 ac1Var5;
        ac1 ac1Var6;
        if (f51Var != null) {
            if (ls2.a(f51Var.a) && (((p91Var = f51Var.b) == null || (ls2.a(p91Var.c) && ls2.a(p91Var.d) && ls2.a(p91Var.b) && ls2.a(p91Var.a))) && (f51Var.c instanceof xr2) && (((xz1Var = f51Var.d) == null || ((xz1Var.a instanceof xr2) && (xz1Var.b instanceof xr2) && (xz1Var.c instanceof xr2) && ((nv1Var5 = xz1Var.d) == null || (((ac1Var5 = nv1Var5.a) == null || ((ac1Var5.a instanceof xr2) && (ac1Var5.b instanceof xr2))) && ((ac1Var6 = nv1Var5.b) == null || ((ac1Var6.a instanceof xr2) && (ac1Var6.b instanceof xr2))))))) && gb1.a(f51Var.e)))) {
                return;
            }
            nl3 nl3Var = new nl3() { // from class: h1a
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return l51.a(this.b, f51Var, fs2Var, obj);
                }
            };
            as2 as2Var15 = f51Var.a;
            tp0 tp0VarA = null;
            a(as2Var15 != null ? as2Var15.a(fs2Var, nl3Var) : null);
            p91 p91Var2 = f51Var.b;
            a((p91Var2 == null || (as2Var14 = p91Var2.c) == null) ? null : as2Var14.a(fs2Var, nl3Var));
            p91 p91Var3 = f51Var.b;
            a((p91Var3 == null || (as2Var13 = p91Var3.d) == null) ? null : as2Var13.a(fs2Var, nl3Var));
            p91 p91Var4 = f51Var.b;
            a((p91Var4 == null || (as2Var12 = p91Var4.b) == null) ? null : as2Var12.a(fs2Var, nl3Var));
            p91 p91Var5 = f51Var.b;
            a((p91Var5 == null || (as2Var11 = p91Var5.a) == null) ? null : as2Var11.a(fs2Var, nl3Var));
            a(f51Var.c.a(fs2Var, nl3Var));
            l42 l42Var = f51Var.e;
            a((l42Var == null || (as2Var10 = l42Var.a) == null) ? null : as2Var10.a(fs2Var, nl3Var));
            l42 l42Var2 = f51Var.e;
            a((l42Var2 == null || (as2Var9 = l42Var2.d) == null) ? null : as2Var9.a(fs2Var, nl3Var));
            l42 l42Var3 = f51Var.e;
            a((l42Var3 == null || (as2Var8 = l42Var3.c) == null) ? null : as2Var8.a(fs2Var, nl3Var));
            xz1 xz1Var2 = f51Var.d;
            a((xz1Var2 == null || (as2Var7 = xz1Var2.a) == null) ? null : as2Var7.a(fs2Var, nl3Var));
            xz1 xz1Var3 = f51Var.d;
            a((xz1Var3 == null || (as2Var6 = xz1Var3.b) == null) ? null : as2Var6.a(fs2Var, nl3Var));
            xz1 xz1Var4 = f51Var.d;
            a((xz1Var4 == null || (as2Var5 = xz1Var4.c) == null) ? null : as2Var5.a(fs2Var, nl3Var));
            xz1 xz1Var5 = f51Var.d;
            a((xz1Var5 == null || (nv1Var4 = xz1Var5.d) == null || (ac1Var4 = nv1Var4.a) == null || (as2Var4 = ac1Var4.a) == null) ? null : as2Var4.a(fs2Var, nl3Var));
            xz1 xz1Var6 = f51Var.d;
            a((xz1Var6 == null || (nv1Var3 = xz1Var6.d) == null || (ac1Var3 = nv1Var3.a) == null || (as2Var3 = ac1Var3.b) == null) ? null : as2Var3.a(fs2Var, nl3Var));
            xz1 xz1Var7 = f51Var.d;
            a((xz1Var7 == null || (nv1Var2 = xz1Var7.d) == null || (ac1Var2 = nv1Var2.b) == null || (as2Var2 = ac1Var2.a) == null) ? null : as2Var2.a(fs2Var, nl3Var));
            xz1 xz1Var8 = f51Var.d;
            if (xz1Var8 != null && (nv1Var = xz1Var8.d) != null && (ac1Var = nv1Var.b) != null && (as2Var = ac1Var.b) != null) {
                tp0VarA = as2Var.a(fs2Var, nl3Var);
            }
            a(tp0VarA);
        }
    }

    public final void c(Canvas canvas) {
        if (s16.a(this.b)) {
            Object parent = this.b.getParent();
            if (!(parent instanceof r16) || !s16.a((View) parent)) {
                return;
            }
        }
        if (this.l) {
            float f = ((k51) this.f.getValue()).h;
            float f2 = ((k51) this.f.getValue()).i;
            int iSave = canvas.save();
            canvas.translate(f, f2);
            try {
                NinePatch ninePatch = ((k51) this.f.getValue()).g;
                if (ninePatch != null) {
                    ninePatch.draw(canvas, ((k51) this.f.getValue()).f, ((k51) this.f.getValue()).e);
                }
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
    }

    public final void d() {
        float[] fArr;
        DashPathEffect dashPathEffect;
        float f;
        float[] fArr2 = this.i;
        if (fArr2 != null && (fArr = (float[]) fArr2.clone()) != null) {
            this.d.a(fArr);
            float f2 = this.h / 2.0f;
            int length = fArr.length;
            for (int i = 0; i < length; i++) {
                fArr[i] = Math.max(0.0f, fArr[i] - f2);
            }
            if (this.k) {
                g51 g51Var = (g51) this.e.getValue();
                float f3 = g51Var.h.h;
                float fMin = (f3 - Math.min(g51Var.d, Math.max(1.0f, 0.1f * f3))) / 2.0f;
                g51Var.g.set(fMin, fMin, g51Var.h.b.getWidth() - fMin, g51Var.h.b.getHeight() - fMin);
                g51Var.b.reset();
                g51Var.b.addRoundRect(g51Var.g, fArr, Path.Direction.CW);
                g51Var.b.close();
                Paint paint = g51Var.a;
                if (g51Var.c) {
                    float fHeight = (2.0f * g51Var.g.height()) + (g51Var.g.width() * 2.0f);
                    if (fArr.length != 8) {
                        int i2 = cr3.a;
                        vj5[] vj5VarArr = vj5.b;
                        cr3.a();
                    } else {
                        int iA = defpackage.nh5.a(0, fArr.length - 1, 2);
                        if (iA >= 0) {
                            int i3 = 0;
                            while (true) {
                                float f4 = fArr[i3];
                                float f5 = fArr[i3 + 1];
                                fHeight = ((fHeight - f4) - f5) + ((float) (Math.sqrt(((double) ((f5 * f5) + (f4 * f4))) / 8.0d) * 3.141592653589793d));
                                if (i3 == iA) {
                                    break;
                                } else {
                                    i3 += 2;
                                }
                            }
                        }
                        if (fHeight < 0.0f) {
                            fHeight = 0.0f;
                        }
                    }
                    float f6 = g51Var.e;
                    if (fHeight > 0.0f) {
                        float f7 = g51Var.f;
                        float f8 = f6 + f7;
                        float f9 = (int) (fHeight / f8);
                        float f10 = fHeight - (f8 * f9);
                        f6 += ((f10 * f6) / f8) / f9;
                        f = (((f10 * f7) / f8) / f9) + f7;
                    } else {
                        f = g51Var.f;
                    }
                    dashPathEffect = new DashPathEffect(new float[]{f6, f}, 0.0f);
                } else {
                    dashPathEffect = null;
                }
                paint.setPathEffect(dashPathEffect);
            }
            if (this.l) {
                ((k51) this.f.getValue()).a(fArr);
            }
        }
        e();
    }

    public final void e() {
        float f;
        ViewOutlineProvider viewOutlineProvider = null;
        if (g()) {
            this.b.setClipToOutline(false);
            View view = this.b;
            if (!this.l && !s16.a(view)) {
                viewOutlineProvider = ViewOutlineProvider.BACKGROUND;
            }
            view.setOutlineProvider(viewOutlineProvider);
            return;
        }
        float[] fArr = this.i;
        if (fArr == null) {
            f = 0.0f;
        } else {
            if (fArr.length == 0) {
                defpackage.ag.g("Array is empty.");
                return;
            }
            f = fArr[0];
        }
        if (f != 0.0f) {
            j51 j51Var = this.g;
            j51Var.a = f;
            this.b.setOutlineProvider(j51Var);
            this.b.setClipToOutline(this.n);
            return;
        }
        this.b.setClipToOutline(false);
        View view2 = this.b;
        if (!this.l && !s16.a(view2)) {
            viewOutlineProvider = ViewOutlineProvider.BACKGROUND;
        }
        view2.setOutlineProvider(viewOutlineProvider);
    }

    @Override // yads.hs2
    public final List f() {
        return this.o;
    }

    public final boolean g() {
        if (!this.n) {
            return false;
        }
        if (this.a.D || this.l) {
            return true;
        }
        return (!this.m && (this.j || this.k)) || s16.a(this.b);
    }

    public final void b(Canvas canvas) {
        if (this.k) {
            canvas.drawPath(((g51) this.e.getValue()).b, ((g51) this.e.getValue()).a);
        }
    }

    public static final k51 b(l51 l51Var) {
        return new k51(l51Var);
    }

    public static final g51 a(l51 l51Var) {
        return new g51(l51Var);
    }

    public static final j59 a(l51 l51Var, f51 f51Var, fs2 fs2Var, Object obj) {
        l51Var.a(f51Var, fs2Var);
        l51Var.b.invalidate();
        return j59.a;
    }

    public final void a(Canvas canvas) {
        if (g()) {
            canvas.clipPath(this.d.a);
        }
    }
}
