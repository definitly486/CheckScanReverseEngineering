package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusProperties$exit$1 extends gh4 implements nl3<FocusDirection, FocusRequester> {
    public static final FocusProperties$exit$1 INSTANCE = new FocusProperties$exit$1();

    public FocusProperties$exit$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ FocusRequester invoke(FocusDirection focusDirection) {
        return m5891invoke3ESFkO8(focusDirection.m5865unboximpl());
    }

    /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
    public final FocusRequester m5891invoke3ESFkO8(int i) {
        return FocusRequester.Companion.getDefault();
    }
}
