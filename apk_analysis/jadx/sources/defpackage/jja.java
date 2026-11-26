package defpackage;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.internal.base.zar;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public final class jja extends zar {
    public final /* synthetic */ zaaz a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jja(zaaz zaazVar, Looper looper) {
        super(looper);
        this.a = zaazVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        zaaz zaazVar = this.a;
        if (i == 1) {
            Lock lock = zaazVar.c;
            lock.lock();
            try {
                if (zaazVar.a()) {
                    zaazVar.e();
                }
                return;
            } finally {
                lock.unlock();
            }
        }
        if (i == 2) {
            zaazVar.c();
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
        sb.append("Unknown message id: ");
        sb.append(i);
        Log.w("GoogleApiClientImpl", sb.toString());
    }
}
