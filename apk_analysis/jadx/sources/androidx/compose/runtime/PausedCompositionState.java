package androidx.compose.runtime;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes2.dex */
public enum PausedCompositionState {
    Invalid,
    Cancelled,
    InitialPending,
    RecomposePending,
    Recomposing,
    ApplyPending,
    Applied;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<PausedCompositionState> getEntries() {
        return $ENTRIES;
    }
}
