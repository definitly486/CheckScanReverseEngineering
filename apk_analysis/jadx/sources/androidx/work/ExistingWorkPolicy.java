package androidx.work;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public enum ExistingWorkPolicy {
    REPLACE,
    KEEP,
    APPEND,
    APPEND_OR_REPLACE;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<ExistingWorkPolicy> getEntries() {
        return $ENTRIES;
    }
}
