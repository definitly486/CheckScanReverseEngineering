package androidx.collection;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LongListKt {
    private static final LongList EmptyLongList = new MutableLongList(0);

    public static final LongList buildLongList(nl3<? super MutableLongList, j59> nl3Var) {
        nl3Var.getClass();
        MutableLongList mutableLongList = new MutableLongList(0, 1, null);
        nl3Var.invoke(mutableLongList);
        return mutableLongList;
    }

    public static final LongList emptyLongList() {
        return EmptyLongList;
    }

    public static final LongList longListOf(long... jArr) {
        jArr.getClass();
        MutableLongList mutableLongList = new MutableLongList(jArr.length);
        mutableLongList.addAll(mutableLongList._size, jArr);
        return mutableLongList;
    }

    public static final MutableLongList mutableLongListOf(long j, long j2, long j3) {
        MutableLongList mutableLongList = new MutableLongList(3);
        mutableLongList.add(j);
        mutableLongList.add(j2);
        mutableLongList.add(j3);
        return mutableLongList;
    }

    public static final LongList buildLongList(int i, nl3<? super MutableLongList, j59> nl3Var) {
        nl3Var.getClass();
        MutableLongList mutableLongList = new MutableLongList(i);
        nl3Var.invoke(mutableLongList);
        return mutableLongList;
    }

    public static final LongList longListOf(long j) {
        return mutableLongListOf(j);
    }

    public static final LongList longListOf(long j, long j2) {
        return mutableLongListOf(j, j2);
    }

    public static final MutableLongList mutableLongListOf(long j) {
        MutableLongList mutableLongList = new MutableLongList(1);
        mutableLongList.add(j);
        return mutableLongList;
    }

    public static final LongList longListOf(long j, long j2, long j3) {
        return mutableLongListOf(j, j2, j3);
    }

    public static final LongList longListOf() {
        return EmptyLongList;
    }

    public static final MutableLongList mutableLongListOf(long j, long j2) {
        MutableLongList mutableLongList = new MutableLongList(2);
        mutableLongList.add(j);
        mutableLongList.add(j2);
        return mutableLongList;
    }

    public static final MutableLongList mutableLongListOf() {
        return new MutableLongList(0, 1, null);
    }

    public static final MutableLongList mutableLongListOf(long... jArr) {
        jArr.getClass();
        MutableLongList mutableLongList = new MutableLongList(jArr.length);
        mutableLongList.addAll(mutableLongList._size, jArr);
        return mutableLongList;
    }
}
