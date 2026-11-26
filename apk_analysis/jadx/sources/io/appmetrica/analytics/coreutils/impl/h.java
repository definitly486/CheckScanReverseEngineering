package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends gh4 implements ll3 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context, String str) {
        super(0);
        this.a = context;
        this.b = str;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return Boolean.valueOf(this.a.getPackageManager().hasSystemFeature(this.b));
    }
}
