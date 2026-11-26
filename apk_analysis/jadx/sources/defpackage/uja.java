package defpackage;

import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: loaded from: classes4.dex */
public final class uja implements BaseGmsClient.SignOutCallbacks {
    public final /* synthetic */ zabk a;

    public uja(zabk zabkVar) {
        this.a = zabkVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    public final void onSignOutComplete() {
        this.a.v.o.post(new tja(this));
    }
}
