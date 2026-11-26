package defpackage;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zach;
import com.google.android.gms.common.api.internal.zacr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;

/* JADX INFO: loaded from: classes4.dex */
public final class oka extends zar {
    public final /* synthetic */ zacr a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oka(zacr zacrVar, Looper looper) {
        super(looper);
        this.a = zacrVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i == 1) {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: ".concat(String.valueOf(runtimeException.getMessage())));
                throw runtimeException;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 59);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i);
            Log.e("TransformedResultImpl", sb.toString());
            return;
        }
        PendingResult pendingResult = (PendingResult) message.obj;
        zacr zacrVar = this.a;
        synchronized (zacrVar.e) {
            try {
                zacr zacrVar2 = (zacr) Preconditions.checkNotNull(zacrVar.b);
                if (pendingResult == null) {
                    zacrVar2.b(new Status(13, "Transform returned null"));
                } else if (pendingResult instanceof zach) {
                    zacrVar2.b(((zach) pendingResult).a);
                } else {
                    zacrVar2.zaa(pendingResult);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
