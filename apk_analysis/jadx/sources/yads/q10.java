package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.text.Layout;
import android.util.DisplayMetrics;
import defpackage.kx6;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class q10 extends ab2 {
    public final Context a;
    public final fs2 b;
    public final Path c = new Path();
    public final Paint d = new Paint();

    public q10(Context context, fs2 fs2Var) {
        this.a = context;
        this.b = fs2Var;
    }

    public final void a(Canvas canvas, Rect[] rectArr, int i, int i2, int i3, int i4) {
        int i5;
        Rect rect;
        int i6;
        int i7;
        int i8;
        int[] iArrCopyOf;
        int i9;
        int[] iArrCopyOf2;
        int i10;
        float f;
        float f2;
        float f3;
        float fMin;
        int i11 = i;
        int i12 = 1;
        if (i2 < 1) {
            return;
        }
        Rect rect2 = rectArr[i11];
        int i13 = (i11 + i2) - 1;
        Rect rect3 = rectArr[i13];
        int i14 = 0;
        int i15 = 2;
        if (i2 == 1) {
            iArrCopyOf = new int[]{rect3.width(), -rectArr[i13].height()};
            rect = rect3;
            i6 = 0;
            i7 = 2;
        } else {
            int i16 = rect3.left;
            int i17 = rect3.bottom;
            int[] iArr = new int[i2 * 2];
            if (i11 <= i13) {
                int i18 = i13;
                i8 = 0;
                while (true) {
                    Rect rect4 = rectArr[i18];
                    int i19 = rect4.left;
                    if (i19 != i16) {
                        iArr[i8 * 2] = i19 - i16;
                        i8++;
                        i16 = i19;
                    }
                    int i20 = rect4.top - i17;
                    i6 = i14;
                    int i21 = i18 - 1;
                    while (true) {
                        if (i21 < i11) {
                            i5 = i12;
                            rect = rect3;
                            i7 = i15;
                            break;
                        }
                        i7 = i15;
                        Rect rect5 = rectArr[i21];
                        i5 = i12;
                        int i22 = rect5.bottom;
                        rect = rect3;
                        int i23 = rect4.top;
                        if (i22 <= i23) {
                            break;
                        }
                        if (rect5.left <= rect4.left) {
                            i20 -= i23 - i22;
                            break;
                        }
                        i21--;
                        i15 = i7;
                        i12 = i5;
                        rect3 = rect;
                    }
                    if (i20 > 0) {
                        i20 = i6;
                    }
                    int i24 = (i8 * 2) + 1;
                    iArr[i24] = iArr[i24] + i20;
                    i17 += i20;
                    if (i18 == i11) {
                        break;
                    }
                    i18--;
                    i15 = i7;
                    i14 = i6;
                    i12 = i5;
                    rect3 = rect;
                }
            } else {
                i5 = 1;
                rect = rect3;
                i6 = 0;
                i7 = 2;
                i8 = 0;
            }
            iArr[i8 * 2] = rectArr[i11].width();
            iArrCopyOf = Arrays.copyOf(iArr, (i8 + 1) * 2);
            i12 = i5;
        }
        if (i2 == i12) {
            int i25 = -rectArr[i11].width();
            int iHeight = rectArr[i11].height();
            iArrCopyOf2 = new int[i7];
            iArrCopyOf2[i6] = i25;
            iArrCopyOf2[i12] = iHeight;
            i9 = i12;
        } else {
            Rect rect6 = rectArr[i11];
            int i26 = rect6.right;
            int i27 = rect6.top;
            int[] iArr2 = new int[i2 * i7];
            int i28 = i6;
            if (i11 <= i13) {
                while (true) {
                    Rect rect7 = rectArr[i11];
                    int i29 = rect7.right;
                    if (i29 != i26) {
                        iArr2[i28 * 2] = i29 - i26;
                        i28++;
                        i26 = i29;
                    }
                    int i30 = rect7.bottom - i27;
                    int i31 = i11 + 1;
                    int i32 = i31;
                    while (true) {
                        if (i32 <= i13) {
                            Rect rect8 = rectArr[i32];
                            int i33 = rect8.top;
                            int i34 = rect7.bottom;
                            if (i33 < i34) {
                                i10 = i27;
                                if (rect8.right >= rect7.right) {
                                    i30 -= i34 - i33;
                                    break;
                                } else {
                                    i32++;
                                    i27 = i10;
                                }
                            }
                        }
                        i10 = i27;
                        break;
                    }
                    if (i30 < 0) {
                        i30 = i6;
                    }
                    int i35 = (i28 * 2) + 1;
                    iArr2[i35] = iArr2[i35] + i30;
                    i27 = i10 + i30;
                    if (i11 == i13) {
                        break;
                    } else {
                        i11 = i31;
                    }
                }
            }
            iArr2[i28 * 2] = -rectArr[i13].width();
            i9 = 1;
            iArrCopyOf2 = Arrays.copyOf(iArr2, (i28 + 1) * 2);
        }
        this.c.reset();
        float f4 = i3;
        float f5 = 2.0f;
        float fMin2 = Math.min(f4, Math.min(rect2.width() / 2.0f, iArrCopyOf2[i9] / 2.0f));
        this.c.moveTo(rect2.right - fMin2, rect2.top);
        float f6 = 0.9f;
        float f7 = 0.1f;
        this.c.rQuadTo(fMin2 * 0.9f, fMin2 * 0.1f, fMin2, fMin2);
        int i36 = 2;
        int iA = defpackage.nh5.a(i6, iArrCopyOf2.length - 1, 2);
        if (iA >= 0) {
            int i37 = 0;
            while (true) {
                boolean z = i37 >= iArrCopyOf2.length - i36;
                float f8 = iArrCopyOf2[i37];
                float f9 = iArrCopyOf2[i37 + 1];
                float f10 = z ? 0.0f : iArrCopyOf2[i37 + 3];
                f = f5;
                fMin = Math.min(f4, Math.min(Math.abs(f8) / f5, f9 / f));
                this.c.rLineTo(0.0f, (f9 - fMin2) - fMin);
                f2 = f6;
                f3 = f7;
                this.c.rQuadTo(fMin2 * f7 * Math.signum(f8), fMin * f2, Math.signum(f8) * fMin, fMin);
                if (!z) {
                    fMin2 = Math.min(f4, Math.min(Math.abs(f8) / f, f10 / f));
                    this.c.rLineTo(f8 - (Math.signum(f8) * (fMin2 + fMin)), 0.0f);
                    this.c.rQuadTo(Math.signum(f8) * fMin2 * f2, fMin2 * f3, Math.signum(f8) * fMin2, fMin2);
                }
                if (i37 == iA) {
                    break;
                }
                i37 += 2;
                f5 = f;
                f6 = f2;
                f7 = f3;
                i36 = 2;
            }
        } else {
            f = 2.0f;
            f2 = 0.9f;
            f3 = 0.1f;
            fMin = 0.0f;
        }
        float fMin3 = Math.min(f4, Math.min(rect.width() / f, (-iArrCopyOf[1]) / f));
        this.c.rLineTo((-rect.width()) + fMin + fMin3, 0.0f);
        float f11 = -0.9f;
        float f12 = -0.1f;
        float f13 = -fMin3;
        this.c.rQuadTo(fMin3 * (-0.9f), fMin3 * (-0.1f), f13, f13);
        boolean z2 = false;
        int i38 = 2;
        int iA2 = defpackage.nh5.a(0, iArrCopyOf.length - 1, 2);
        if (iA2 >= 0) {
            int i39 = 0;
            while (true) {
                boolean z3 = i39 >= iArrCopyOf.length - i38 ? true : z2;
                float f14 = iArrCopyOf[i39];
                float f15 = iArrCopyOf[i39 + 1];
                float f16 = z3 ? 0.0f : iArrCopyOf[i39 + 3];
                float f17 = f11;
                float fMin4 = Math.min(f4, Math.min(Math.abs(f14) / f, (-f15) / f));
                this.c.rLineTo(0.0f, f15 + fMin3 + fMin4);
                float f18 = f12;
                this.c.rQuadTo(fMin4 * f3 * Math.signum(f14), fMin4 * f17, Math.signum(f14) * fMin4, -fMin4);
                if (!z3) {
                    fMin3 = Math.min(f4, Math.min(Math.abs(f14) / f, (-f16) / f));
                    this.c.rLineTo(f14 - (Math.signum(f14) * (fMin4 + fMin3)), 0.0f);
                    this.c.rQuadTo(Math.signum(f14) * fMin3 * f2, fMin3 * f18, Math.signum(f14) * fMin3, -fMin3);
                }
                if (i39 == iA2) {
                    break;
                }
                i39 += 2;
                f11 = f17;
                f12 = f18;
                z2 = false;
                i38 = 2;
            }
        }
        this.c.close();
        this.d.setColor(i4);
        canvas.drawPath(this.c, this.d);
    }

    public static void a(int[] iArr, int i) {
        boolean z;
        int i2 = 0;
        do {
            defpackage.w74 w74VarL = i2 % 2 == 0 ? yr.L(iArr) : kx6.l(yr.L(iArr));
            int i3 = w74VarL.b;
            int i4 = w74VarL.c;
            int i5 = w74VarL.d;
            if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                z = false;
                while (true) {
                    int i6 = i3 == 0 ? 0 : iArr[i3 - 1] - iArr[i3];
                    iArr.getClass();
                    int i7 = i3 == iArr.length - 1 ? 0 : iArr[i3 + 1] - iArr[i3];
                    if ((i6 <= 0 || i6 >= i) && (i7 <= 0 || i7 >= i)) {
                        if (i3 != 0 && i6 < 0 && Math.abs(i6) < i) {
                            iArr[i3 - 1] = iArr[i3];
                            z = true;
                        }
                        if (i3 != iArr.length - 1 && i7 < 0 && Math.abs(i7) < i) {
                            iArr[i3 + 1] = iArr[i3];
                            z = true;
                        }
                    }
                    if (i3 == i4) {
                        break;
                    } else {
                        i3 += i5;
                    }
                }
            } else {
                z = false;
            }
            i2++;
        } while (z);
    }

    @Override // yads.ab2
    public final void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, o92 o92Var, h92 h92Var) {
        g12 g12Var;
        Rect[] rectArr;
        int i5;
        int i6;
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        as2 as2Var5;
        Object objA = h92Var != null ? h92Var.a() : null;
        w61 w61Var = objA instanceof w61 ? (w61) objA : null;
        if (w61Var == null) {
            return;
        }
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        int iIntValue = ((Number) w61Var.a.a(this.b)).intValue();
        int iA = uq.a((Long) w61Var.b.a(this.b), displayMetrics);
        yc1 yc1Var = w61Var.c;
        if (yc1Var == null || (as2Var5 = yc1Var.g) == null || (g12Var = (g12) as2Var5.a(this.b)) == null) {
            g12Var = g12.DP;
        }
        yc1 yc1Var2 = w61Var.c;
        int iA2 = (yc1Var2 == null || (as2Var4 = yc1Var2.c) == null) ? 0 : uq.a(Long.valueOf(((Number) as2Var4.a(this.b)).longValue()), displayMetrics, g12Var);
        yc1 yc1Var3 = w61Var.c;
        int iA3 = (yc1Var3 == null || (as2Var3 = yc1Var3.f) == null) ? 0 : uq.a(Long.valueOf(((Number) as2Var3.a(this.b)).longValue()), displayMetrics, g12Var);
        yc1 yc1Var4 = w61Var.c;
        int iA4 = (yc1Var4 == null || (as2Var2 = yc1Var4.d) == null) ? 0 : uq.a(Long.valueOf(((Number) as2Var2.a(this.b)).longValue()), displayMetrics, g12Var);
        yc1 yc1Var5 = w61Var.c;
        Rect rect = new Rect(iA2, iA3, iA4, (yc1Var5 == null || (as2Var = yc1Var5.a) == null) ? 0 : uq.a(Long.valueOf(((Number) as2Var.a(this.b)).longValue()), displayMetrics, g12Var));
        int i7 = i2 - i;
        int i8 = i7 + 1;
        if (i8 == 0) {
            rectArr = new Rect[0];
        } else {
            Rect[] rectArr2 = new Rect[i8];
            int i9 = 0;
            while (i9 < i8) {
                int i10 = i + i9;
                rectArr2[i9] = new Rect((i9 == 0 ? i3 : defpackage.w65.b(layout.getLineLeft(i + i9))) - rect.left, layout.getLineTop(i10) - rect.top, (i9 == i7 ? i4 : defpackage.w65.b(layout.getLineRight(i10))) + rect.right, layout.getLineBottom(i10) + rect.bottom);
                i9++;
            }
            int i11 = ((Rect) yr.I(rectArr2)).left;
            int i12 = ((Rect) yr.I(rectArr2)).top;
            int i13 = 0;
            while (i13 < i8) {
                Rect rect2 = rectArr2[i13];
                int i14 = rect2.bottom - i12;
                i13++;
                int i15 = i13;
                while (true) {
                    if (i15 < i8) {
                        Rect rect3 = rectArr2[i15];
                        int i16 = rect3.top;
                        int i17 = rect2.bottom;
                        if (i16 < i17) {
                            i6 = rect3.left;
                            if (i6 <= rect2.left) {
                                i14 -= i17 - i16;
                                break;
                            }
                            i15++;
                        }
                    }
                    i6 = Integer.MIN_VALUE;
                    break;
                }
                if (i14 <= 0) {
                    rect2.left = Math.max(i11, i6);
                    i14 = 0;
                } else {
                    i11 = rect2.left;
                }
                i12 += i14;
            }
            int i18 = ((Rect) yr.I(rectArr2)).right;
            int i19 = ((Rect) yr.I(rectArr2)).top;
            int i20 = 0;
            while (i20 < i8) {
                Rect rect4 = rectArr2[i20];
                int i21 = rect4.bottom - i19;
                i20++;
                int i22 = i20;
                while (true) {
                    if (i22 < i8) {
                        Rect rect5 = rectArr2[i22];
                        int i23 = rect5.top;
                        int i24 = rect4.bottom;
                        if (i23 < i24) {
                            i5 = rect5.right;
                            if (i5 >= rect4.right) {
                                i21 -= i24 - i23;
                                break;
                            }
                            i22++;
                        }
                    }
                    i5 = Integer.MAX_VALUE;
                    break;
                }
                if (i21 <= 0) {
                    rect4.right = Math.min(i18, i5);
                    i21 = 0;
                } else {
                    i18 = rect4.right;
                }
                i19 += i21;
            }
            int[] iArr = new int[i8];
            int[] iArr2 = new int[i8];
            for (int i25 = 0; i25 < i8; i25++) {
                Rect rect6 = rectArr2[i25];
                iArr[i25] = -rect6.left;
                iArr2[i25] = rect6.right;
            }
            int i26 = iA * 2;
            a(iArr, i26);
            a(iArr2, i26);
            for (int i27 = 0; i27 < i8; i27++) {
                Rect rect7 = rectArr2[i27];
                rect7.left = -iArr[i27];
                rect7.right = iArr2[i27];
            }
            rectArr = rectArr2;
        }
        if (rectArr.length < 2) {
            a(canvas, rectArr, 0, rectArr.length, iA, iIntValue);
            return;
        }
        Rect[] rectArr3 = rectArr;
        int length = rectArr3.length - 1;
        int i28 = 1;
        int i29 = 0;
        int i30 = 0;
        while (i29 < length) {
            int i31 = rectArr3[i29].left;
            i29++;
            if (i31 > rectArr3[i29].right) {
                a(canvas, rectArr3, i30, i28, iA, iIntValue);
                i30 = i29;
                i28 = 0;
            }
            i28++;
        }
        a(canvas, rectArr3, i30, i28, iA, iIntValue);
    }
}
