package androidx.compose.foundation.gestures.snapping;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class FinalSnappingItem {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int ClosestItem = m1671constructorimpl(0);
    private static final int NextItem = m1671constructorimpl(1);
    private static final int PreviousItem = m1671constructorimpl(2);

    private /* synthetic */ FinalSnappingItem(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FinalSnappingItem m1670boximpl(int i) {
        return new FinalSnappingItem(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1671constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1672equalsimpl(int i, Object obj) {
        return (obj instanceof FinalSnappingItem) && i == ((FinalSnappingItem) obj).m1676unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1673equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1674hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1675toStringimpl(int i) {
        return qz0.d("FinalSnappingItem(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m1672equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1674hashCodeimpl(this.value);
    }

    public String toString() {
        return m1675toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1676unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getClosestItem-bbeMdSM, reason: not valid java name */
        public final int m1677getClosestItembbeMdSM() {
            return FinalSnappingItem.ClosestItem;
        }

        /* JADX INFO: renamed from: getNextItem-bbeMdSM, reason: not valid java name */
        public final int m1678getNextItembbeMdSM() {
            return FinalSnappingItem.NextItem;
        }

        /* JADX INFO: renamed from: getPreviousItem-bbeMdSM, reason: not valid java name */
        public final int m1679getPreviousItembbeMdSM() {
            return FinalSnappingItem.PreviousItem;
        }

        private Companion() {
        }
    }
}
