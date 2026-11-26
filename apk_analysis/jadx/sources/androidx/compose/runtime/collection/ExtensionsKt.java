package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import defpackage.ag;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.pp1;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ExtensionsKt {
    public static final <T> boolean all(ObjectList<T> objectList, nl3<? super T, Boolean> nl3Var) {
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!nl3Var.invoke(objArr[i2]).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> ObjectList<T> fastFilter(ObjectList<T> objectList, nl3<? super T, Boolean> nl3Var) {
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!nl3Var.invoke(objArr[i2]).booleanValue()) {
                MutableObjectList mutableObjectList = new MutableObjectList(0, 1, null);
                Object[] objArr2 = objectList.content;
                int i3 = objectList._size;
                for (int i4 = 0; i4 < i3; i4++) {
                    Object obj = objArr2[i4];
                    if (nl3Var.invoke(obj).booleanValue()) {
                        mutableObjectList.add(obj);
                    }
                }
                return mutableObjectList;
            }
        }
        return objectList;
    }

    public static final <T, R> ObjectList<R> fastMap(ObjectList<T> objectList, nl3<? super T, ? extends R> nl3Var) {
        MutableObjectList mutableObjectList = new MutableObjectList(objectList.getSize());
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            mutableObjectList.add(nl3Var.invoke(objArr[i2]));
        }
        return mutableObjectList;
    }

    public static final <T, K extends Comparable<? super K>> boolean isSorted(ObjectList<T> objectList, nl3<? super T, ? extends K> nl3Var) {
        if (objectList.getSize() <= 1) {
            return true;
        }
        K kInvoke = nl3Var.invoke(objectList.get(0));
        if (kInvoke == null) {
            return false;
        }
        int size = objectList.getSize();
        int i = 1;
        while (i < size) {
            K kInvoke2 = nl3Var.invoke(objectList.get(i));
            if (kInvoke2 == null || kInvoke.compareTo(kInvoke2) > 0) {
                return false;
            }
            i++;
            kInvoke = kInvoke2;
        }
        return true;
    }

    public static final <T> T removeLast(MutableObjectList<T> mutableObjectList) {
        if (mutableObjectList.isEmpty()) {
            ag.g("List is empty.");
            return null;
        }
        int size = mutableObjectList.getSize() - 1;
        T t = mutableObjectList.get(size);
        mutableObjectList.removeAt(size);
        return t;
    }

    public static final <T, K extends Comparable<? super K>> void sortBy(MutableObjectList<T> mutableObjectList, final nl3<? super T, ? extends K> nl3Var) {
        List<T> listAsMutableList = mutableObjectList.asMutableList();
        if (listAsMutableList.size() > 1) {
            nn1.J(new Comparator() { // from class: androidx.compose.runtime.collection.ExtensionsKt$sortBy$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    nl3 nl3Var2 = nl3Var;
                    return pp1.a((Comparable) nl3Var2.invoke(t), (Comparable) nl3Var2.invoke(t2));
                }
            }, listAsMutableList);
        }
    }

    public static final <T, K extends Comparable<? super K>> ObjectList<T> sortedBy(ObjectList<T> objectList, nl3<? super T, ? extends K> nl3Var) {
        if (isSorted(objectList, nl3Var)) {
            return objectList;
        }
        MutableObjectList mutableObjectList = toMutableObjectList(objectList);
        sortBy(mutableObjectList, nl3Var);
        return mutableObjectList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> MutableObjectList<T> toMutableObjectList(ObjectList<T> objectList) {
        MutableObjectList<T> mutableObjectList = (MutableObjectList<T>) new MutableObjectList(objectList.getSize());
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            mutableObjectList.add(objArr[i2]);
        }
        return mutableObjectList;
    }
}
