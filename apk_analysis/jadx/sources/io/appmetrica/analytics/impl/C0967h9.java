package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0967h9 extends AbstractC0993i9 {
    public final List a;

    public C0967h9(List<Object> list) {
        this.a = CollectionUtils.unmodifiableListCopy(list);
    }

    public final List<Object> a() {
        return this.a;
    }
}
