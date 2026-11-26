package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends gh4 implements ll3 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ String b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context, String str, int i) {
        super(0);
        this.a = context;
        this.b = str;
        this.c = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return this.a.getPackageManager().getApplicationInfo(this.b, this.c);
    }
}
