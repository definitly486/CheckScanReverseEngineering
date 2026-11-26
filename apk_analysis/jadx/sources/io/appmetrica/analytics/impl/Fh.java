package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Fh extends AbstractC1130nh {
    public Fh(S6 s6) {
        super(s6);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1130nh, io.appmetrica.analytics.impl.InterfaceC1156oh
    public final boolean a(Boolean bool) {
        return !this.a.isRestrictedForSdk() && ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue();
    }
}
