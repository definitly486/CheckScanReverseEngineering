package com.google.android.gms.internal.measurement;

import android.net.Uri;
import defpackage.dg;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public interface zzsx {
    String zzc();

    default InputStream zzd(Uri uri) throws zzsk {
        throw new zzsk("openForRead not supported by ".concat(String.valueOf(zzc())));
    }

    default boolean zze(Uri uri) throws zzsk {
        throw new zzsk("exists not supported by ".concat(String.valueOf(zzc())));
    }

    default File zzg(Uri uri) {
        String strZzc = zzc();
        String strValueOf = String.valueOf(uri);
        throw new zzsk(dg.c(new StringBuilder(String.valueOf(strZzc).length() + 28 + strValueOf.length()), "Cannot convert uri to file ", strZzc, " ", strValueOf));
    }

    default OutputStream zzj(Uri uri) throws zzsk {
        throw new zzsk("openForWrite not supported by ".concat(String.valueOf(zzc())));
    }

    default void zzk(Uri uri) throws zzsk {
        throw new zzsk("deleteFile not supported by ".concat(String.valueOf(zzc())));
    }

    default void zzl(Uri uri, Uri uri2) throws zzsk {
        throw new zzsk("rename not supported by ".concat(String.valueOf(zzc())));
    }
}
