package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class bm extends BroadcastReceiver implements Runnable {
    public final cm b;
    public final Handler c;
    public final /* synthetic */ dm d;

    public bm(dm dmVar, Handler handler, cm cmVar) {
        this.d = dmVar;
        this.c = handler;
        this.b = cmVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.c.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.d.c) {
            ((bq2) this.b).a.a(-1, 3, false);
        }
    }
}
