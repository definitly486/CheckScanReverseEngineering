package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.AndroidUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class D6 {
    public static Qf a() {
        return AndroidUtils.isApiAchieved(28) ? new Sf() : new Rf();
    }
}
