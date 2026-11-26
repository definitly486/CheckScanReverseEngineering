package yads;

import android.view.View;
import android.view.ViewGroup;
import defpackage.b80;
import defpackage.kx6;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class x73 {
    public int a = 1;
    public final u85 b = new u85(new b80(this, 9));
    public final u85 c = new u85(new defpackage.jf(this, 8));
    public final u85 d = new u85(new defpackage.qj(this, 3));
    public final z73 e = new z73();
    public final z73 f = new z73();
    public final /* synthetic */ b83 g;

    public x73(b83 b83Var) {
        this.g = b83Var;
    }

    public static final List a(x73 x73Var) {
        Integer num;
        if (x73Var.g.getChildCount() == 0) {
            return defpackage.kx2.b;
        }
        int i = x73Var.a;
        ArrayList arrayList = new ArrayList(x73Var.g.getChildCount());
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        b83 b83Var = x73Var.g;
        int childCount = b83Var.getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = b83Var.getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                Integer numY = yr.Y(iArr2);
                int iIntValue = numY != null ? numY.intValue() : 0;
                int iP = yr.P(iIntValue, iArr2);
                int i4 = i2 + iIntValue;
                defpackage.y74 y74VarN = kx6.n(0, i);
                int i5 = y74VarN.b;
                int i6 = y74VarN.c;
                if (i5 <= i6) {
                    while (true) {
                        iArr2[i5] = Math.max(0, iArr2[i5] - iIntValue);
                        if (i5 == i6) {
                            break;
                        }
                        i5++;
                    }
                }
                int i7 = yh2.b;
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.getClass();
                ro1 ro1Var = (ro1) layoutParams;
                int iMin = Math.min(ro1Var.a(), i - iP);
                int iC = ro1Var.c();
                arrayList.add(new v73(i3, iP, i4, iMin, iC));
                int i8 = iP + iMin;
                while (iP < i8) {
                    if (iArr2[iP] > 0) {
                        v73 v73Var = (v73) arrayList.get(iArr[iP]);
                        int i9 = v73Var.b;
                        int i10 = v73Var.d + i9;
                        while (i9 < i10) {
                            int i11 = iArr2[i9];
                            iArr2[i9] = 0;
                            i9++;
                        }
                        v73Var.e = i4 - v73Var.c;
                    }
                    iArr[iP] = i3;
                    iArr2[iP] = iC;
                    iP++;
                }
                i2 = i4;
            }
        }
        if (i == 0) {
            num = null;
        } else {
            int i12 = iArr2[0];
            if (i12 < 1) {
                i12 = 1;
            }
            Integer numValueOf = Integer.valueOf(i12);
            defpackage.x74 it = new defpackage.y74(1, i - 1, 1).iterator();
            while (it.d) {
                int i13 = iArr2[it.nextInt()];
                if (i13 < 1) {
                    i13 = 1;
                }
                Integer numValueOf2 = Integer.valueOf(i13);
                if (numValueOf.compareTo(numValueOf2) > 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        }
        int iIntValue2 = ((v73) defpackage.qn1.b0(arrayList)).c + (num != null ? num.intValue() : 1);
        int size = arrayList.size();
        for (int i14 = 0; i14 < size; i14++) {
            v73 v73Var2 = (v73) arrayList.get(i14);
            int i15 = v73Var2.c;
            if (v73Var2.e + i15 > iIntValue2) {
                v73Var2.e = iIntValue2 - i15;
            }
        }
        return arrayList;
    }

    public static final List b(x73 x73Var) {
        int i;
        int i2;
        float f;
        int i3;
        int i4;
        int i5 = x73Var.a;
        z73 z73Var = x73Var.e;
        List list = (List) x73Var.b.a();
        ArrayList arrayList = new ArrayList(i5);
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            arrayList.add(new y73());
        }
        b83 b83Var = x73Var.g;
        int size = list.size();
        int i8 = 0;
        while (true) {
            i = 1;
            if (i8 >= size) {
                break;
            }
            v73 v73Var = (v73) list.get(i8);
            View childAt = b83Var.getChildAt(v73Var.a);
            int i9 = yh2.b;
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.getClass();
            ro1 ro1Var = (ro1) layoutParams;
            int i10 = v73Var.b;
            int measuredWidth = childAt.getMeasuredWidth();
            int i11 = ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin;
            int i12 = ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin;
            int i13 = v73Var.d;
            float f2 = ro1Var.d;
            if (i13 == 1) {
                y73 y73Var = (y73) arrayList.get(i10);
                y73Var.b = Math.max(y73Var.b, measuredWidth);
                y73Var.c = Math.max(y73Var.c, i11 + measuredWidth + i12);
                y73Var.d = Math.max(y73Var.d, f2);
            } else {
                int i14 = i13 - 1;
                float f3 = f2 / i13;
                if (i14 >= 0) {
                    while (true) {
                        y73.a((y73) arrayList.get(i10 + i4), 0, 0, f3, 3);
                        i4 = i4 != i14 ? i4 + 1 : 0;
                    }
                }
            }
            i8++;
        }
        ArrayList arrayList2 = new ArrayList();
        b83 b83Var2 = x73Var.g;
        int size2 = list.size();
        for (int i15 = 0; i15 < size2; i15++) {
            v73 v73Var2 = (v73) list.get(i15);
            View childAt2 = b83Var2.getChildAt(v73Var2.a);
            int i16 = yh2.b;
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            layoutParams2.getClass();
            ro1 ro1Var2 = (ro1) layoutParams2;
            int i17 = v73Var2.b;
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int i18 = ((ViewGroup.MarginLayoutParams) ro1Var2).leftMargin;
            int i19 = ((ViewGroup.MarginLayoutParams) ro1Var2).rightMargin;
            int i20 = v73Var2.d;
            w73 w73Var = new w73(i17, measuredWidth2, i18, i19, i20, ro1Var2.d);
            if (i20 > 1) {
                arrayList2.add(w73Var);
            }
        }
        defpackage.nn1.J(a83.b, arrayList2);
        int size3 = arrayList2.size();
        int i21 = 0;
        while (i21 < size3) {
            w73 w73Var2 = (w73) arrayList2.get(i21);
            int i22 = w73Var2.a;
            int i23 = (w73Var2.e + i22) - i;
            int iA = w73Var2.a();
            if (i22 <= i23) {
                i3 = i6;
                int i24 = i22;
                i2 = iA;
                f = 0.0f;
                while (true) {
                    y73 y73Var2 = (y73) arrayList.get(i24);
                    iA -= y73Var2.c;
                    if (y73Var2.c()) {
                        f += y73Var2.d;
                    } else {
                        if (y73Var2.b == 0) {
                            i3++;
                        }
                        i2 -= y73Var2.c;
                    }
                    if (i24 == i23) {
                        break;
                    }
                    i24++;
                }
            } else {
                i2 = iA;
                f = 0.0f;
                i3 = 0;
            }
            if (f > 0.0f) {
                if (i22 <= i23) {
                    while (true) {
                        y73 y73Var3 = (y73) arrayList.get(i22);
                        if (y73Var3.c()) {
                            int iCeil = (int) Math.ceil((y73Var3.d / f) * i2);
                            y73.a(y73Var3, iCeil - (y73Var3.c - y73Var3.b), iCeil, 0.0f, 4);
                            i23 = i23;
                        }
                        if (i22 != i23) {
                            i22++;
                        }
                    }
                }
            } else if (iA > 0 && i22 <= i23) {
                while (true) {
                    y73 y73Var4 = (y73) arrayList.get(i22);
                    if (i3 <= 0) {
                        int i25 = iA / w73Var2.e;
                        y73.a(y73Var4, y73Var4.b + i25, y73Var4.c + i25, 0.0f, 4);
                    } else if (y73Var4.b == 0 && !y73Var4.c()) {
                        int i26 = iA / i3;
                        y73.a(y73Var4, y73Var4.b + i26, y73Var4.c + i26, 0.0f, 4);
                    }
                    if (i22 != i23) {
                        i22++;
                    }
                }
            }
            i21++;
            i6 = 0;
            i = 1;
        }
        a(arrayList, z73Var);
        int size4 = arrayList.size();
        int i27 = 0;
        for (int i28 = 0; i28 < size4; i28++) {
            y73 y73Var5 = (y73) arrayList.get(i28);
            y73Var5.a = i27;
            i27 += y73Var5.c;
        }
        return arrayList;
    }

    public static final List c(x73 x73Var) {
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        int i5;
        List list = (List) x73Var.b.a();
        int i6 = 0;
        if (list.isEmpty()) {
            i = 0;
        } else {
            v73 v73Var = (v73) defpackage.qn1.b0(list);
            i = v73Var.c + v73Var.e;
        }
        z73 z73Var = x73Var.f;
        List list2 = (List) x73Var.b.a();
        ArrayList arrayList = new ArrayList(i);
        for (int i7 = 0; i7 < i; i7++) {
            arrayList.add(new y73());
        }
        b83 b83Var = x73Var.g;
        int size = list2.size();
        int i8 = 0;
        while (true) {
            i2 = 1;
            if (i8 >= size) {
                break;
            }
            v73 v73Var2 = (v73) list2.get(i8);
            View childAt = b83Var.getChildAt(v73Var2.a);
            int i9 = yh2.b;
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.getClass();
            ro1 ro1Var = (ro1) layoutParams;
            int i10 = v73Var2.c;
            int measuredHeight = childAt.getMeasuredHeight();
            int i11 = ((ViewGroup.MarginLayoutParams) ro1Var).topMargin;
            int i12 = ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin;
            int i13 = v73Var2.e;
            float f2 = ro1Var.c;
            if (i13 == 1) {
                y73 y73Var = (y73) arrayList.get(i10);
                y73Var.b = Math.max(y73Var.b, measuredHeight);
                y73Var.c = Math.max(y73Var.c, i11 + measuredHeight + i12);
                y73Var.d = Math.max(y73Var.d, f2);
            } else {
                int i14 = i13 - 1;
                float f3 = f2 / i13;
                if (i14 >= 0) {
                    while (true) {
                        y73.a((y73) arrayList.get(i10 + i5), 0, 0, f3, 3);
                        i5 = i5 != i14 ? i5 + 1 : 0;
                    }
                }
            }
            i8++;
        }
        ArrayList arrayList2 = new ArrayList();
        b83 b83Var2 = x73Var.g;
        int size2 = list2.size();
        for (int i15 = 0; i15 < size2; i15++) {
            v73 v73Var3 = (v73) list2.get(i15);
            View childAt2 = b83Var2.getChildAt(v73Var3.a);
            int i16 = yh2.b;
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            layoutParams2.getClass();
            ro1 ro1Var2 = (ro1) layoutParams2;
            int i17 = v73Var3.c;
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i18 = ((ViewGroup.MarginLayoutParams) ro1Var2).topMargin;
            int i19 = ((ViewGroup.MarginLayoutParams) ro1Var2).bottomMargin;
            int i20 = v73Var3.e;
            w73 w73Var = new w73(i17, measuredHeight2, i18, i19, i20, ro1Var2.c);
            if (i20 > 1) {
                arrayList2.add(w73Var);
            }
        }
        defpackage.nn1.J(a83.b, arrayList2);
        int size3 = arrayList2.size();
        int i21 = 0;
        while (i21 < size3) {
            w73 w73Var2 = (w73) arrayList2.get(i21);
            int i22 = w73Var2.a;
            int i23 = (w73Var2.e + i22) - i2;
            int iA = w73Var2.a();
            if (i22 <= i23) {
                i4 = i6;
                int i24 = i22;
                i3 = iA;
                f = 0.0f;
                while (true) {
                    y73 y73Var2 = (y73) arrayList.get(i24);
                    iA -= y73Var2.c;
                    if (y73Var2.c()) {
                        f += y73Var2.d;
                    } else {
                        if (y73Var2.b == 0) {
                            i4++;
                        }
                        i3 -= y73Var2.c;
                    }
                    if (i24 == i23) {
                        break;
                    }
                    i24++;
                }
            } else {
                i3 = iA;
                f = 0.0f;
                i4 = 0;
            }
            if (f > 0.0f) {
                if (i22 <= i23) {
                    while (true) {
                        y73 y73Var3 = (y73) arrayList.get(i22);
                        if (y73Var3.c()) {
                            int iCeil = (int) Math.ceil((y73Var3.d / f) * i3);
                            y73.a(y73Var3, iCeil - (y73Var3.c - y73Var3.b), iCeil, 0.0f, 4);
                            i23 = i23;
                        }
                        if (i22 != i23) {
                            i22++;
                        }
                    }
                }
            } else if (iA > 0 && i22 <= i23) {
                while (true) {
                    y73 y73Var4 = (y73) arrayList.get(i22);
                    if (i4 <= 0) {
                        int i25 = iA / w73Var2.e;
                        y73.a(y73Var4, y73Var4.b + i25, y73Var4.c + i25, 0.0f, 4);
                    } else if (y73Var4.b == 0 && !y73Var4.c()) {
                        int i26 = iA / i4;
                        y73.a(y73Var4, y73Var4.b + i26, y73Var4.c + i26, 0.0f, 4);
                    }
                    if (i22 != i23) {
                        i22++;
                    }
                }
            }
            i21++;
            i6 = 0;
            i2 = 1;
        }
        a(arrayList, z73Var);
        int size4 = arrayList.size();
        int i27 = 0;
        for (int i28 = 0; i28 < size4; i28++) {
            y73 y73Var5 = (y73) arrayList.get(i28);
            y73Var5.a = i27;
            i27 += y73Var5.c;
        }
        return arrayList;
    }

    public static int a(List list) {
        if (list.isEmpty()) {
            return 0;
        }
        y73 y73Var = (y73) defpackage.qn1.b0(list);
        return y73Var.a + y73Var.c;
    }

    public final void a() {
        this.c.b = null;
        this.d.b = null;
    }

    public static void a(ArrayList arrayList, z73 z73Var) {
        int iCeil;
        int size = arrayList.size();
        int i = 0;
        float fMax = 0.0f;
        float f = 0.0f;
        for (int i2 = 0; i2 < size; i2++) {
            y73 y73Var = (y73) arrayList.get(i2);
            if (y73Var.c()) {
                float f2 = y73Var.d;
                f += f2;
                fMax = Math.max(fMax, y73Var.c / f2);
            } else {
                i += y73Var.c;
            }
        }
        int size2 = arrayList.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size2; i4++) {
            y73 y73Var2 = (y73) arrayList.get(i4);
            if (y73Var2.c()) {
                iCeil = (int) Math.ceil(y73Var2.d * fMax);
            } else {
                iCeil = y73Var2.c;
            }
            i3 += iCeil;
        }
        float fMax2 = Math.max(0, Math.max(z73Var.a, i3) - i) / f;
        int size3 = arrayList.size();
        for (int i5 = 0; i5 < size3; i5++) {
            y73 y73Var3 = (y73) arrayList.get(i5);
            if (y73Var3.c()) {
                int iCeil2 = (int) Math.ceil(y73Var3.d * fMax2);
                y73.a(y73Var3, iCeil2 - (y73Var3.c - y73Var3.b), iCeil2, 0.0f, 4);
            }
        }
    }

    public final void b() {
        this.b.b = null;
        a();
    }
}
