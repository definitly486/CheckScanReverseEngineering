package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zacl;

/* JADX INFO: loaded from: classes4.dex */
public final class kka implements Runnable {
    public final /* synthetic */ zacl b;

    public kka(zacl zaclVar) {
        this.b = zaclVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.p.zaa(new ConnectionResult(4));
    }
}
