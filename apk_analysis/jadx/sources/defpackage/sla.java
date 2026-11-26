package defpackage;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.zabq;
import com.google.android.gms.common.api.internal.zap;

/* JADX INFO: loaded from: classes4.dex */
public final class sla extends zabq {
    public final /* synthetic */ Dialog a;
    public final /* synthetic */ vla b;

    public sla(vla vlaVar, Dialog dialog) {
        this.a = dialog;
        this.b = vlaVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabq
    public final void zaa() {
        zap zapVar = this.b.c;
        zapVar.d.set(null);
        zapVar.c();
        Dialog dialog = this.a;
        if (dialog.isShowing()) {
            dialog.dismiss();
        }
    }
}
