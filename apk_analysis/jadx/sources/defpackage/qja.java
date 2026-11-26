package defpackage;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.internal.base.zar;

/* JADX INFO: loaded from: classes4.dex */
public final class qja extends zar {
    public final /* synthetic */ zabd a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qja(zabd zabdVar, Looper looper) {
        super(looper);
        this.a = zabdVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                throw ((RuntimeException) message.obj);
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
            sb.append("Unknown message id: ");
            sb.append(i);
            Log.w("GACStateManager", sb.toString());
            return;
        }
        pja pjaVar = (pja) message.obj;
        zabd zabdVar = this.a;
        pjaVar.getClass();
        zabdVar.a.lock();
        try {
            if (zabdVar.t == pjaVar.a) {
                pjaVar.a();
            }
        } finally {
            zabdVar.a.unlock();
        }
    }
}
