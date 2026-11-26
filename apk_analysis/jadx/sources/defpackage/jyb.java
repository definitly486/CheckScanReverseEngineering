package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzkn;

/* JADX INFO: loaded from: classes4.dex */
public final class jyb extends zzkn {
    public final /* synthetic */ ListenerHolder a;

    public jyb(zzkk zzkkVar, ListenerHolder listenerHolder) {
        this.a = listenerHolder;
    }

    @Override // com.google.android.gms.internal.measurement.zzko
    public final void zzb(byte[] bArr) {
        this.a.notifyListener(new txb(this, bArr));
    }
}
