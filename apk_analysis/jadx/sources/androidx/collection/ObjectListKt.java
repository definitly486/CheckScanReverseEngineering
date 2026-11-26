package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ObjectListKt {
    private static final Object[] EmptyArray = new Object[0];
    private static final ObjectList<Object> EmptyObjectList = new MutableObjectList(0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkIndex(List<?> list, int i) {
        int size = list.size();
        if (i < 0 || i >= size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index " + i + " is out of bounds. The list has " + size + " elements.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkSubIndex(List<?> list, int i, int i2) {
        int size = list.size();
        if (i > i2) {
            RuntimeHelpersKt.throwIllegalArgumentException("Indices are out of order. fromIndex (" + i + ") is greater than toIndex (" + i2 + ").");
        }
        if (i < 0) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("fromIndex (" + i + ") is less than 0.");
        }
        if (i2 > size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("toIndex (" + i2 + ") is more than than the list size (" + size + ')');
        }
    }

    public static final <E> ObjectList<E> emptyObjectList() {
        ObjectList<E> objectList = (ObjectList<E>) EmptyObjectList;
        objectList.getClass();
        return objectList;
    }

    public static final <E> MutableObjectList<E> mutableObjectListOf(E e, E e2, E e3) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(3);
        mutableObjectList.add(e);
        mutableObjectList.add(e2);
        mutableObjectList.add(e3);
        return mutableObjectList;
    }

    public static final <E> ObjectList<E> objectListOf(E... eArr) {
        eArr.getClass();
        MutableObjectList mutableObjectList = new MutableObjectList(eArr.length);
        mutableObjectList.plusAssign((Object[]) eArr);
        return mutableObjectList;
    }

    public static final <E> ObjectList<E> objectListOf(E e) {
        return mutableObjectListOf(e);
    }

    public static final <E> ObjectList<E> objectListOf(E e, E e2) {
        return mutableObjectListOf(e, e2);
    }

    public static final <E> ObjectList<E> objectListOf(E e, E e2, E e3) {
        return mutableObjectListOf(e, e2, e3);
    }

    public static final <E> MutableObjectList<E> mutableObjectListOf(E e) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(1);
        mutableObjectList.add(e);
        return mutableObjectList;
    }

    public static final <E> ObjectList<E> objectListOf() {
        ObjectList<E> objectList = (ObjectList<E>) EmptyObjectList;
        objectList.getClass();
        return objectList;
    }

    public static final <E> MutableObjectList<E> mutableObjectListOf(E e, E e2) {
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(2);
        mutableObjectList.add(e);
        mutableObjectList.add(e2);
        return mutableObjectList;
    }

    public static final <E> MutableObjectList<E> mutableObjectListOf() {
        return new MutableObjectList<>(0, 1, null);
    }

    public static final <E> MutableObjectList<E> mutableObjectListOf(E... eArr) {
        eArr.getClass();
        MutableObjectList<E> mutableObjectList = new MutableObjectList<>(eArr.length);
        mutableObjectList.plusAssign((Object[]) eArr);
        return mutableObjectList;
    }
}
