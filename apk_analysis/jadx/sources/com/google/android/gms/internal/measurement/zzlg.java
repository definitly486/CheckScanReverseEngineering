package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import androidx.collection.ArrayMap;
import defpackage.fg;
import defpackage.kh;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlg {
    public static final ArrayMap a = new ArrayMap();
    public static final /* synthetic */ int zza = 0;

    public static synchronized Uri zza(String str) {
        ArrayMap arrayMap = a;
        Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
        arrayMap.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }

    public static String zzb(Context context, String str, boolean z) {
        if (str.contains("#")) {
            fg.c("The passed in package cannot already have a subpackage: ".concat(str));
            return null;
        }
        String packageName = context.getPackageName();
        return kh.c(new StringBuilder(str.length() + 1 + String.valueOf(packageName).length()), str, "#", packageName);
    }
}
