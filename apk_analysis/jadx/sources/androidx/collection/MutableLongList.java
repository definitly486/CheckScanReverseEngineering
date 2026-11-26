package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import defpackage.aq5;
import defpackage.jh2;
import defpackage.u0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class MutableLongList extends LongList {
    public /* synthetic */ MutableLongList(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public static /* synthetic */ void trim$default(MutableLongList mutableLongList, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = mutableLongList._size;
        }
        mutableLongList.trim(i);
    }

    public final void add(int i, long j) {
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        ensureCapacity(this._size + 1);
        long[] jArr = this.content;
        int i2 = this._size;
        if (i != i2) {
            aq5.l(jArr, jArr, i + 1, i, i2);
        }
        jArr[i] = j;
        this._size++;
    }

    public final boolean addAll(int i, LongList longList) {
        longList.getClass();
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i2 = longList._size;
        if (i2 == 0) {
            return false;
        }
        ensureCapacity(this._size + i2);
        long[] jArr = this.content;
        int i3 = this._size;
        if (i != i3) {
            aq5.l(jArr, jArr, longList._size + i, i, i3);
        }
        aq5.l(longList.content, jArr, i, 0, longList._size);
        this._size += longList._size;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int i) {
        long[] jArr = this.content;
        if (jArr.length < i) {
            this.content = Arrays.copyOf(jArr, Math.max(i, (jArr.length * 3) / 2));
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(LongList longList) {
        longList.getClass();
        long[] jArr = longList.content;
        int i = longList._size;
        for (int i2 = 0; i2 < i; i2++) {
            remove(jArr[i2]);
        }
    }

    public final void plusAssign(LongList longList) {
        longList.getClass();
        addAll(this._size, longList);
    }

    public final boolean remove(long j) {
        int iIndexOf = indexOf(j);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(LongList longList) {
        longList.getClass();
        int i = this._size;
        int i2 = longList._size - 1;
        if (i2 >= 0) {
            int i3 = 0;
            while (true) {
                remove(longList.get(i3));
                if (i3 == i2) {
                    break;
                }
                i3++;
            }
        }
        return i != this._size;
    }

    public final long removeAt(int i) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        long[] jArr = this.content;
        long j = jArr[i];
        int i2 = this._size;
        if (i != i2 - 1) {
            aq5.l(jArr, jArr, i, i + 1, i2);
        }
        this._size--;
        return j;
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
                long[] jArr = this.content;
                aq5.l(jArr, jArr, i, i2, i4);
            }
            this._size -= i2 - i;
        }
    }

    public final boolean retainAll(long[] jArr) {
        jArr.getClass();
        int i = this._size;
        long[] jArr2 = this.content;
        int i2 = i - 1;
        while (true) {
            int i3 = -1;
            if (-1 >= i2) {
                break;
            }
            long j = jArr2[i2];
            int length = jArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (jArr[i4] == j) {
                    i3 = i4;
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

    public final long set(int i, long j) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        long[] jArr = this.content;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    public final void sort() {
        int i = this._size;
        if (i == 0) {
            return;
        }
        long[] jArr = this.content;
        jArr.getClass();
        Arrays.sort(jArr, 0, i);
    }

    public final void sortDescending() {
        int i = this._size;
        if (i == 0) {
            return;
        }
        long[] jArr = this.content;
        jArr.getClass();
        Arrays.sort(jArr, 0, i);
        u0.a aVar = u0.Companion;
        int length = jArr.length;
        aVar.getClass();
        u0.a.d(0, i, length);
        int i2 = i / 2;
        if (i2 == 0) {
            return;
        }
        int i3 = i - 1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j = jArr[i4];
            jArr[i4] = jArr[i3];
            jArr[i3] = j;
            i3--;
        }
    }

    public final void trim(int i) {
        int iMax = Math.max(i, this._size);
        long[] jArr = this.content;
        if (jArr.length > iMax) {
            this.content = Arrays.copyOf(jArr, iMax);
        }
    }

    public final void plusAssign(long[] jArr) {
        jArr.getClass();
        addAll(this._size, jArr);
    }

    public MutableLongList(int i) {
        super(i, null);
    }

    public final void plusAssign(long j) {
        add(j);
    }

    public MutableLongList() {
        this(0, 1, null);
    }

    public final void minusAssign(long[] jArr) {
        jArr.getClass();
        for (long j : jArr) {
            remove(j);
        }
    }

    public final void minusAssign(long j) {
        remove(j);
    }

    public final boolean removeAll(long[] jArr) {
        jArr.getClass();
        int i = this._size;
        for (long j : jArr) {
            remove(j);
        }
        return i != this._size;
    }

    public final boolean add(long j) {
        ensureCapacity(this._size + 1);
        long[] jArr = this.content;
        int i = this._size;
        jArr[i] = j;
        this._size = i + 1;
        return true;
    }

    public final boolean retainAll(LongList longList) {
        longList.getClass();
        int i = this._size;
        long[] jArr = this.content;
        for (int i2 = i - 1; -1 < i2; i2--) {
            if (!longList.contains(jArr[i2])) {
                removeAt(i2);
            }
        }
        return i != this._size;
    }

    public final boolean addAll(int i, long[] jArr) {
        jArr.getClass();
        if (i < 0 || i > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        if (jArr.length == 0) {
            return false;
        }
        ensureCapacity(this._size + jArr.length);
        long[] jArr2 = this.content;
        int i2 = this._size;
        if (i != i2) {
            aq5.l(jArr2, jArr2, jArr.length + i, i, i2);
        }
        aq5.l(jArr, jArr2, i, 0, jArr.length);
        this._size += jArr.length;
        return true;
    }

    public final boolean addAll(LongList longList) {
        longList.getClass();
        return addAll(this._size, longList);
    }

    public final boolean addAll(long[] jArr) {
        jArr.getClass();
        return addAll(this._size, jArr);
    }
}
