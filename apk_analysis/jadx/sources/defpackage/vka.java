package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.service.zaa;

/* JADX INFO: loaded from: classes4.dex */
public final class vka extends zaa {
    public final ska a;

    public vka(ska skaVar) {
        this.a = skaVar;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zam
    public final void zab(int i) {
        this.a.setResult(new Status(i));
    }
}
