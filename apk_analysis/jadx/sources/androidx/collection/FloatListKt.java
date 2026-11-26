package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FloatListKt {
    private static final FloatList EmptyFloatList = new MutableFloatList(0);

    public static final FloatList buildFloatList(nl3<? super MutableFloatList, j59> nl3Var) {
        nl3Var.getClass();
        MutableFloatList mutableFloatList = new MutableFloatList(0, 1, null);
        nl3Var.invoke(mutableFloatList);
        return mutableFloatList;
    }

    public static final FloatList emptyFloatList() {
        return EmptyFloatList;
    }

    public static final FloatList floatListOf(float... fArr) {
        fArr.getClass();
        MutableFloatList mutableFloatList = new MutableFloatList(fArr.length);
        mutableFloatList.addAll(mutableFloatList._size, fArr);
        return mutableFloatList;
    }

    public static final MutableFloatList mutableFloatListOf(float f, float f2, float f3) {
        MutableFloatList mutableFloatList = new MutableFloatList(3);
        mutableFloatList.add(f);
        mutableFloatList.add(f2);
        mutableFloatList.add(f3);
        return mutableFloatList;
    }

    public static final FloatList buildFloatList(int i, nl3<? super MutableFloatList, j59> nl3Var) {
        nl3Var.getClass();
        MutableFloatList mutableFloatList = new MutableFloatList(i);
        nl3Var.invoke(mutableFloatList);
        return mutableFloatList;
    }

    public static final FloatList floatListOf(float f) {
        return mutableFloatListOf(f);
    }

    public static final FloatList floatListOf(float f, float f2) {
        return mutableFloatListOf(f, f2);
    }

    public static final MutableFloatList mutableFloatListOf(float f) {
        MutableFloatList mutableFloatList = new MutableFloatList(1);
        mutableFloatList.add(f);
        return mutableFloatList;
    }

    public static final FloatList floatListOf(float f, float f2, float f3) {
        return mutableFloatListOf(f, f2, f3);
    }

    public static final FloatList floatListOf() {
        return EmptyFloatList;
    }

    public static final MutableFloatList mutableFloatListOf(float f, float f2) {
        MutableFloatList mutableFloatList = new MutableFloatList(2);
        mutableFloatList.add(f);
        mutableFloatList.add(f2);
        return mutableFloatList;
    }

    public static final MutableFloatList mutableFloatListOf() {
        return new MutableFloatList(0, 1, null);
    }

    public static final MutableFloatList mutableFloatListOf(float... fArr) {
        fArr.getClass();
        MutableFloatList mutableFloatList = new MutableFloatList(fArr.length);
        mutableFloatList.addAll(mutableFloatList._size, fArr);
        return mutableFloatList;
    }
}
