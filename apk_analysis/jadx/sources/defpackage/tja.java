package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public final class tja implements Runnable {
    public final /* synthetic */ uja b;

    public tja(uja ujaVar) {
        this.b = ujaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client = this.b.a.b;
        client.disconnect(client.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
