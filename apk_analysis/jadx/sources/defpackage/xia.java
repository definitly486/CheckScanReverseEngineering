package defpackage;

import com.google.android.gms.common.api.internal.zaar;

/* JADX INFO: loaded from: classes4.dex */
public final class xia implements Runnable {
    public final /* synthetic */ zaar b;

    public xia(zaar zaarVar) {
        this.b = zaarVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaar zaarVar = this.b;
        zaarVar.d.cancelAvailabilityErrorNotifications(zaarVar.c);
    }
}
