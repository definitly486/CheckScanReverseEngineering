package androidx.compose.runtime.snapshots;

import defpackage.aa4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.ly1;
import defpackage.nl3;
import defpackage.re4;
import defpackage.xp;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotIdSet implements Iterable<Long>, re4 {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final SnapshotIdSet EMPTY = new SnapshotIdSet(0, 0, 0, null);
    private final long[] belowBound;
    private final long lowerBound;
    private final long lowerSet;
    private final long upperSet;

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1, reason: invalid class name */
    @bd2(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {252, 256, 263}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends f57 implements bm3<bp7<? super Long>, e02<? super j59>, Object> {
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = SnapshotIdSet.this.new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super Long> bp7Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:41:0x00f2  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0075 -> B:19:0x0079). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0097 -> B:30:0x00b5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00b2 -> B:30:0x00b5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:43:0x00f4). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00f2 -> B:42:0x00f3). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private SnapshotIdSet(long j, long j2, long j3, long[] jArr) {
        this.upperSet = j;
        this.lowerSet = j2;
        this.lowerBound = j3;
        this.belowBound = jArr;
    }

    private final SnapshotIdSet fastFold(SnapshotIdSet snapshotIdSet, bm3<? super SnapshotIdSet, ? super Long, SnapshotIdSet> bm3Var) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            for (long j : jArr) {
                snapshotIdSet = bm3Var.invoke(snapshotIdSet, Long.valueOf(j));
            }
        }
        if (this.lowerSet != 0) {
            for (int i = 0; i < 64; i++) {
                if ((this.lowerSet & (1 << i)) != 0) {
                    snapshotIdSet = bm3Var.invoke(snapshotIdSet, Long.valueOf(this.lowerBound + ((long) i)));
                }
            }
        }
        if (this.upperSet != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if ((this.upperSet & (1 << i2)) != 0) {
                    snapshotIdSet = bm3Var.invoke(snapshotIdSet, Long.valueOf(this.lowerBound + ((long) i2) + 64));
                }
            }
        }
        return snapshotIdSet;
    }

    public final SnapshotIdSet and(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2 = EMPTY;
        if (!aa4.e(snapshotIdSet, snapshotIdSet2)) {
            if (this != snapshotIdSet2) {
                long j = snapshotIdSet.lowerBound;
                long j2 = this.lowerBound;
                if (j == j2) {
                    long[] jArr = snapshotIdSet.belowBound;
                    long[] jArr2 = this.belowBound;
                    if (jArr == jArr2) {
                        long j3 = this.upperSet;
                        long j4 = snapshotIdSet.upperSet;
                        long j5 = j3 & j4;
                        long j6 = this.lowerSet;
                        long j7 = snapshotIdSet.lowerSet;
                        long j8 = j6 & j7;
                        if (j5 != 0 || j8 != 0 || jArr2 != null) {
                            return new SnapshotIdSet(j3 & j4, j6 & j7, j2, jArr2);
                        }
                    }
                }
                int i = 0;
                if (this.belowBound == null) {
                    long[] jArr3 = this.belowBound;
                    if (jArr3 != null) {
                        for (long j9 : jArr3) {
                            if (snapshotIdSet.get(j9)) {
                                snapshotIdSet2 = snapshotIdSet2.set(j9);
                            }
                        }
                    }
                    if (this.lowerSet != 0) {
                        for (int i2 = 0; i2 < 64; i2++) {
                            if ((this.lowerSet & (1 << i2)) != 0) {
                                long j10 = this.lowerBound + ((long) i2);
                                if (snapshotIdSet.get(j10)) {
                                    snapshotIdSet2 = snapshotIdSet2.set(j10);
                                }
                            }
                        }
                    }
                    if (this.upperSet != 0) {
                        while (i < 64) {
                            if ((this.upperSet & (1 << i)) != 0) {
                                long j11 = this.lowerBound + ((long) i) + 64;
                                if (snapshotIdSet.get(j11)) {
                                    snapshotIdSet2 = snapshotIdSet2.set(j11);
                                }
                            }
                            i++;
                        }
                    }
                    return snapshotIdSet2;
                }
                long[] jArr4 = snapshotIdSet.belowBound;
                if (jArr4 != null) {
                    for (long j12 : jArr4) {
                        if (get(j12)) {
                            snapshotIdSet2 = snapshotIdSet2.set(j12);
                        }
                    }
                }
                if (snapshotIdSet.lowerSet != 0) {
                    for (int i3 = 0; i3 < 64; i3++) {
                        if ((snapshotIdSet.lowerSet & (1 << i3)) != 0) {
                            long j13 = snapshotIdSet.lowerBound + ((long) i3);
                            if (get(j13)) {
                                snapshotIdSet2 = snapshotIdSet2.set(j13);
                            }
                        }
                    }
                }
                if (snapshotIdSet.upperSet != 0) {
                    while (i < 64) {
                        if ((snapshotIdSet.upperSet & (1 << i)) != 0) {
                            long j14 = snapshotIdSet.lowerBound + ((long) i) + 64;
                            if (get(j14)) {
                                snapshotIdSet2 = snapshotIdSet2.set(j14);
                            }
                        }
                        i++;
                    }
                }
            }
            return snapshotIdSet2;
        }
        return snapshotIdSet2;
    }

    public final SnapshotIdSet andNot(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2 = EMPTY;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet2;
        }
        long j = snapshotIdSet.lowerBound;
        long j2 = this.lowerBound;
        if (j == j2) {
            long[] jArr = snapshotIdSet.belowBound;
            long[] jArr2 = this.belowBound;
            if (jArr == jArr2) {
                return new SnapshotIdSet((~snapshotIdSet.upperSet) & this.upperSet, this.lowerSet & (~snapshotIdSet.lowerSet), j2, jArr2);
            }
        }
        long[] jArr3 = snapshotIdSet.belowBound;
        if (jArr3 != null) {
            for (long j3 : jArr3) {
                this = this.clear(j3);
            }
        }
        if (snapshotIdSet.lowerSet != 0) {
            for (int i = 0; i < 64; i++) {
                if ((snapshotIdSet.lowerSet & (1 << i)) != 0) {
                    this = this.clear(snapshotIdSet.lowerBound + ((long) i));
                }
            }
        }
        if (snapshotIdSet.upperSet != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if ((snapshotIdSet.upperSet & (1 << i2)) != 0) {
                    this = this.clear(snapshotIdSet.lowerBound + ((long) i2) + 64);
                }
            }
        }
        return this;
    }

    public final SnapshotIdSet clear(long j) {
        long[] jArr;
        int iBinarySearch;
        long j2 = j - this.lowerBound;
        if (aa4.g(j2, 0L) >= 0 && aa4.g(j2, 64L) < 0) {
            long j3 = 1 << ((int) j2);
            long j4 = this.lowerSet;
            if ((j4 & j3) != 0) {
                return new SnapshotIdSet(this.upperSet, j4 & (~j3), this.lowerBound, this.belowBound);
            }
        } else if (aa4.g(j2, 64L) >= 0 && aa4.g(j2, 128L) < 0) {
            long j5 = 1 << (((int) j2) - 64);
            long j6 = this.upperSet;
            if ((j6 & j5) != 0) {
                return new SnapshotIdSet(j6 & (~j5), this.lowerSet, this.lowerBound, this.belowBound);
            }
        } else if (aa4.g(j2, 0L) < 0 && (jArr = this.belowBound) != null && (iBinarySearch = SnapshotId_jvmKt.binarySearch(jArr, j)) >= 0) {
            return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, SnapshotId_jvmKt.withIdRemovedAt(jArr, iBinarySearch));
        }
        return this;
    }

    public final void fastForEach(nl3<? super Long, j59> nl3Var) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            for (long j : jArr) {
                nl3Var.invoke(Long.valueOf(j));
            }
        }
        if (this.lowerSet != 0) {
            for (int i = 0; i < 64; i++) {
                if ((this.lowerSet & (1 << i)) != 0) {
                    nl3Var.invoke(Long.valueOf(this.lowerBound + ((long) i)));
                }
            }
        }
        if (this.upperSet != 0) {
            for (int i2 = 0; i2 < 64; i2++) {
                if ((this.upperSet & (1 << i2)) != 0) {
                    nl3Var.invoke(Long.valueOf(this.lowerBound + ((long) i2) + 64));
                }
            }
        }
    }

    public final boolean get(long j) {
        long[] jArr;
        long j2 = j - this.lowerBound;
        if (aa4.g(j2, 0L) >= 0 && aa4.g(j2, 64L) < 0) {
            return ((1 << ((int) j2)) & this.lowerSet) != 0;
        }
        if (aa4.g(j2, 64L) < 0 || aa4.g(j2, 128L) >= 0) {
            return aa4.g(j2, 0L) <= 0 && (jArr = this.belowBound) != null && SnapshotId_jvmKt.binarySearch(jArr, j) >= 0;
        }
        return ((1 << (((int) j2) + (-64))) & this.upperSet) != 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Long> iterator() {
        return ly1.d(new AnonymousClass1(null));
    }

    public final long lowest(long j) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            return jArr[0];
        }
        long j2 = this.lowerSet;
        if (j2 != 0) {
            return this.lowerBound + ((long) Long.numberOfTrailingZeros(j2));
        }
        long j3 = this.upperSet;
        return j3 != 0 ? this.lowerBound + 64 + ((long) Long.numberOfTrailingZeros(j3)) : j;
    }

    public final SnapshotIdSet or(SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2 = EMPTY;
        if (snapshotIdSet == snapshotIdSet2) {
            return this;
        }
        if (this == snapshotIdSet2) {
            return snapshotIdSet;
        }
        long j = snapshotIdSet.lowerBound;
        long j2 = this.lowerBound;
        if (j == j2) {
            long[] jArr = snapshotIdSet.belowBound;
            long[] jArr2 = this.belowBound;
            if (jArr == jArr2) {
                return new SnapshotIdSet(snapshotIdSet.upperSet | this.upperSet, this.lowerSet | snapshotIdSet.lowerSet, j2, jArr2);
            }
        }
        int i = 0;
        if (this.belowBound == null) {
            long[] jArr3 = this.belowBound;
            if (jArr3 != null) {
                for (long j3 : jArr3) {
                    snapshotIdSet = snapshotIdSet.set(j3);
                }
            }
            if (this.lowerSet != 0) {
                for (int i2 = 0; i2 < 64; i2++) {
                    if ((this.lowerSet & (1 << i2)) != 0) {
                        snapshotIdSet = snapshotIdSet.set(this.lowerBound + ((long) i2));
                    }
                }
            }
            if (this.upperSet != 0) {
                while (i < 64) {
                    if ((this.upperSet & (1 << i)) != 0) {
                        snapshotIdSet = snapshotIdSet.set(this.lowerBound + ((long) i) + 64);
                    }
                    i++;
                }
            }
            return snapshotIdSet;
        }
        long[] jArr4 = snapshotIdSet.belowBound;
        if (jArr4 != null) {
            for (long j4 : jArr4) {
                this = this.set(j4);
            }
        }
        if (snapshotIdSet.lowerSet != 0) {
            for (int i3 = 0; i3 < 64; i3++) {
                if ((snapshotIdSet.lowerSet & (1 << i3)) != 0) {
                    this = this.set(snapshotIdSet.lowerBound + ((long) i3));
                }
            }
        }
        if (snapshotIdSet.upperSet != 0) {
            while (i < 64) {
                if ((snapshotIdSet.upperSet & (1 << i)) != 0) {
                    this = this.set(snapshotIdSet.lowerBound + ((long) i) + 64);
                }
                i++;
            }
        }
        return this;
    }

    public final SnapshotIdSet set(long j) {
        long j2;
        long j3;
        long[] array;
        long j4 = j - this.lowerBound;
        long j5 = 0;
        if (aa4.g(j4, 0L) >= 0 && aa4.g(j4, 64L) < 0) {
            long j6 = 1 << ((int) j4);
            long j7 = this.lowerSet;
            if ((j7 & j6) == 0) {
                return new SnapshotIdSet(this.upperSet, j7 | j6, this.lowerBound, this.belowBound);
            }
        } else if (aa4.g(j4, 64L) >= 0 && aa4.g(j4, 128L) < 0) {
            long j8 = 1 << (((int) j4) - 64);
            long j9 = this.upperSet;
            if ((j9 & j8) == 0) {
                return new SnapshotIdSet(j9 | j8, this.lowerSet, this.lowerBound, this.belowBound);
            }
        } else if (aa4.g(j4, 128L) < 0) {
            long[] jArr = this.belowBound;
            if (jArr == null) {
                return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, new long[]{j});
            }
            int iBinarySearch = SnapshotId_jvmKt.binarySearch(jArr, j);
            if (iBinarySearch < 0) {
                return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, SnapshotId_jvmKt.withIdInsertedAt(jArr, -(iBinarySearch + 1), j));
            }
        } else if (!get(j)) {
            long j10 = this.upperSet;
            long j11 = this.lowerSet;
            long j12 = this.lowerBound;
            long j13 = ((j + 1) / 64) * 64;
            if (aa4.g(j13, 0L) < 0) {
                j13 = 9223372036854775680L;
            }
            SnapshotIdArrayBuilder snapshotIdArrayBuilder = null;
            long j14 = j10;
            while (true) {
                if (aa4.g(j12, j13) >= 0) {
                    j2 = j11;
                    j3 = j12;
                    break;
                }
                if (j11 != j5) {
                    if (snapshotIdArrayBuilder == null) {
                        snapshotIdArrayBuilder = new SnapshotIdArrayBuilder(this.belowBound);
                    }
                    int i = 0;
                    while (i < 64) {
                        long j15 = j5;
                        if ((j11 & (1 << i)) != j5) {
                            snapshotIdArrayBuilder.add(((long) i) + j12);
                        }
                        i++;
                        j5 = j15;
                    }
                }
                j2 = j5;
                if (j14 == j2) {
                    j3 = j13;
                    break;
                }
                j12 += 64;
                j11 = j14;
                j5 = j2;
                j14 = j5;
            }
            if (snapshotIdArrayBuilder == null || (array = snapshotIdArrayBuilder.toArray()) == null) {
                array = this.belowBound;
            }
            return new SnapshotIdSet(j14, j2, j3, array).set(j);
        }
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" [");
        ArrayList arrayList = new ArrayList(kn1.q(this, 10));
        Iterator<Long> it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().longValue()));
        }
        return xp.e(sb, ListUtilsKt.fastJoinToString$default(arrayList, null, null, null, 0, null, null, 63, null), ']');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SnapshotIdSet getEMPTY() {
            return SnapshotIdSet.EMPTY;
        }

        private Companion() {
        }
    }
}
