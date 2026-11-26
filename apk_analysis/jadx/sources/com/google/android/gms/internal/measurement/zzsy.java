package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzsy implements zzsx {
    public abstract zzsd a();

    public Uri b(Uri uri) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final OutputStream zzj(Uri uri) {
        return a().zzj(b(uri));
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final void zzk(Uri uri) throws zzsk {
        a().zzk(b(uri));
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final void zzl(Uri uri, Uri uri2) throws zzsk {
        a().zzl(b(uri), b(uri2));
    }
}
