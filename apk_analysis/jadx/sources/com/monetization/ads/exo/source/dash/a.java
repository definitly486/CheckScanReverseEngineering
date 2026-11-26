package com.monetization.ads.exo.source.dash;

import androidx.media3.common.C;
import yads.jo5;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public final /* synthetic */ i a;

    public a(i iVar) {
        this.a = iVar;
    }

    public final void a() {
        long j;
        i iVar = this.a;
        synchronized (jo5.b) {
            try {
                j = jo5.c ? jo5.d : C.TIME_UNSET;
            } catch (Throwable th) {
                throw th;
            }
        }
        iVar.L = j;
        iVar.a(true);
    }
}
