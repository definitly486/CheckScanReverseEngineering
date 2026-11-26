package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends gh4 implements ll3 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ ComponentName b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, ComponentName componentName, int i) {
        super(0);
        this.a = context;
        this.b = componentName;
        this.c = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        return this.a.getPackageManager().getActivityInfo(this.b, this.c);
    }
}
