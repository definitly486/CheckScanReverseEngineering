package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusProperties$enter$1 extends gh4 implements nl3<FocusDirection, FocusRequester> {
    public static final FocusProperties$enter$1 INSTANCE = new FocusProperties$enter$1();

    public FocusProperties$enter$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ FocusRequester invoke(FocusDirection focusDirection) {
        return m5890invoke3ESFkO8(focusDirection.m5865unboximpl());
    }

    /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
    public final FocusRequester m5890invoke3ESFkO8(int i) {
        return FocusRequester.Companion.getDefault();
    }
}
