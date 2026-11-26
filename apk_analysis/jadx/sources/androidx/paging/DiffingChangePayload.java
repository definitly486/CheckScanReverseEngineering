package androidx.paging;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public enum DiffingChangePayload {
    ITEM_TO_PLACEHOLDER,
    PLACEHOLDER_TO_ITEM,
    PLACEHOLDER_POSITION_CHANGE;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<DiffingChangePayload> getEntries() {
        return $ENTRIES;
    }
}
