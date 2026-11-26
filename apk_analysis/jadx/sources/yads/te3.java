package yads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class te3 extends ie3 implements Set {
    public transient oe3 c;

    public static int a(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
            while (((double) iHighestOneBit) * 0.7d < iMax) {
                iHighestOneBit <<= 1;
            }
            return iHighestOneBit;
        }
        if (iMax < 1073741824) {
            return 1073741824;
        }
        defpackage.fg.c("collection too large");
        return 0;
    }

    public static te3 b(int i, Object... objArr) {
        if (i == 0) {
            return q55.j;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new pl5(obj);
        }
        int iA = a(i);
        Object[] objArr2 = new Object[iA];
        int i2 = iA - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                defpackage.o2.d(vx4.a(i5, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iA2 = p83.a(iHashCode);
            while (true) {
                int i6 = iA2 & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA2++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new pl5(obj4);
        }
        if (a(i4) < iA / 2) {
            return b(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new q55(objArr, i3, objArr2, i2, i4);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof te3) && (this instanceof q55) && (((te3) obj) instanceof q55) && hashCode() != obj.hashCode()) {
            return false;
        }
        return tj5.a(this, obj);
    }

    public oe3 f() {
        Object[] array = toArray(ie3.b);
        le3 le3Var = oe3.c;
        return oe3.b(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return tj5.a(this);
    }

    @Override // yads.ie3
    public Object writeReplace() {
        return new se3(toArray(ie3.b));
    }

    public static te3 a(Collection collection) {
        if ((collection instanceof te3) && !(collection instanceof SortedSet)) {
            te3 te3Var = (te3) collection;
            if (!te3Var.e()) {
                return te3Var;
            }
        }
        Object[] array = collection.toArray();
        return b(array.length, array);
    }

    @Override // yads.ie3
    public oe3 a() {
        oe3 oe3Var = this.c;
        if (oe3Var != null) {
            return oe3Var;
        }
        oe3 oe3VarF = f();
        this.c = oe3VarF;
        return oe3VarF;
    }
}
