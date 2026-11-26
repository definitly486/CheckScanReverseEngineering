package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.u0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public /* synthetic */ MutableIntList(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public static /* synthetic */ void trim$default(MutableIntList mutableIntList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableIntList._size;
        }
        mutableIntList.trim(i);
    }

    public final void add(int i, int i2) {
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i3 = this._size;
        if (i != i3) {
            aq5.h(i + 1, i, i3, iArr, iArr);
        }
        iArr[i] = i2;
        this._size++;
    }

    public final boolean addAll(int i, IntList intList) {
        intList.getClass();
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i2 = intList._size;
        if (i2 == 0) {
            return false;
        }
        ensureCapacity(this._size + i2);
        int[] iArr = this.content;
        int i3 = this._size;
        if (i != i3) {
            aq5.h(intList._size + i, i, i3, iArr, iArr);
        }
        aq5.h(i, 0, intList._size, intList.content, iArr);
        this._size += intList._size;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int i) {
        int[] iArr = this.content;
        if (iArr.length < i) {
            this.content = Arrays.copyOf(iArr, Math.max(i, (iArr.length * 3) / 2));
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(IntList intList) {
        intList.getClass();
        int[] iArr = intList.content;
        int i = intList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(iArr[i2]);
        }
    }

    public final void plusAssign(IntList intList) {
        intList.getClass();
        addAll(this._size, intList);
    }

    public final boolean remove(int i) {
        int iIndexOf = indexOf(i);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(IntList intList) {
        intList.getClass();
        int i = this._size;
        int i2 = intList._size - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                remove(intList.get(i3));
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        return i != this._size;
    }

    public final int removeAt(int i) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        int[] iArr = this.content;
        int i2 = iArr[i];
        int i3 = this._size;
        if (i != i3 - 1) {
            aq5.h(i, i + 1, i3, iArr, iArr);
        }
        this._size--;
        return i2;
    }

    public final void removeRange(int i, int i2) {
        int i3;
        if (i < 0 || i > (i3 = this._size) || i2 < 0 || i2 > i3) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        if (i2 < i) {
            RuntimeHelpersKt.throwIllegalArgumentException("The end index must be < start index");
        }
        if (i2 != i) {
            int i4 = this._size;
            if (i2 < i4) {
                int[] iArr = this.content;
                aq5.h(i, i2, i4, iArr, iArr);
            }
            this._size -= i2 - i;
        }
    }

    public final boolean retainAll(int[] iArr) {
        iArr.getClass();
        int i = this._size;
        int[] iArr2 = this.content;
        int i2 = i - 1;
        while (true) {
            int i3 = -1;
            if (-1 >= i2) {
                break;
            }
            int i4 = iArr2[i2];
            int length = iArr.length;
            for (int i5 = 0; i5 < length; i5++) {
                if (iArr[i5] == i4) {
                    i3 = i5;
                    break;
                }
            }
            if (i3 < 0) {
                removeAt(i2);
            }
            i2--;
        }
        return i != this._size;
    }

    public final int set(int i, int i2) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        int[] iArr = this.content;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    public final void sort() {
        int i = this._size;
        if (i == 0) {
            return;
        }
        int[] iArr = this.content;
        iArr.getClass();
        Arrays.sort(iArr, 0, i);
    }

    public final void sortDescending() {
        int i = this._size;
        if (i == 0) {
            return;
        }
        int[] iArr = this.content;
        iArr.getClass();
        Arrays.sort(iArr, 0, i);
        u0.a aVar = u0.Companion;
        int length = iArr.length;
        aVar.getClass();
        u0.a.d(0, i, length);
        int i2 = i / 2;
        if (i2 == 0) {
            return;
        }
        int i3 = i - 1;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = iArr[i4];
            iArr[i4] = iArr[i3];
            iArr[i3] = i5;
            i3--;
        }
    }

    public final void trim(int i) {
        int iMax = Math.max(i, this._size);
        int[] iArr = this.content;
        if (iArr.length > iMax) {
            this.content = Arrays.copyOf(iArr, iMax);
        }
    }

    public final void plusAssign(int[] iArr) {
        iArr.getClass();
        addAll(this._size, iArr);
    }

    public MutableIntList(int i) {
        super(i, null);
    }

    public final void plusAssign(int i) {
        add(i);
    }

    public MutableIntList() {
        this(0, 1, null);
    }

    public final void minusAssign(int[] iArr) {
        iArr.getClass();
        for (int i : iArr) {
            remove(i);
        }
    }

    public final void minusAssign(int i) {
        remove(i);
    }

    public final boolean removeAll(int[] iArr) {
        iArr.getClass();
        int i = this._size;
        for (int i2 : iArr) {
            remove(i2);
        }
        return i != this._size;
    }

    public final boolean add(int i) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i2 = this._size;
        iArr[i2] = i;
        this._size = i2 + 1;
        return true;
    }

    public final boolean retainAll(IntList intList) {
        intList.getClass();
        int i = this._size;
        int[] iArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!intList.contains(iArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean addAll(int i, int[] iArr) {
        iArr.getClass();
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        if (iArr.length == 0) {
            return false;
        }
        ensureCapacity(this._size + iArr.length);
        int[] iArr2 = this.content;
        int i2 = this._size;
        if (i != i2) {
            aq5.h(iArr.length + i, i, i2, iArr2, iArr2);
        }
        aq5.n(i, 0, 12, iArr, iArr2);
        this._size += iArr.length;
        return true;
    }

    public final boolean addAll(IntList intList) {
        intList.getClass();
        return addAll(this._size, intList);
    }

    public final boolean addAll(int[] iArr) {
        iArr.getClass();
        return addAll(this._size, iArr);
    }
}
