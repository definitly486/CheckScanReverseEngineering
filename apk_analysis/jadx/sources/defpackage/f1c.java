package defpackage;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.cloudmessaging.zzd;
import com.google.android.gms.cloudmessaging.zzt;
import com.google.android.gms.cloudmessaging.zzv;
import java.util.ArrayDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f1c implements Runnable {
    public final /* synthetic */ ibc b;

    public /* synthetic */ f1c(ibc ibcVar) {
        this.b = ibcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            final ibc ibcVar = this.b;
            synchronized (ibcVar) {
                try {
                    if (ibcVar.b != 2) {
                        return;
                    }
                    ArrayDeque arrayDeque = ibcVar.e;
                    if (arrayDeque.isEmpty()) {
                        ibcVar.d();
                        return;
                    }
                    final udc udcVar = (udc) arrayDeque.poll();
                    SparseArray sparseArray = ibcVar.f;
                    int i = udcVar.a;
                    sparseArray.put(i, udcVar);
                    ibcVar.g.b.schedule(new Runnable() { // from class: o6c
                        @Override // java.lang.Runnable
                        public final void run() {
                            udc udcVar2 = udcVar;
                            ibc ibcVar2 = ibcVar;
                            int i2 = udcVar2.a;
                            synchronized (ibcVar2) {
                                SparseArray sparseArray2 = ibcVar2.f;
                                udc udcVar3 = (udc) sparseArray2.get(i2);
                                if (udcVar3 != null) {
                                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 20);
                                    sb.append("Timing out request: ");
                                    sb.append(i2);
                                    Log.w("MessengerIpcClient", sb.toString());
                                    sparseArray2.remove(i2);
                                    udcVar3.d(new zzt("Timed out waiting for response", null));
                                    ibcVar2.d();
                                }
                            }
                        }
                    }, 30L, TimeUnit.SECONDS);
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(udcVar)));
                    }
                    zzv zzvVar = ibcVar.g;
                    Messenger messenger = ibcVar.c;
                    int i2 = udcVar.c;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i2;
                    messageObtain.arg1 = i;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", udcVar.a());
                    bundle.putString("pkg", zzvVar.a.getPackageName());
                    bundle.putBundle("data", udcVar.d);
                    messageObtain.setData(bundle);
                    try {
                        hcc hccVar = ibcVar.d;
                        Messenger messenger2 = hccVar.a;
                        if (messenger2 != null) {
                            messenger2.send(messageObtain);
                        } else {
                            zzd zzdVar = hccVar.b;
                            if (zzdVar == null) {
                                throw new IllegalStateException("Both messengers are null");
                            }
                            zzdVar.b.send(messageObtain);
                        }
                    } catch (RemoteException e) {
                        ibcVar.b(e.getMessage());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
