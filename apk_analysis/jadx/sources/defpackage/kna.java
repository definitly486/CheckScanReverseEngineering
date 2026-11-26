package defpackage;

import com.google.android.gms.auth.api.signin.internal.zba;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class kna extends zba {
    public final /* synthetic */ lna a;

    public kna(lna lnaVar) {
        this.a = lnaVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbd(Status status) {
        this.a.setResult(status);
    }
}
