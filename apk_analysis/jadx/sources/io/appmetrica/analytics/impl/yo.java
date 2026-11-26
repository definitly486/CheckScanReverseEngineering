package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;

/* JADX INFO: loaded from: classes5.dex */
public final class yo implements Ya {
    @Override // io.appmetrica.analytics.impl.Ya
    public final String a(Context context) {
        IdentifiersResult identifiersResultQ = C1169p4.l().b(context).q();
        if (StringUtils.isNullOrEmpty(identifiersResultQ.id)) {
            return null;
        }
        return identifiersResultQ.id;
    }
}
