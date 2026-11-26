package yads;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import defpackage.al;

/* JADX INFO: loaded from: classes3.dex */
public final class r85 extends ConnectivityManager.NetworkCallback {
    public boolean a;
    public boolean b;
    public final /* synthetic */ s85 c;

    public r85(s85 s85Var) {
        this.c = s85Var;
    }

    public final /* synthetic */ void a() {
        s85 s85Var = this.c;
        if (s85Var.f != null) {
            s85Var.a();
        }
    }

    public final void b() {
        s85 s85Var = this.c;
        if (s85Var.f == null || (s85Var.e & 3) == 0) {
            return;
        }
        s85Var.a();
    }

    public final void c() {
        this.c.d.post(new defpackage.cs4(this, 3));
    }

    public final void d() {
        this.c.d.post(new al(this, 3));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        c();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        if (z) {
            return;
        }
        d();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        boolean zHasCapability = networkCapabilities.hasCapability(16);
        if (this.a && this.b == zHasCapability) {
            if (zHasCapability) {
                d();
            }
        } else {
            this.a = true;
            this.b = zHasCapability;
            c();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        c();
    }
}
