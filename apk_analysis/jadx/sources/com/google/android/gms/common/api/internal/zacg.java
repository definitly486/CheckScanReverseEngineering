package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zaq;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class zacg {
    public static final ExecutorService a = zaq.zaa().zac(new NumberedThreadFactory("GAC_Transform"), 1);

    public static ExecutorService zaa() {
        return a;
    }
}
