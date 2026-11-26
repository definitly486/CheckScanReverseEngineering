package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FloatSetKt {
    private static final MutableFloatSet EmptyFloatSet = new MutableFloatSet(0);
    private static final float[] EmptyFloatArray = new float[0];

    public static final FloatSet buildFloatSet(nl3<? super MutableFloatSet, j59> nl3Var) {
        nl3Var.getClass();
        MutableFloatSet mutableFloatSet = new MutableFloatSet(0, 1, null);
        nl3Var.invoke(mutableFloatSet);
        return mutableFloatSet;
    }

    public static final FloatSet emptyFloatSet() {
        return EmptyFloatSet;
    }

    public static final FloatSet floatSetOf(float... fArr) {
        fArr.getClass();
        MutableFloatSet mutableFloatSet = new MutableFloatSet(fArr.length);
        mutableFloatSet.plusAssign(fArr);
        return mutableFloatSet;
    }

    public static final float[] getEmptyFloatArray() {
        return EmptyFloatArray;
    }

    public static final int hash(float f) {
        int iHashCode = Float.hashCode(f) * ScatterMapKt.MurmurHashC1;
        return iHashCode ^ (iHashCode << 16);
    }

    public static final MutableFloatSet mutableFloatSetOf(float f, float f2, float f3) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(3);
        mutableFloatSet.plusAssign(f);
        mutableFloatSet.plusAssign(f2);
        mutableFloatSet.plusAssign(f3);
        return mutableFloatSet;
    }

    public static final FloatSet floatSetOf(float f) {
        return mutableFloatSetOf(f);
    }

    public static final FloatSet floatSetOf(float f, float f2) {
        return mutableFloatSetOf(f, f2);
    }

    public static final FloatSet buildFloatSet(int i, nl3<? super MutableFloatSet, j59> nl3Var) {
        nl3Var.getClass();
        MutableFloatSet mutableFloatSet = new MutableFloatSet(i);
        nl3Var.invoke(mutableFloatSet);
        return mutableFloatSet;
    }

    public static final FloatSet floatSetOf(float f, float f2, float f3) {
        return mutableFloatSetOf(f, f2, f3);
    }

    public static final FloatSet floatSetOf() {
        return EmptyFloatSet;
    }

    public static final MutableFloatSet mutableFloatSetOf(float f) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(1);
        mutableFloatSet.plusAssign(f);
        return mutableFloatSet;
    }

    public static final MutableFloatSet mutableFloatSetOf(float f, float f2) {
        MutableFloatSet mutableFloatSet = new MutableFloatSet(2);
        mutableFloatSet.plusAssign(f);
        mutableFloatSet.plusAssign(f2);
        return mutableFloatSet;
    }

    public static final MutableFloatSet mutableFloatSetOf() {
        return new MutableFloatSet(0, 1, null);
    }

    public static final MutableFloatSet mutableFloatSetOf(float... fArr) {
        fArr.getClass();
        MutableFloatSet mutableFloatSet = new MutableFloatSet(fArr.length);
        mutableFloatSet.plusAssign(fArr);
        return mutableFloatSet;
    }
}
