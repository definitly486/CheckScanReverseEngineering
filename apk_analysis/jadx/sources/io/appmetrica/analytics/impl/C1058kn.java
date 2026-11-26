package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.kn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1058kn extends Ki {
    public C1058kn(Context context, String str) {
        super(context, str, TypedValues.Custom.S_STRING);
    }

    @Override // io.appmetrica.analytics.impl.Ki
    public final Object a(int i) {
        return this.a.getString(i);
    }

    public final String b(int i) {
        return this.a.getString(i);
    }
}
