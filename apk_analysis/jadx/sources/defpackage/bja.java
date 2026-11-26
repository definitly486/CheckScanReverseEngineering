package defpackage;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.zaq;
import com.google.android.gms.signin.zae;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class bja extends jz1 {
    public final HashMap d;
    public final /* synthetic */ zaar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bja(zaar zaarVar, HashMap map) {
        super(zaarVar, 1);
        this.e = zaarVar;
        this.d = map;
    }

    @Override // defpackage.jz1
    public final void b() {
        zae zaeVar;
        zaar zaarVar = this.e;
        GoogleApiAvailabilityLight googleApiAvailabilityLight = zaarVar.d;
        zabd zabdVar = zaarVar.a;
        Context context = zaarVar.c;
        zaq zaqVar = new zaq(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashMap map = this.d;
        for (Api.Client client : map.keySet()) {
            if (!client.requiresGooglePlayServices() || ((yia) map.get(client)).c) {
                arrayList2.add(client);
            } else {
                arrayList.add(client);
            }
        }
        int i = 0;
        int iZaa = -1;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i < size) {
                iZaa = zaqVar.zaa(context, (Api.Client) arrayList.get(i));
                i++;
                if (iZaa != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i < size2) {
                iZaa = zaqVar.zaa(context, (Api.Client) arrayList2.get(i));
                i++;
                if (iZaa == 0) {
                    break;
                }
            }
        }
        if (iZaa != 0) {
            zia ziaVar = new zia(this, zaarVar, new ConnectionResult(iZaa, null));
            qja qjaVar = zabdVar.n;
            qjaVar.sendMessage(qjaVar.obtainMessage(1, ziaVar));
            return;
        }
        if (zaarVar.m && (zaeVar = zaarVar.k) != null) {
            zaeVar.zad();
        }
        for (Api.Client client2 : map.keySet()) {
            BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks = (BaseGmsClient.ConnectionProgressReportCallbacks) map.get(client2);
            if (!client2.requiresGooglePlayServices() || zaqVar.zaa(context, client2) == 0) {
                client2.connect(connectionProgressReportCallbacks);
            } else {
                aja ajaVar = new aja(this, zaarVar, connectionProgressReportCallbacks);
                qja qjaVar2 = zabdVar.n;
                qjaVar2.sendMessage(qjaVar2.obtainMessage(1, ajaVar));
            }
        }
    }
}
