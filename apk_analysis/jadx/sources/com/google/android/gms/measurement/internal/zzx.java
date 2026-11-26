package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class zzx {
    public final zzic a;

    public zzx(zzic zzicVar) {
        this.a = zzicVar;
    }

    public final void a(Bundle bundle, String str) {
        String string;
        zzic zzicVar = this.a;
        zzicVar.zzaX().zzg();
        if (zzicVar.zzB()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        zzicVar.zzd().w.zzb(string);
        zzicVar.zzd().x.zzb(zzicVar.zzba().currentTimeMillis());
    }

    public final boolean b() {
        if (!c()) {
            return false;
        }
        zzic zzicVar = this.a;
        return zzicVar.zzba().currentTimeMillis() - zzicVar.zzd().x.zza() > zzicVar.zzc().zzl(null, zzfy.zzai);
    }

    public final boolean c() {
        return this.a.zzd().x.zza() > 0;
    }
}
