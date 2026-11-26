package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class g87 implements as7, ld0.a {
    public final ox4 a;
    public final ld0<Float, Float> b;
    public sr7 c;

    public g87(ox4 ox4Var, nd0 nd0Var, f87 f87Var) {
        this.a = ox4Var;
        ld0<Float, Float> ld0VarA = f87Var.a.a();
        this.b = ld0VarA;
        nd0Var.c(ld0VarA);
        ld0VarA.a(this);
    }

    public static int a(int i, int i2) {
        int i3 = i / i2;
        if ((i ^ i2) < 0 && i3 * i2 != i) {
            i3--;
        }
        return i - (i3 * i2);
    }

    @Override // ld0.a
    public final void e() {
        this.a.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
    }

    @Override // defpackage.as7
    public final sr7 g(sr7 sr7Var) {
        sr7 sr7Var2 = sr7Var;
        ArrayList arrayList = sr7Var2.a;
        if (arrayList.size() > 2) {
            float fFloatValue = this.b.f().floatValue();
            if (fFloatValue != 0.0f) {
                ArrayList arrayList2 = sr7Var2.a;
                boolean z = sr7Var2.c;
                boolean z2 = true;
                int size = arrayList2.size() - 1;
                int i = 0;
                while (size >= 0) {
                    q62 q62Var = (q62) arrayList2.get(size);
                    q62 q62Var2 = (q62) arrayList2.get(a(size - 1, arrayList2.size()));
                    PointF pointF = (size != 0 || z) ? q62Var2.c : sr7Var2.b;
                    i = (((size != 0 || z) ? q62Var2.b : pointF).equals(pointF) && q62Var.a.equals(pointF) && !(!sr7Var2.c && (size == 0 || size == arrayList2.size() - 1))) ? i + 2 : i + 1;
                    size--;
                }
                sr7 sr7Var3 = this.c;
                if (sr7Var3 == null || sr7Var3.a.size() != i) {
                    ArrayList arrayList3 = new ArrayList(i);
                    for (int i2 = 0; i2 < i; i2++) {
                        arrayList3.add(new q62());
                    }
                    this.c = new sr7(new PointF(0.0f, 0.0f), false, arrayList3);
                }
                sr7 sr7Var4 = this.c;
                sr7Var4.c = z;
                PointF pointF2 = sr7Var2.b;
                float f = pointF2.x;
                float f2 = pointF2.y;
                PointF pointF3 = sr7Var4.b;
                if (pointF3 == null) {
                    pointF3 = new PointF();
                    sr7Var4.b = pointF3;
                }
                pointF3.set(f, f2);
                ArrayList arrayList4 = sr7Var4.a;
                boolean z3 = sr7Var2.c;
                int i3 = 0;
                int i4 = 0;
                while (i3 < arrayList.size()) {
                    q62 q62Var3 = (q62) arrayList.get(i3);
                    q62 q62Var4 = (q62) arrayList.get(a(i3 - 1, arrayList.size()));
                    q62 q62Var5 = (q62) arrayList.get(a(i3 - 2, arrayList.size()));
                    PointF pointF4 = (i3 != 0 || z3) ? q62Var4.c : sr7Var2.b;
                    PointF pointF5 = (i3 != 0 || z3) ? q62Var4.b : pointF4;
                    PointF pointF6 = q62Var3.a;
                    PointF pointF7 = q62Var5.c;
                    boolean z4 = z2;
                    PointF pointF8 = q62Var3.c;
                    boolean z5 = (sr7Var2.c || !(i3 == 0 || i3 == arrayList.size() + (-1))) ? false : z4;
                    if (pointF5.equals(pointF4) && pointF6.equals(pointF4) && !z5) {
                        float f3 = pointF4.x;
                        float f4 = f3 - pointF7.x;
                        float f5 = pointF4.y;
                        float f6 = f5 - pointF7.y;
                        float f7 = pointF8.x - f3;
                        float f8 = pointF8.y - f5;
                        float fHypot = (float) Math.hypot(f4, f6);
                        float fHypot2 = (float) Math.hypot(f7, f8);
                        float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                        float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                        float f9 = pointF4.x;
                        float fB = i8.b(pointF7.x, f9, fMin, f9);
                        float f10 = pointF4.y;
                        float fB2 = i8.b(pointF7.y, f10, fMin, f10);
                        float fB3 = i8.b(pointF8.x, f9, fMin2, f9);
                        float fB4 = i8.b(pointF8.y, f10, fMin2, f10);
                        float f11 = fB - ((fB - f9) * 0.5519f);
                        float f12 = fB2 - ((fB2 - f10) * 0.5519f);
                        float f13 = fB3 - ((fB3 - f9) * 0.5519f);
                        float f14 = fB4 - ((fB4 - f10) * 0.5519f);
                        q62 q62Var6 = (q62) arrayList4.get(a(i4 - 1, arrayList4.size()));
                        q62 q62Var7 = (q62) arrayList4.get(i4);
                        q62Var6.b.set(fB, fB2);
                        q62Var6.c.set(fB, fB2);
                        if (i3 == 0) {
                            PointF pointF9 = sr7Var4.b;
                            if (pointF9 == null) {
                                pointF9 = new PointF();
                                sr7Var4.b = pointF9;
                            }
                            pointF9.set(fB, fB2);
                        }
                        q62Var7.a.set(f11, f12);
                        q62 q62Var8 = (q62) arrayList4.get(i4 + 1);
                        q62Var7.b.set(f13, f14);
                        q62Var7.c.set(fB3, fB4);
                        q62Var8.a.set(fB3, fB4);
                        i4 += 2;
                    } else {
                        q62 q62Var9 = (q62) arrayList4.get(a(i4 - 1, arrayList4.size()));
                        q62 q62Var10 = (q62) arrayList4.get(i4);
                        PointF pointF10 = q62Var4.b;
                        q62Var9.b.set(pointF10.x, pointF10.y);
                        PointF pointF11 = q62Var4.c;
                        q62Var9.c.set(pointF11.x, pointF11.y);
                        PointF pointF12 = q62Var3.a;
                        q62Var10.a.set(pointF12.x, pointF12.y);
                        i4++;
                    }
                    i3++;
                    sr7Var2 = sr7Var;
                    z2 = z4;
                    arrayList = arrayList;
                    fFloatValue = fFloatValue;
                }
                return sr7Var4;
            }
        }
        return sr7Var2;
    }

    @Override // defpackage.as7
    public final void h(rr7 rr7Var) {
        this.b.a(rr7Var);
    }
}
