package defpackage;

import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zabq;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class kja extends zabq {
    public final WeakReference a;

    public kja(zaaz zaazVar) {
        this.a = new WeakReference(zaazVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabq
    public final void zaa() {
        zaaz zaazVar = (zaaz) this.a.get();
        if (zaazVar == null) {
            return;
        }
        zaazVar.c();
    }
}
