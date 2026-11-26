package androidx.compose.runtime.collection;

import defpackage.aa4;
import defpackage.kv2;
import defpackage.ln;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableVectorKt {
    public static final <T> MutableVector<T> MutableVector(int i) {
        aa4.i();
        throw null;
    }

    public static MutableVector MutableVector$default(int i, int i2, Object obj) {
        aa4.i();
        throw null;
    }

    public static final void checkIndex(List<?> list, int i) {
        int size = list.size();
        if (i < 0 || i >= size) {
            throwListIndexOutOfBoundsException(i, size);
        }
    }

    public static final void checkSubIndex(List<?> list, int i, int i2) {
        if (i > i2) {
            throwReversedIndicesException(i, i2);
        }
        if (i < 0) {
            throwNegativeIndexException(i);
        }
        if (i2 > list.size()) {
            throwOutOfRangeException(i2, list.size());
        }
    }

    public static final /* synthetic */ <T> MutableVector<T> mutableVectorOf(T... tArr) {
        return new MutableVector<>(tArr, tArr.length);
    }

    private static final void throwListIndexOutOfBoundsException(int i, int i2) {
        throw new IndexOutOfBoundsException(ln.c(i, i2, "Index ", " is out of bounds. The list has ", " elements."));
    }

    private static final void throwNegativeIndexException(int i) {
        throw new IndexOutOfBoundsException(kv2.b(i, "fromIndex (", ") is less than 0."));
    }

    private static final void throwOutOfRangeException(int i, int i2) {
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is more than than the list size (" + i2 + ')');
    }

    private static final void throwReversedIndicesException(int i, int i2) {
        throw new IllegalArgumentException(ln.c(i, i2, "Indices are out of order. fromIndex (", ") is greater than toIndex (", ")."));
    }

    public static final <T> MutableVector<T> MutableVector(int i, nl3<? super Integer, ? extends T> nl3Var) {
        aa4.i();
        throw null;
    }

    public static final <T> MutableVector<T> mutableVectorOf() {
        aa4.i();
        throw null;
    }
}
