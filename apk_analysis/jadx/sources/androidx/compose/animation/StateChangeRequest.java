package androidx.compose.animation;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
public enum StateChangeRequest {
    NoRequest,
    MatchFound,
    VisibleContentAbsentDuringTransition,
    NoMatchFound;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<StateChangeRequest> getEntries() {
        return $ENTRIES;
    }
}
