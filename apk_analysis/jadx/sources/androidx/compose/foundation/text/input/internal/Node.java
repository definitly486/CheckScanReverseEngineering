package androidx.compose.foundation.text.input.internal;

import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class Node {
    private final int index;

    private /* synthetic */ Node(int i) {
        this.index = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Node m2772boximpl(int i) {
        return new Node(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2773constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2774equalsimpl(int i, Object obj) {
        return (obj instanceof Node) && i == ((Node) obj).m2778unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2775equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2776hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2777toStringimpl(int i) {
        return qz0.d("Node(index=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2774equalsimpl(this.index, obj);
    }

    public final int getIndex() {
        return this.index;
    }

    public int hashCode() {
        return m2776hashCodeimpl(this.index);
    }

    public String toString() {
        return m2777toStringimpl(this.index);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2778unboximpl() {
        return this.index;
    }
}
