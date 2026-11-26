package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.Intent;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends gh4 implements ll3 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ Intent b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, Intent intent, int i) {
        super(0);
        this.a = context;
        this.b = intent;
        this.c = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return this.a.getPackageManager().resolveActivity(this.b, this.c);
    }
}
