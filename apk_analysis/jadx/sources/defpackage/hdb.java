package defpackage;

import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;

/* JADX INFO: loaded from: classes4.dex */
public final class hdb extends kub {
    public final /* synthetic */ thb b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hdb(thb thbVar, thb thbVar2) {
        super(thbVar2);
        this.b = thbVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzc(DeviceMetaData deviceMetaData) {
        this.b.a.setResult(deviceMetaData);
    }
}
