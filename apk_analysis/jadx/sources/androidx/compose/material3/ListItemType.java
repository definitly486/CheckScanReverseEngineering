package androidx.compose.material3;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
final class ListItemType implements Comparable<ListItemType> {
    private final int lines;
    public static final Companion Companion = new Companion(null);
    private static final int OneLine = m3596constructorimpl(1);
    private static final int TwoLine = m3596constructorimpl(2);
    private static final int ThreeLine = m3596constructorimpl(3);

    private /* synthetic */ ListItemType(int i) {
        this.lines = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ListItemType m3594boximpl(int i) {
        return new ListItemType(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m3596constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3597equalsimpl(int i, Object obj) {
        return (obj instanceof ListItemType) && i == ((ListItemType) obj).m3602unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3598equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3599hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3600toStringimpl(int i) {
        return qz0.d("ListItemType(lines=", i, ')');
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ListItemType listItemType) {
        return m3601compareToyh95HIg(listItemType.m3602unboximpl());
    }

    /* JADX INFO: renamed from: compareTo-yh95HIg, reason: not valid java name */
    public int m3601compareToyh95HIg(int i) {
        return m3595compareToyh95HIg(this.lines, i);
    }

    public boolean equals(Object obj) {
        return m3597equalsimpl(this.lines, obj);
    }

    public int hashCode() {
        return m3599hashCodeimpl(this.lines);
    }

    public String toString() {
        return m3600toStringimpl(this.lines);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m3602unboximpl() {
        return this.lines;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getOneLine-AlXitO8, reason: not valid java name */
        public final int m3603getOneLineAlXitO8() {
            return ListItemType.OneLine;
        }

        /* JADX INFO: renamed from: getThreeLine-AlXitO8, reason: not valid java name */
        public final int m3604getThreeLineAlXitO8() {
            return ListItemType.ThreeLine;
        }

        /* JADX INFO: renamed from: getTwoLine-AlXitO8, reason: not valid java name */
        public final int m3605getTwoLineAlXitO8() {
            return ListItemType.TwoLine;
        }

        /* JADX INFO: renamed from: invoke-Z-LSjz4$material3, reason: not valid java name */
        public final int m3606invokeZLSjz4$material3(boolean z, boolean z2, boolean z3) {
            if ((z && z2) || z3) {
                return m3604getThreeLineAlXitO8();
            }
            return (z || z2) ? m3605getTwoLineAlXitO8() : m3603getOneLineAlXitO8();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: compareTo-yh95HIg, reason: not valid java name */
    public static int m3595compareToyh95HIg(int i, int i2) {
        return aa4.f(i, i2);
    }
}
