package androidx.work;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes3.dex */
public enum OutOfQuotaPolicy {
    RUN_AS_NON_EXPEDITED_WORK_REQUEST,
    DROP_WORK_REQUEST;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<OutOfQuotaPolicy> getEntries() {
        return $ENTRIES;
    }
}
