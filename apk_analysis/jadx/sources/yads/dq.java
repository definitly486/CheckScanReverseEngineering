package yads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public abstract class dq implements wc0 {
    public final boolean a;
    public final ArrayList b = new ArrayList(1);
    public int c;
    public bd0 d;

    public dq(boolean z) {
        this.a = z;
    }

    @Override // yads.wc0
    public final void a(p16 p16Var) {
        p16Var.getClass();
        if (this.b.contains(p16Var)) {
            return;
        }
        this.b.add(p16Var);
        this.c++;
    }

    public final void b(bd0 bd0Var) {
        this.d = bd0Var;
        for (int i = 0; i < this.c; i++) {
            p16 p16Var = (p16) this.b.get(i);
            boolean z = this.a;
            zj0 zj0Var = (zj0) p16Var;
            synchronized (zj0Var) {
                try {
                    k55 k55Var = zj0.n;
                    if (z && (bd0Var.i & 8) != 8) {
                        if (zj0Var.f == 0) {
                            zj0Var.d.getClass();
                            zj0Var.g = SystemClock.elapsedRealtime();
                        }
                        zj0Var.f++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void c(int i) {
        bd0 bd0Var = this.d;
        int i2 = u56.a;
        for (int i3 = 0; i3 < this.c; i3++) {
            p16 p16Var = (p16) this.b.get(i3);
            boolean z = this.a;
            zj0 zj0Var = (zj0) p16Var;
            synchronized (zj0Var) {
                k55 k55Var = zj0.n;
                if (z && (bd0Var.i & 8) != 8) {
                    zj0Var.h += (long) i;
                }
            }
        }
    }

    public final void g() {
        int i;
        ln5 ln5Var;
        float f;
        bd0 bd0Var = this.d;
        int i2 = u56.a;
        int i3 = 0;
        int i4 = 0;
        while (i4 < this.c) {
            p16 p16Var = (p16) this.b.get(i4);
            boolean z = this.a;
            zj0 zj0Var = (zj0) p16Var;
            synchronized (zj0Var) {
                try {
                    k55 k55Var = zj0.n;
                    if (!z || (bd0Var.i & 8) == 8) {
                        i = i4;
                    } else {
                        if (zj0Var.f <= 0) {
                            throw new IllegalStateException();
                        }
                        zj0Var.d.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int i5 = (int) (jElapsedRealtime - zj0Var.g);
                        zj0Var.j += (long) i5;
                        long j = zj0Var.k;
                        long j2 = zj0Var.h;
                        zj0Var.k = j + j2;
                        if (i5 > 0) {
                            float f2 = (j2 * 8000.0f) / i5;
                            mn5 mn5Var = zj0Var.c;
                            int iSqrt = (int) Math.sqrt(j2);
                            if (mn5Var.d != 1) {
                                Collections.sort(mn5Var.b, mn5.h);
                                mn5Var.d = 1;
                            }
                            int i6 = mn5Var.g;
                            if (i6 > 0) {
                                ln5[] ln5VarArr = mn5Var.c;
                                int i7 = i6 - 1;
                                mn5Var.g = i7;
                                ln5Var = ln5VarArr[i7];
                            } else {
                                ln5Var = new ln5();
                            }
                            int i8 = mn5Var.e;
                            mn5Var.e = i8 + 1;
                            ln5Var.a = i8;
                            ln5Var.b = iSqrt;
                            ln5Var.c = f2;
                            mn5Var.b.add(ln5Var);
                            mn5Var.f += iSqrt;
                            while (true) {
                                int i9 = mn5Var.f;
                                int i10 = mn5Var.a;
                                if (i9 <= i10) {
                                    break;
                                }
                                int i11 = i9 - i10;
                                ln5 ln5Var2 = (ln5) mn5Var.b.get(i3);
                                int i12 = ln5Var2.b;
                                if (i12 <= i11) {
                                    mn5Var.f -= i12;
                                    mn5Var.b.remove(i3);
                                    int i13 = mn5Var.g;
                                    if (i13 < 5) {
                                        ln5[] ln5VarArr2 = mn5Var.c;
                                        mn5Var.g = i13 + 1;
                                        ln5VarArr2[i13] = ln5Var2;
                                    }
                                } else {
                                    ln5Var2.b = i12 - i11;
                                    mn5Var.f -= i11;
                                }
                            }
                            if (zj0Var.j >= 2000 || zj0Var.k >= 524288) {
                                mn5 mn5Var2 = zj0Var.c;
                                if (mn5Var2.d != 0) {
                                    Collections.sort(mn5Var2.b, mn5.i);
                                    mn5Var2.d = i3;
                                }
                                float f3 = 0.5f * mn5Var2.f;
                                int i14 = i3;
                                int i15 = i14;
                                while (true) {
                                    int size = mn5Var2.b.size();
                                    ArrayList arrayList = mn5Var2.b;
                                    if (i14 >= size) {
                                        if (!arrayList.isEmpty()) {
                                            ArrayList arrayList2 = mn5Var2.b;
                                            f = ((ln5) arrayList2.get(arrayList2.size() - 1)).c;
                                            break;
                                        } else {
                                            f = Float.NaN;
                                            break;
                                        }
                                    }
                                    ln5 ln5Var3 = (ln5) arrayList.get(i14);
                                    i15 += ln5Var3.b;
                                    if (i15 >= f3) {
                                        f = ln5Var3.c;
                                        break;
                                    }
                                    i14++;
                                }
                                zj0Var.l = (long) f;
                            }
                            long j3 = zj0Var.h;
                            long j4 = zj0Var.l;
                            if (i5 == 0 && j3 == 0) {
                                i = i4;
                                if (j4 == zj0Var.m) {
                                }
                                zj0Var.g = jElapsedRealtime;
                                zj0Var.h = 0;
                            } else {
                                i = i4;
                            }
                            zj0Var.m = j4;
                            zj0Var.b.a(i5, j3, j4);
                            zj0Var.g = jElapsedRealtime;
                            zj0Var.h = 0;
                        } else {
                            i = i4;
                        }
                        zj0Var.f--;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i4 = i + 1;
            i3 = 0;
        }
        this.d = null;
    }

    public final void h() {
        for (int i = 0; i < this.c; i++) {
            ((p16) this.b.get(i)).getClass();
        }
    }
}
