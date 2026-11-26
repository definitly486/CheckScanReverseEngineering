package com.tapjoy.internal;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class j0 extends Thread {
    public final /* synthetic */ HashMap a;
    public final /* synthetic */ l0 b;

    public j0(l0 l0Var, HashMap map) {
        this.b = l0Var;
        this.a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        super.run();
        r2 r2Var = this.b.e;
        String str = this.b.a + this.b.c;
        HashMap map = this.a;
        r2Var.getClass();
        r2.a(str, "", null, ShareTarget.ENCODING_TYPE_URL_ENCODED, r2.a(map));
    }
}
