package yads;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.HandlerThread;
import defpackage.y47;

/* JADX INFO: loaded from: classes6.dex */
public final class s85 {
    public final Context a;
    public final q85 b;
    public final o85 c;
    public final Handler d;
    public int e;
    public r85 f;
    public final Handler g;

    public s85(Context context, q85 q85Var) {
        o85 o85Var = qk2.h;
        this.a = context.getApplicationContext();
        this.b = q85Var;
        this.c = o85Var;
        this.d = u56.b((Handler.Callback) null);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:RequirementsWatcherBackground");
        handlerThread.start();
        this.g = new Handler(handlerThread.getLooper());
    }

    public final void a(int i) {
        ((qk2) ((defpackage.zi4) this.b).c).a(this, i);
    }

    public final /* synthetic */ void b() {
        int iA = this.c.a(this.a);
        if (this.e != iA) {
            this.e = iA;
            this.d.post(new y47(this, iA, 1));
        }
    }

    public final int c() {
        a();
        IntentFilter intentFilter = new IntentFilter();
        if ((this.c.b & 1) != 0) {
            if (u56.a >= 24) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.a.getSystemService("connectivity");
                connectivityManager.getClass();
                r85 r85Var = new r85(this);
                this.f = r85Var;
                connectivityManager.registerDefaultNetworkCallback(r85Var);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if ((this.c.b & 8) != 0) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if ((this.c.b & 4) != 0) {
            if (u56.a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if ((this.c.b & 16) != 0) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        this.a.registerReceiver(new p85(this), intentFilter, null, this.d);
        return this.e;
    }

    public final void a() {
        this.g.post(new Runnable() { // from class: i8a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b();
            }
        });
    }
}
