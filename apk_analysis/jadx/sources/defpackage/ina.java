package defpackage;

import com.google.android.gms.auth.api.signin.internal.zba;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public final class ina extends zba {
    public final /* synthetic */ jna a;

    public ina(jna jnaVar) {
        this.a = jnaVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbc(Status status) {
        this.a.setResult(status);
    }
}
