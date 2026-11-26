package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzc extends com.google.android.gms.internal.auth.zza implements zze {
    @Override // com.google.android.gms.auth.account.zze
    public final void zzd(zzb zzbVar, String str) {
        Parcel parcelF = f();
        com.google.android.gms.internal.auth.zzc.zzd(parcelF, zzbVar);
        parcelF.writeString(str);
        h(parcelF, 2);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void zze(zzb zzbVar, Account account) {
        Parcel parcelF = f();
        com.google.android.gms.internal.auth.zzc.zzd(parcelF, zzbVar);
        com.google.android.gms.internal.auth.zzc.zzc(parcelF, account);
        h(parcelF, 3);
    }

    @Override // com.google.android.gms.auth.account.zze
    public final void zzf(boolean z) {
        Parcel parcelF = f();
        int i = com.google.android.gms.internal.auth.zzc.zza;
        parcelF.writeInt(z ? 1 : 0);
        h(parcelF, 1);
    }
}
