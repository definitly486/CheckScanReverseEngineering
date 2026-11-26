package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes4.dex */
public final class zzan {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature zzc;
    public static final Feature zzd;
    public static final Feature zze;
    public static final Feature zzf;
    public static final Feature[] zzg;

    static {
        Feature feature = new Feature("sms_code_autofill", 2L, true);
        zza = feature;
        Feature feature2 = new Feature("sms_code_browser", 2L, true);
        zzb = feature2;
        Feature feature3 = new Feature("sms_retrieve", 1L, true);
        zzc = feature3;
        Feature feature4 = new Feature("user_consent", 3L, true);
        zzd = feature4;
        Feature feature5 = new Feature("missed_call_retriever", 2L, true);
        zze = feature5;
        Feature feature6 = new Feature("missed_call_retriever_user_consent", 1L, true);
        zzf = feature6;
        zzg = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6};
    }
}
