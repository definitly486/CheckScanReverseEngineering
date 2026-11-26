package androidx.compose.runtime;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes2.dex */
public enum InvalidationResult {
    IGNORED,
    SCHEDULED,
    DEFERRED,
    IMMINENT;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<InvalidationResult> getEntries() {
        return $ENTRIES;
    }
}
