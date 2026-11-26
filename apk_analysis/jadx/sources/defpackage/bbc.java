package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzn;

/* JADX INFO: loaded from: classes4.dex */
public final class bbc implements Handler.Callback {
    public final /* synthetic */ ybc b;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            ybc ybcVar = this.b;
            synchronized (ybcVar.g) {
                try {
                    zzn zznVar = (zzn) message.obj;
                    v8c v8cVar = (v8c) ybcVar.g.get(zznVar);
                    if (v8cVar != null && v8cVar.b.isEmpty()) {
                        if (v8cVar.d) {
                            zzn zznVar2 = v8cVar.f;
                            ybc ybcVar2 = v8cVar.h;
                            ybcVar2.i.removeMessages(1, zznVar2);
                            ybcVar2.k.unbindService(ybcVar2.h, v8cVar);
                            v8cVar.d = false;
                            v8cVar.c = 2;
                        }
                        ybcVar.g.remove(zznVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        ybc ybcVar3 = this.b;
        synchronized (ybcVar3.g) {
            try {
                zzn zznVar3 = (zzn) message.obj;
                v8c v8cVar2 = (v8c) ybcVar3.g.get(zznVar3);
                if (v8cVar2 != null && v8cVar2.c == 3) {
                    String strValueOf = String.valueOf(zznVar3);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(strValueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = v8cVar2.g;
                    if (componentName == null) {
                        componentName = zznVar3.zzc();
                    }
                    if (componentName == null) {
                        String strZzb = zznVar3.zzb();
                        Preconditions.checkNotNull(strZzb);
                        componentName = new ComponentName(strZzb, "unknown");
                    }
                    v8cVar2.onServiceDisconnected(componentName);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }
}
