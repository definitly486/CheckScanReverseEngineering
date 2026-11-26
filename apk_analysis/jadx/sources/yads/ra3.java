package yads;

import androidx.collection.SieveCacheKt;
import defpackage.au2;
import defpackage.kx6;
import defpackage.wt2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ra3 {
    public static final int a;
    public static final int b;

    static {
        wt2.a aVar = wt2.c;
        au2 au2Var = au2.SECONDS;
        long jE = defpackage.yt2.e(10, au2Var);
        au2 au2Var2 = au2.MILLISECONDS;
        au2Var2.getClass();
        a = (int) kx6.h(wt2.k(jE, au2Var2), SieveCacheKt.NodeMetaAndPreviousMask, SieveCacheKt.NodeLinkMask);
        b = (int) kx6.h(wt2.k(defpackage.yt2.e(30, au2Var), au2Var2), SieveCacheKt.NodeMetaAndPreviousMask, SieveCacheKt.NodeLinkMask);
        kx6.h(wt2.k(defpackage.yt2.e(3, au2Var), au2Var2), SieveCacheKt.NodeMetaAndPreviousMask, SieveCacheKt.NodeLinkMask);
    }
}
