package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Xb {
    public static List a(Configuration configuration) {
        return AndroidUtils.isApiAchieved(24) ? Yb.a(configuration) : u96.h(Qe.a(configuration.locale));
    }
}
