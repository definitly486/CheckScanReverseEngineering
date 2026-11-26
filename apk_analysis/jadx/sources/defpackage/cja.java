package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zabd;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.zae;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class cja extends jz1 {
    public final ArrayList d;
    public final /* synthetic */ zaar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cja(zaar zaarVar, ArrayList arrayList) {
        super(zaarVar, 1);
        this.e = zaarVar;
        this.d = arrayList;
    }

    @Override // defpackage.jz1
    public final void b() {
        Set set;
        zaar zaarVar = this.e;
        zabd zabdVar = zaarVar.a;
        zaaz zaazVar = zabdVar.w;
        ClientSettings clientSettings = zaarVar.r;
        if (clientSettings == null) {
            set = Collections.EMPTY_SET;
        } else {
            HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
            Map mapZaa = clientSettings.zaa();
            for (Api api : mapZaa.keySet()) {
                if (!zabdVar.p.containsKey(api.zac())) {
                    hashSet.addAll(((zae) mapZaa.get(api)).zaa);
                }
            }
            set = hashSet;
        }
        zaazVar.q = set;
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Api.Client) arrayList.get(i)).getRemoteService(zaarVar.o, zabdVar.w.q);
        }
    }
}
