package defpackage;

import com.google.android.gms.internal.measurement.zzyq;

/* JADX INFO: loaded from: classes4.dex */
public final class eic extends zzyq {
    public final /* synthetic */ zzyq a;
    public final /* synthetic */ zzyq b;

    public eic(zzyq zzyqVar, zzyq zzyqVar2) {
        this.a = zzyqVar;
        this.b = zzyqVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        zzyq zzyqVar = this.b;
        try {
            this.a.a();
        } finally {
            zzyqVar.a();
        }
    }
}
