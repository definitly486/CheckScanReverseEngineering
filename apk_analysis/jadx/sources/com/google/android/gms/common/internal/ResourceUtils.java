package com.google.android.gms.common.internal;

import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public final class ResourceUtils {
    static {
        new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("drawable").build();
    }
}
