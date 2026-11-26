package yads;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public final class aq3 extends AbstractList implements RandomAccess, Serializable {
    public final int[] b;
    public final int c;
    public final int d;

    public aq3(int[] iArr) {
        int length = iArr.length;
        this.b = iArr;
        this.c = 0;
        this.d = length;
    }

    public final int[] a() {
        return Arrays.copyOfRange(this.b, this.c, this.d);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        int[] iArr = this.b;
        int iIntValue = ((Integer) obj).intValue();
        int i = this.c;
        int i2 = this.d;
        while (i < i2) {
            if (iArr[i] == iIntValue) {
                if (i != -1) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aq3)) {
            return super.equals(obj);
        }
        aq3 aq3Var = (aq3) obj;
        int i = this.d - this.c;
        if (aq3Var.d - aq3Var.c != i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (this.b[this.c + i2] != aq3Var.b[aq3Var.c + i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        wx4.a(i, this.d - this.c);
        return Integer.valueOf(this.b[this.c + i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = this.c; i2 < this.d; i2++) {
            i = (i * 31) + this.b[i2];
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001e  */
    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.b;
            int iIntValue = ((Integer) obj).intValue();
            int i = this.c;
            int i2 = this.d;
            while (i < i2) {
                if (iArr[i] != iIntValue) {
                    i++;
                } else if (i >= 0) {
                    return i - this.c;
                }
            }
            i = -1;
            if (i >= 0) {
                return i - this.c;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.b;
            int iIntValue = ((Integer) obj).intValue();
            int i = this.c;
            int i2 = this.d - 1;
            while (i2 >= i) {
                if (iArr[i2] != iIntValue) {
                    i2--;
                } else if (i2 >= 0) {
                    return i2 - this.c;
                }
            }
            i2 = -1;
            if (i2 >= 0) {
                return i2 - this.c;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        Integer num = (Integer) obj;
        wx4.a(i, this.d - this.c);
        int[] iArr = this.b;
        int i2 = this.c + i;
        int i3 = iArr[i2];
        num.getClass();
        iArr[i2] = num.intValue();
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d - this.c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        wx4.a(i, i2, this.d - this.c);
        if (i == i2) {
            return Collections.EMPTY_LIST;
        }
        int[] iArr = this.b;
        int i3 = this.c;
        return new aq3(i + i3, i3 + i2, iArr);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder((this.d - this.c) * 5);
        sb.append('[');
        sb.append(this.b[this.c]);
        int i = this.c;
        while (true) {
            i++;
            if (i >= this.d) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(this.b[i]);
        }
    }

    public aq3(int i, int i2, int[] iArr) {
        this.b = iArr;
        this.c = i;
        this.d = i2;
    }
}
