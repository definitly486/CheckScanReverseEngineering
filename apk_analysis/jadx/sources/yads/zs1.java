package yads;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class zs1 implements ViewPager2.PageTransformer {
    public final RecyclerView a;
    public final fs2 b;
    public final SparseArray c;
    public final int d;
    public final xq1 e;
    public final xs1 f;
    public final boolean g;

    public zs1(RecyclerView recyclerView, fs2 fs2Var, SparseArray sparseArray, int i, xq1 xq1Var, xs1 xs1Var, boolean z) {
        this.a = recyclerView;
        this.b = fs2Var;
        this.c = sparseArray;
        this.d = i;
        this.e = xq1Var;
        this.f = xs1Var;
        this.g = z;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x021e A[EDGE_INSN: B:120:0x021e->B:121:0x0220 BREAK  A[LOOP:1: B:112:0x01fe->B:118:0x0219]] */
    /* JADX WARN: Code duplicated, block: B:126:0x022c A[LOOP:3: B:46:0x00d9->B:126:0x022c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:127:0x0230 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0232  */
    /* JADX WARN: Code duplicated, block: B:129:0x023e  */
    /* JADX WARN: Code duplicated, block: B:131:0x024d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0252  */
    /* JADX WARN: Code duplicated, block: B:135:0x025c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0267  */
    /* JADX WARN: Code duplicated, block: B:140:0x026d A[LOOP:4: B:136:0x0263->B:140:0x026d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x027e  */
    /* JADX WARN: Code duplicated, block: B:145:0x028a  */
    /* JADX WARN: Code duplicated, block: B:146:0x029c  */
    /* JADX WARN: Code duplicated, block: B:148:0x02a0 A[EDGE_INSN: B:148:0x02a0->B:149:0x02a2 BREAK  A[LOOP:4: B:136:0x0263->B:140:0x026d]] */
    /* JADX WARN: Code duplicated, block: B:167:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x0278 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x02a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad A[PHI: r10
      0x00ad: PHI (r10v12 float) = (r10v11 float), (r10v17 float) binds: [B:30:0x0096, B:34:0x00aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c8 A[LOOP:2: B:37:0x00af->B:43:0x00c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:68:0x0144  */
    /* JADX WARN: Code duplicated, block: B:86:0x0183 A[EDGE_INSN: B:86:0x0183->B:87:0x0185 BREAK  A[LOOP:0: B:78:0x0163->B:84:0x017e]] */
    public final void a(View view, float f, boolean z) {
        int i;
        float fA;
        float f2;
        float fA2;
        float f3;
        float f4;
        float fFloor;
        float fFloor2;
        Float fA3;
        float fFloatValue;
        int i2;
        ys1 ys1Var;
        Float fC;
        float fFloatValue2;
        float fFloatValue3;
        Float fC2;
        Float fA4;
        int i3;
        int i4;
        int size;
        float f5;
        float f6;
        Float fA5;
        float f7;
        boolean z2;
        Float fA6;
        float f8;
        float f9;
        Float fB;
        float fFloor3;
        Float fA7;
        float fFloor4;
        float fFloatValue4;
        Float fA8;
        int childAdapterPosition = this.a.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        if (z) {
            f4 = this.d * f;
        } else {
            xs1 xs1Var = this.f;
            boolean z3 = this.e instanceof vq1;
            boolean z4 = true;
            if (f == 0.0f) {
                f2 = 0.0f;
                fA2 = 0.0f;
            } else {
                int iSignum = (int) Math.signum(f);
                int iAbs = (int) Math.abs(f);
                if (1 <= iAbs) {
                    i = childAdapterPosition;
                    fA = 0.0f;
                    int i5 = 1;
                    while (true) {
                        fA += xs1Var.a(i, iSignum);
                        i -= iSignum;
                        if (i5 == iAbs) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                } else {
                    i = childAdapterPosition;
                    fA = 0.0f;
                }
                float fAbs = Math.abs(f);
                f2 = 0.0f;
                float fFloor5 = fAbs - ((float) Math.floor(fAbs));
                fA2 = fA + (fFloor5 > 0.0f ? xs1Var.a(i, iSignum) * fFloor5 : 0.0f);
            }
            if (!z3) {
                double d = f;
                int iCeil = childAdapterPosition - ((int) Math.ceil(d));
                int iFloor = childAdapterPosition - ((int) Math.floor(d));
                float f10 = xs1Var.a;
                ts1 ts1Var = xs1Var.d;
                float f11 = (f10 - ts1Var.g) - ts1Var.h;
                Float fA9 = xs1Var.c.a(iCeil);
                if (fA9 == null) {
                    if (r8 <= 0) {
                        float fAbs2 = Math.abs(f);
                        fFloor2 = fAbs2 - ((float) Math.floor(fAbs2));
                    } else {
                        float fAbs3 = Math.abs(f);
                        fFloor = fAbs3 - ((float) Math.floor(fAbs3));
                        if (fFloor > f2) {
                            fFloor2 = 1.0f - fFloor;
                        } else {
                            fFloor2 = f2;
                        }
                    }
                    fA3 = xs1Var.c.a(iCeil);
                    if (fA3 != null) {
                        f3 = f2;
                        break;
                    }
                    fFloatValue = fA3.floatValue() * fFloor2;
                    i2 = iCeil - 1;
                    while (true) {
                        ys1Var = xs1Var.c;
                        if (-1 < i2) {
                            fC = ys1Var.c(iCeil);
                            if (fC != null) {
                                fFloatValue3 = fC.floatValue();
                                fC2 = xs1Var.c.c(iFloor);
                                if (fC2 != null) {
                                    fFloatValue2 = ((fC2.floatValue() * fFloor2) + ((1.0f - fFloor2) * fFloatValue3)) - xs1Var.d.g;
                                } else {
                                    fFloatValue2 = f2;
                                }
                            } else {
                                fFloatValue2 = f2;
                            }
                            f3 = fFloatValue - fFloatValue2;
                            break;
                        }
                        fA4 = ys1Var.a(i2);
                        if (fA4 != null) {
                            f3 = f2;
                            break;
                        } else {
                            fFloatValue += fA4.floatValue() + xs1Var.b;
                            i2--;
                        }
                    }
                } else {
                    float fFloatValue5 = fA9.floatValue();
                    if (fFloatValue5 >= f11) {
                        f6 = 1.0f;
                    } else if (iCeil == iFloor) {
                        i3 = iCeil - 1;
                        while (true) {
                            if (-1 < i3) {
                                f7 = xs1Var.b;
                                z2 = z4;
                                fA6 = xs1Var.c.a(i3);
                                if (fA6 != null) {
                                    fFloatValue5 += fA6.floatValue() + f7;
                                    if (fFloatValue5 < f11) {
                                        f6 = 1.0f;
                                    } else {
                                        i3--;
                                        z4 = z2;
                                    }
                                }
                            }
                            i4 = iFloor + 1;
                            size = xs1Var.f.o.size();
                            while (true) {
                                if (i4 < size) {
                                    f5 = xs1Var.b;
                                    f6 = 1.0f;
                                    fA5 = xs1Var.c.a(i4);
                                    if (fA5 != null) {
                                        fFloatValue5 += fA5.floatValue() + f5;
                                        if (fFloatValue5 >= f11) {
                                            i4++;
                                        }
                                    }
                                }
                                if (r8 <= 0) {
                                    float fAbs4 = Math.abs(f);
                                    fFloor2 = fAbs4 - ((float) Math.floor(fAbs4));
                                } else {
                                    float fAbs5 = Math.abs(f);
                                    fFloor = fAbs5 - ((float) Math.floor(fAbs5));
                                    if (fFloor > f2) {
                                        fFloor2 = 1.0f - fFloor;
                                    } else {
                                        fFloor2 = f2;
                                    }
                                }
                                fA3 = xs1Var.c.a(iCeil);
                                if (fA3 != null) {
                                    f3 = f2;
                                    break;
                                }
                                fFloatValue = fA3.floatValue() * fFloor2;
                                i2 = iCeil - 1;
                                while (true) {
                                    ys1Var = xs1Var.c;
                                    if (-1 < i2) {
                                        fC = ys1Var.c(iCeil);
                                        if (fC != null) {
                                            fFloatValue3 = fC.floatValue();
                                            fC2 = xs1Var.c.c(iFloor);
                                            if (fC2 != null) {
                                                fFloatValue2 = ((fC2.floatValue() * fFloor2) + ((1.0f - fFloor2) * fFloatValue3)) - xs1Var.d.g;
                                            } else {
                                                fFloatValue2 = f2;
                                            }
                                        } else {
                                            fFloatValue2 = f2;
                                        }
                                        f3 = fFloatValue - fFloatValue2;
                                        break;
                                    }
                                    fA4 = ys1Var.a(i2);
                                    if (fA4 != null) {
                                        f3 = f2;
                                        break;
                                    } else {
                                        fFloatValue += fA4.floatValue() + xs1Var.b;
                                        i2--;
                                    }
                                }
                            }
                        }
                    } else {
                        float f12 = xs1Var.b;
                        Float fA10 = xs1Var.c.a(iFloor);
                        if (fA10 == null) {
                            if (r8 <= 0) {
                                float fAbs6 = Math.abs(f);
                                fFloor2 = fAbs6 - ((float) Math.floor(fAbs6));
                            } else {
                                float fAbs7 = Math.abs(f);
                                fFloor = fAbs7 - ((float) Math.floor(fAbs7));
                                if (fFloor > f2) {
                                    fFloor2 = 1.0f - fFloor;
                                } else {
                                    fFloor2 = f2;
                                }
                            }
                            fA3 = xs1Var.c.a(iCeil);
                            if (fA3 != null) {
                                f3 = f2;
                                break;
                            }
                            fFloatValue = fA3.floatValue() * fFloor2;
                            i2 = iCeil - 1;
                            while (true) {
                                ys1Var = xs1Var.c;
                                if (-1 < i2) {
                                    fC = ys1Var.c(iCeil);
                                    if (fC != null) {
                                        fFloatValue3 = fC.floatValue();
                                        fC2 = xs1Var.c.c(iFloor);
                                        if (fC2 != null) {
                                            fFloatValue2 = ((fC2.floatValue() * fFloor2) + ((1.0f - fFloor2) * fFloatValue3)) - xs1Var.d.g;
                                        } else {
                                            fFloatValue2 = f2;
                                        }
                                    } else {
                                        fFloatValue2 = f2;
                                    }
                                    f3 = fFloatValue - fFloatValue2;
                                    break;
                                }
                                fA4 = ys1Var.a(i2);
                                if (fA4 != null) {
                                    f3 = f2;
                                    break;
                                } else {
                                    fFloatValue += fA4.floatValue() + xs1Var.b;
                                    i2--;
                                }
                            }
                        } else {
                            fFloatValue5 += fA10.floatValue() + f12;
                            if (fFloatValue5 < f11) {
                                i3 = iCeil - 1;
                                while (true) {
                                    if (-1 < i3) {
                                        f7 = xs1Var.b;
                                        z2 = z4;
                                        fA6 = xs1Var.c.a(i3);
                                        if (fA6 != null) {
                                            fFloatValue5 += fA6.floatValue() + f7;
                                            if (fFloatValue5 < f11) {
                                                i3--;
                                                z4 = z2;
                                            }
                                        }
                                    }
                                    i4 = iFloor + 1;
                                    size = xs1Var.f.o.size();
                                    while (true) {
                                        if (i4 < size) {
                                            f5 = xs1Var.b;
                                            f6 = 1.0f;
                                            fA5 = xs1Var.c.a(i4);
                                            if (fA5 != null) {
                                                fFloatValue5 += fA5.floatValue() + f5;
                                                if (fFloatValue5 >= f11) {
                                                    i4++;
                                                }
                                            }
                                        }
                                        if (r8 <= 0) {
                                            float fAbs8 = Math.abs(f);
                                            fFloor2 = fAbs8 - ((float) Math.floor(fAbs8));
                                        } else {
                                            float fAbs9 = Math.abs(f);
                                            fFloor = fAbs9 - ((float) Math.floor(fAbs9));
                                            if (fFloor > f2) {
                                                fFloor2 = 1.0f - fFloor;
                                            } else {
                                                fFloor2 = f2;
                                            }
                                        }
                                        fA3 = xs1Var.c.a(iCeil);
                                        if (fA3 != null) {
                                            f3 = f2;
                                            break;
                                        }
                                        fFloatValue = fA3.floatValue() * fFloor2;
                                        i2 = iCeil - 1;
                                        while (true) {
                                            ys1Var = xs1Var.c;
                                            if (-1 < i2) {
                                                fC = ys1Var.c(iCeil);
                                                if (fC != null) {
                                                    fFloatValue3 = fC.floatValue();
                                                    fC2 = xs1Var.c.c(iFloor);
                                                    if (fC2 != null) {
                                                        fFloatValue2 = ((fC2.floatValue() * fFloor2) + ((1.0f - fFloor2) * fFloatValue3)) - xs1Var.d.g;
                                                    } else {
                                                        fFloatValue2 = f2;
                                                    }
                                                } else {
                                                    fFloatValue2 = f2;
                                                }
                                                f3 = fFloatValue - fFloatValue2;
                                                break;
                                            }
                                            fA4 = ys1Var.a(i2);
                                            if (fA4 != null) {
                                                f3 = f2;
                                                break;
                                            } else {
                                                fFloatValue += fA4.floatValue() + xs1Var.b;
                                                i2--;
                                            }
                                        }
                                    }
                                }
                            }
                            f6 = 1.0f;
                        }
                    }
                    if (xs1Var.e) {
                        f3 = f2;
                        break;
                    }
                    if (xs1Var.g == rr1.START) {
                        f8 = f2;
                        break;
                    }
                    if (f <= 0.0f) {
                        float fAbs10 = Math.abs(f);
                        fFloor4 = fAbs10 - ((float) Math.floor(fAbs10));
                    } else {
                        float fAbs11 = Math.abs(f);
                        float fFloor6 = fAbs11 - ((float) Math.floor(fAbs11));
                        fFloor4 = fFloor6 > f2 ? f6 - fFloor6 : f2;
                    }
                    Float fC3 = xs1Var.c.c(iCeil);
                    if (fC3 != null) {
                        float fFloatValue6 = fC3.floatValue();
                        Float fC4 = xs1Var.c.c(iFloor);
                        if (fC4 != null) {
                            fFloatValue4 = ((fC4.floatValue() * fFloor4) + ((f6 - fFloor4) * fFloatValue6)) - xs1Var.d.g;
                        } else {
                            fFloatValue4 = f2;
                        }
                    } else {
                        fFloatValue4 = f2;
                    }
                    if (fFloatValue4 != f2 && (fA8 = xs1Var.c.a(iCeil)) != null) {
                        float fFloatValue7 = fA8.floatValue() * fFloor4;
                        if (fFloatValue7 < Math.abs(fFloatValue4)) {
                            int i6 = iCeil - 1;
                            while (true) {
                                if (-1 < i6) {
                                    Float fA11 = xs1Var.c.a(i6);
                                    if (fA11 != null) {
                                        fFloatValue7 += fA11.floatValue() + xs1Var.b;
                                        if (fFloatValue7 < Math.abs(fFloatValue4)) {
                                            i6--;
                                        }
                                    }
                                    f8 = f2;
                                    break;
                                }
                                f8 = fFloatValue7 - fFloatValue4;
                                break;
                            }
                        }
                        f8 = f2;
                        break;
                    }
                    f8 = f2;
                    break;
                    if (f8 == f2) {
                        if (xs1Var.g != rr1.END && (fB = xs1Var.c.b(iCeil)) != null) {
                            float fFloatValue8 = fB.floatValue();
                            Float fB2 = xs1Var.c.b(iFloor);
                            if (fB2 == null) {
                                f9 = f2;
                                break;
                            }
                            float fFloatValue9 = fB2.floatValue();
                            if (f > f2) {
                                float fAbs12 = Math.abs(f);
                                fFloor3 = fAbs12 - ((float) Math.floor(fAbs12));
                            } else {
                                float fAbs13 = Math.abs(f);
                                float fFloor7 = fAbs13 - ((float) Math.floor(fAbs13));
                                fFloor3 = fFloor7 > f2 ? f6 - fFloor7 : f2;
                            }
                            float fB3 = defpackage.i8.b(f6, fFloor3, fFloatValue9, fFloatValue8 * fFloor3) - xs1Var.d.h;
                            if (fB3 != f2 && (fA7 = xs1Var.c.a(iFloor)) != null) {
                                float fFloatValue10 = fA7.floatValue() * fFloor3;
                                if (fFloatValue10 < Math.abs(fB3)) {
                                    int i7 = iFloor + 1;
                                    int size2 = xs1Var.f.o.size();
                                    while (true) {
                                        if (i7 < size2) {
                                            Float fA12 = xs1Var.c.a(i7);
                                            if (fA12 != null) {
                                                fFloatValue10 += fA12.floatValue() + xs1Var.b;
                                                if (fFloatValue10 < Math.abs(fB3)) {
                                                    i7++;
                                                }
                                            }
                                            f9 = f2;
                                            break;
                                        }
                                        f9 = fB3 - fFloatValue10;
                                        break;
                                    }
                                }
                                f9 = f2;
                                break;
                            }
                            f9 = f2;
                            break;
                        }
                        f9 = f2;
                        break;
                        if (f9 == f2) {
                            f3 = f2;
                            break;
                        }
                        f3 = f9;
                    } else {
                        f3 = f8;
                    }
                }
            } else {
                f3 = f2;
                break;
            }
            f4 = fA2 - f3;
        }
        float f13 = -f4;
        if (this.g && oh6.b(this.a)) {
            f13 = -f13;
        }
        this.c.put(childAdapterPosition, Float.valueOf(f13));
        if (this.g) {
            view.setTranslationX(f13);
        } else {
            view.setTranslationY(f13);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public final void transformPage(View view, float f) {
        xq1 xq1Var = this.e;
        Object objA = xq1Var != null ? xq1Var.a() : null;
        if (objA instanceof hr1) {
            hr1 hr1Var = (hr1) objA;
            a(view, f, hr1Var.a, hr1Var.b, hr1Var.c, hr1Var.d, hr1Var.e);
            a(view, f, false);
        } else {
            if (!(objA instanceof br1)) {
                a(view, f, false);
                return;
            }
            br1 br1Var = (br1) objA;
            a(view, f, br1Var.a, br1Var.b, br1Var.c, br1Var.d, br1Var.e);
            if (f > 0.0f || (f < 0.0f && ((Boolean) br1Var.f.a(this.b)).booleanValue())) {
                a(view, f, false);
                view.setTranslationZ(0.0f);
            } else {
                a(view, f, true);
                view.setTranslationZ(-Math.abs(f));
            }
        }
    }

    public final void a(View view, float f, as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5) {
        float f2 = f >= -1.0f ? f : -1.0f;
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        float interpolation = 1.0f - jf2.a((o11) as2Var.a(this.b)).getInterpolation(Math.abs(f2));
        fs2 fs2Var = this.b;
        if (f > 0.0f) {
            a(view, interpolation, ((Number) as2Var2.a(fs2Var)).doubleValue());
            double dDoubleValue = ((Number) as2Var3.a(this.b)).doubleValue();
            if (dDoubleValue == 1.0d) {
                return;
            }
            float fAbs = (float) ((Math.abs(dDoubleValue - 1.0d) * ((double) interpolation)) + Math.min(1.0d, dDoubleValue));
            view.setScaleX(fAbs);
            view.setScaleY(fAbs);
            return;
        }
        a(view, interpolation, ((Number) as2Var4.a(fs2Var)).doubleValue());
        double dDoubleValue2 = ((Number) as2Var5.a(this.b)).doubleValue();
        if (dDoubleValue2 == 1.0d) {
            return;
        }
        float fAbs2 = (float) ((Math.abs(dDoubleValue2 - 1.0d) * ((double) interpolation)) + Math.min(1.0d, dDoubleValue2));
        view.setScaleX(fAbs2);
        view.setScaleY(fAbs2);
    }

    public final void a(View view, float f, double d) {
        int childAdapterPosition = this.a.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = this.a.getAdapter();
        wr1 wr1Var = adapter instanceof wr1 ? (wr1) adapter : null;
        if (wr1Var == null) {
            return;
        }
        double dDoubleValue = ((Number) ((cn1) wr1Var.o.get(childAdapterPosition)).a.a().u().a(this.b)).doubleValue();
        view.setAlpha((float) ((Math.abs(d - dDoubleValue) * ((double) f)) + Math.min(dDoubleValue, d)));
    }
}
