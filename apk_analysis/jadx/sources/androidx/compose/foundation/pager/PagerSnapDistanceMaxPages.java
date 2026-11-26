package androidx.compose.foundation.pager;

import androidx.collection.SieveCacheKt;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class PagerSnapDistanceMaxPages implements PagerSnapDistance {
    public static final int $stable = 0;
    private final int pagesLimit;

    public PagerSnapDistanceMaxPages(int i) {
        this.pagesLimit = i;
    }

    @Override // androidx.compose.foundation.pager.PagerSnapDistance
    public int calculateTargetPage(int i, int i2, float f, int i3, int i4) {
        long j = i;
        int i5 = this.pagesLimit;
        long j2 = j - ((long) i5);
        if (j2 < 0) {
            j2 = 0;
        }
        int i6 = (int) j2;
        long j3 = j + ((long) i5);
        if (j3 > SieveCacheKt.NodeLinkMask) {
            j3 = 2147483647L;
        }
        return kx6.f(i2, i6, (int) j3);
    }

    public boolean equals(Object obj) {
        return (obj instanceof PagerSnapDistanceMaxPages) && this.pagesLimit == ((PagerSnapDistanceMaxPages) obj).pagesLimit;
    }

    public int hashCode() {
        return Integer.hashCode(this.pagesLimit);
    }
}
