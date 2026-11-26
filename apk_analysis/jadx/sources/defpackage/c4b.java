package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.internal.location.zzz;
import com.google.android.gms.location.LocationSettingsResult;

/* JADX INFO: loaded from: classes4.dex */
public final class c4b extends zzz {
    public final /* synthetic */ f2b a;

    public c4b(f2b f2bVar) {
        this.a = f2bVar;
    }

    @Override // com.google.android.gms.internal.location.zzaa
    public final void zzb(LocationSettingsResult locationSettingsResult, ApiMetadata apiMetadata) {
        this.a.setResult(locationSettingsResult);
    }
}
