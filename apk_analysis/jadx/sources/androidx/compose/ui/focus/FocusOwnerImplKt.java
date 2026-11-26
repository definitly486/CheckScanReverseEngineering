package androidx.compose.ui.focus;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOwnerImplKt {
    /* JADX INFO: renamed from: is1dFocusSearch-3ESFkO8, reason: not valid java name */
    public static final boolean m5889is1dFocusSearch3ESFkO8(int i) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        return FocusDirection.m5862equalsimpl0(i, companion.m5870getNextdhqQ8s()) || FocusDirection.m5862equalsimpl0(i, companion.m5871getPreviousdhqQ8s());
    }
}
