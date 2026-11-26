package androidx.compose.foundation.text.selection;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
enum DownResolution {
    Up,
    Drag,
    Timeout,
    Cancel;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<DownResolution> getEntries() {
        return $ENTRIES;
    }
}
