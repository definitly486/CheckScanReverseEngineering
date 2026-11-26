package yads;

import android.content.res.Resources;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.view.Choreographer;
import defpackage.kx6;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public final class kt4 implements Choreographer.FrameCallback {
    public final zo1 b;
    public final Choreographer c = Choreographer.getInstance();
    public final LinkedHashSet d = new LinkedHashSet();
    public boolean e;
    public long f;

    public kt4(zo1 zo1Var) {
        this.b = zo1Var;
    }

    public final void a() {
        if (this.e || this.d.isEmpty() || !this.b.isShown()) {
            return;
        }
        this.e = true;
        this.f = 0L;
        this.c.postFrameCallback(this);
    }

    public final void b() {
        if (this.e) {
            this.e = false;
            this.c.removeFrameCallback(this);
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        boolean z;
        Resources resources;
        DisplayMetrics displayMetrics;
        float f;
        if (this.e) {
            if (this.d.isEmpty() || !this.b.isShown()) {
                b();
                return;
            }
            long j2 = this.f;
            float fD = j2 == 0 ? 0.0f : kx6.d((j - j2) * 1.0E-9f, 0.0f, 0.05f);
            this.f = j;
            Iterator it = this.d.iterator();
            loop0: while (true) {
                z = false;
                while (true) {
                    if (!it.hasNext()) {
                        break loop0;
                    }
                    dx3 dx3Var = (dx3) it.next();
                    zo1 zo1Var = dx3Var.c;
                    CharSequence text = zo1Var != null ? zo1Var.getText() : null;
                    Spanned spanned = text instanceof Spanned ? (Spanned) text : null;
                    if (spanned == null || spanned.getSpanStart(dx3Var) == -1) {
                        f = fD;
                        it.remove();
                    } else {
                        bx3 bx3Var = dx3Var.b;
                        zw3 zw3Var = bx3Var instanceof zw3 ? (zw3) bx3Var : null;
                        if (zw3Var == null || !dx3Var.h || !zw3Var.d || !zw3Var.c) {
                            f = fD;
                            if (!z) {
                                break;
                            }
                        } else {
                            if (fD > 0.0f) {
                                float f2 = dx3Var.f;
                                float f3 = dx3Var.g;
                                for (cx3 cx3Var : dx3Var.d) {
                                    float f4 = cx3Var.f * fD;
                                    if (f4 != 0.0f) {
                                        double d = f4;
                                        float fCos = (float) Math.cos(d);
                                        float fSin = (float) Math.sin(d);
                                        float f5 = cx3Var.d;
                                        float f6 = cx3Var.e;
                                        cx3Var.d = (f5 * fCos) - (f6 * fSin);
                                        cx3Var.e = (f6 * fCos) + (f5 * fSin);
                                    }
                                    float f7 = (cx3Var.d * fD) + cx3Var.a;
                                    cx3Var.a = f7;
                                    float f8 = (cx3Var.e * fD) + cx3Var.b;
                                    cx3Var.b = f8;
                                    float f9 = cx3Var.c;
                                    float f10 = -f9;
                                    if (f7 < f10) {
                                        f7 += (f9 * 2.0f) + f2;
                                        cx3Var.a = f7;
                                    }
                                    if (f7 > f2 + f9) {
                                        cx3Var.a = f7 - ((f9 * 2.0f) + f2);
                                    }
                                    if (f8 < f10) {
                                        f8 += (f9 * 2.0f) + f3;
                                        cx3Var.b = f8;
                                    }
                                    if (f8 > f3 + f9) {
                                        cx3Var.b = f8 - ((f9 * 2.0f) + f3);
                                    }
                                    float f11 = (1000.0f * fD) + cx3Var.h;
                                    cx3Var.h = f11;
                                    if (f11 >= cx3Var.g) {
                                        Random random = new Random(dx3Var.i + ((long) cx3Var.hashCode()));
                                        float f12 = 1.0f;
                                        cx3Var.c = ((random.nextFloat() * 0.8f) + 0.7f) * Math.max(1.0f, zw3Var.e);
                                        cx3Var.a = random.nextFloat() * f2;
                                        cx3Var.b = random.nextFloat() * f3;
                                        zo1 zo1Var2 = dx3Var.c;
                                        if (zo1Var2 != null && (resources = zo1Var2.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                                            f12 = displayMetrics.density;
                                        }
                                        float f13 = 2.0f * f12;
                                        float fNextFloat = ((float) (((double) random.nextFloat()) * 6.283185307179586d)) - 3.1415927f;
                                        float fNextFloat2 = (random.nextFloat() * ((f12 * 9.0f) - f13)) + f13;
                                        double d2 = fNextFloat;
                                        cx3Var.d = ((float) Math.cos(d2)) * fNextFloat2;
                                        cx3Var.e = ((float) Math.sin(d2)) * fNextFloat2;
                                        cx3Var.f = (random.nextFloat() - 0.5f) * 0.5f;
                                        cx3Var.g = (random.nextFloat() * 6000.0f) + 6000.0f;
                                        cx3Var.h = 0.0f;
                                        fD = fD;
                                    }
                                }
                            }
                            f = fD;
                        }
                        z = true;
                    }
                    fD = f;
                }
                fD = f;
            }
            if (this.d.isEmpty() || !z) {
                b();
            } else {
                this.b.postInvalidateOnAnimation();
                this.c.postFrameCallback(this);
            }
        }
    }
}
