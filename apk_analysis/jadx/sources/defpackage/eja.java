package defpackage;

import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class eja extends zac {
    public final WeakReference a;

    public eja(zaar zaarVar) {
        this.a = new WeakReference(zaarVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void zab(zak zakVar) {
        zaar zaarVar = (zaar) this.a.get();
        if (zaarVar == null) {
            return;
        }
        dja djaVar = new dja(this, zaarVar, zaarVar, zakVar);
        qja qjaVar = zaarVar.a.n;
        qjaVar.sendMessage(qjaVar.obtainMessage(1, djaVar));
    }
}
