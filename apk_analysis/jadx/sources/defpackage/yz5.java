package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public final class yz5 extends u0<gx0> implements RandomAccess {
    public final gx0[] c;
    public final int[] d;

    public static final class a {
        public static void a(long j, bu0 bu0Var, int i, ArrayList arrayList, int i2, int i3, ArrayList arrayList2) {
            int i4;
            int i5;
            ArrayList arrayList3;
            long j2;
            int i6;
            int i7 = i;
            ArrayList arrayList4 = arrayList;
            ArrayList arrayList5 = arrayList2;
            if (i2 >= i3) {
                fg.c("Failed requirement.");
                return;
            }
            for (int i8 = i2; i8 < i3; i8++) {
                if (((gx0) arrayList4.get(i8)).f() < i7) {
                    fg.c("Failed requirement.");
                    return;
                }
            }
            gx0 gx0Var = (gx0) arrayList.get(i2);
            gx0 gx0Var2 = (gx0) arrayList4.get(i3 - 1);
            if (i7 == gx0Var.f()) {
                int iIntValue = ((Number) arrayList5.get(i2)).intValue();
                int i9 = i2 + 1;
                gx0 gx0Var3 = (gx0) arrayList4.get(i9);
                i4 = i9;
                i5 = iIntValue;
                gx0Var = gx0Var3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (gx0Var.n(i7) == gx0Var2.n(i7)) {
                int iMin = Math.min(gx0Var.f(), gx0Var2.f());
                int i10 = 0;
                for (int i11 = i7; i11 < iMin && gx0Var.n(i11) == gx0Var2.n(i11); i11++) {
                    i10++;
                }
                long j3 = (bu0Var.c / 4) + j + 2 + ((long) i10) + 1;
                bu0Var.D0(-i10);
                bu0Var.D0(i5);
                int i12 = i7 + i10;
                while (i7 < i12) {
                    bu0Var.D0(gx0Var.n(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i12 == ((gx0) arrayList4.get(i4)).f()) {
                        bu0Var.D0(((Number) arrayList5.get(i4)).intValue());
                        return;
                    } else {
                        ah.f("Check failed.");
                        return;
                    }
                }
                bu0 bu0Var2 = new bu0();
                bu0Var.D0(((int) ((bu0Var2.c / 4) + j3)) * (-1));
                a(j3, bu0Var2, i12, arrayList4, i4, i3, arrayList5);
                bu0Var.j0(bu0Var2);
                return;
            }
            int i13 = 1;
            for (int i14 = i4 + 1; i14 < i3; i14++) {
                if (((gx0) arrayList4.get(i14 - 1)).n(i7) != ((gx0) arrayList4.get(i14)).n(i7)) {
                    i13++;
                }
            }
            long j4 = (bu0Var.c / 4) + j + 2 + ((long) (i13 * 2));
            bu0Var.D0(i13);
            bu0Var.D0(i5);
            for (int i15 = i4; i15 < i3; i15++) {
                int iN = ((gx0) arrayList4.get(i15)).n(i7);
                if (i15 == i4 || iN != ((gx0) arrayList4.get(i15 - 1)).n(i7)) {
                    bu0Var.D0(iN & 255);
                }
            }
            bu0 bu0Var3 = new bu0();
            int i16 = i4;
            while (i16 < i3) {
                byte bN = ((gx0) arrayList4.get(i16)).n(i7);
                int i17 = i16 + 1;
                int i18 = i17;
                while (true) {
                    if (i18 >= i3) {
                        i18 = i3;
                        break;
                    } else if (bN != ((gx0) arrayList4.get(i18)).n(i7)) {
                        break;
                    } else {
                        i18++;
                    }
                }
                if (i17 == i18 && i7 + 1 == ((gx0) arrayList4.get(i16)).f()) {
                    bu0Var.D0(((Number) arrayList5.get(i16)).intValue());
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                } else {
                    bu0Var.D0(((int) ((bu0Var3.c / 4) + j4)) * (-1));
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                    a(j2, bu0Var3, i7 + 1, arrayList, i16, i6, arrayList3);
                    arrayList4 = arrayList;
                }
                j4 = j2;
                i16 = i6;
                arrayList5 = arrayList3;
            }
            bu0Var.j0(bu0Var3);
        }

        public static yz5 b(gx0... gx0VarArr) {
            if (gx0VarArr.length == 0) {
                return new yz5(new gx0[0], new int[]{0, -1});
            }
            ArrayList arrayListJ0 = yr.j0(gx0VarArr);
            nn1.I(arrayListJ0);
            int size = arrayListJ0.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(-1);
            }
            int length = gx0VarArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                arrayList.set(u96.c(arrayListJ0, gx0VarArr[i2]), Integer.valueOf(i3));
                i2++;
                i3++;
            }
            if (((gx0) arrayListJ0.get(0)).f() <= 0) {
                fg.c("the empty byte string is not a supported option");
                return null;
            }
            int i4 = 0;
            while (i4 < arrayListJ0.size()) {
                gx0 gx0Var = (gx0) arrayListJ0.get(i4);
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < arrayListJ0.size()) {
                    gx0 gx0Var2 = (gx0) arrayListJ0.get(i6);
                    gx0Var2.getClass();
                    gx0Var.getClass();
                    if (!gx0Var2.s(0, gx0Var, gx0Var.f())) {
                        break;
                    }
                    if (gx0Var2.f() == gx0Var.f()) {
                        eg.d(gx0Var2, "duplicate option: ");
                        return null;
                    }
                    if (((Number) arrayList.get(i6)).intValue() > ((Number) arrayList.get(i4)).intValue()) {
                        arrayListJ0.remove(i6);
                        ((Number) arrayList.remove(i6)).intValue();
                    } else {
                        i6++;
                    }
                }
                i4 = i5;
            }
            bu0 bu0Var = new bu0();
            a(0L, bu0Var, 0, arrayListJ0, 0, arrayListJ0.size(), arrayList);
            int i7 = (int) (bu0Var.c / 4);
            int[] iArr = new int[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                iArr[i8] = bu0Var.readInt();
            }
            return new yz5((gx0[]) Arrays.copyOf(gx0VarArr, gx0VarArr.length), iArr);
        }
    }

    public yz5(gx0[] gx0VarArr, int[] iArr) {
        this.c = gx0VarArr;
        this.d = iArr;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof gx0) {
            return super.contains((gx0) obj);
        }
        return false;
    }

    @Override // defpackage.u0, java.util.List
    public final Object get(int i) {
        return this.c[i];
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.c.length;
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof gx0) {
            return super.indexOf((gx0) obj);
        }
        return -1;
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof gx0) {
            return super.lastIndexOf((gx0) obj);
        }
        return -1;
    }
}
