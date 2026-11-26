package androidx.work;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public enum NetworkType {
    NOT_REQUIRED,
    CONNECTED,
    UNMETERED,
    NOT_ROAMING,
    METERED,
    TEMPORARILY_UNMETERED;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<NetworkType> getEntries() {
        return $ENTRIES;
    }
}
