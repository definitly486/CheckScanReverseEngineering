package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends zza implements zzf {
    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zzd(String str, Bundle bundle) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        zzc.zzc(parcelF, bundle);
        Parcel parcelG = g(parcelF, 2);
        Bundle bundle2 = (Bundle) zzc.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zze(Account account, String str, Bundle bundle) {
        Parcel parcelF = f();
        zzc.zzc(parcelF, account);
        parcelF.writeString(str);
        zzc.zzc(parcelF, bundle);
        Parcel parcelG = g(parcelF, 5);
        Bundle bundle2 = (Bundle) zzc.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zzf(Account account) {
        Parcel parcelF = f();
        zzc.zzc(parcelF, account);
        Parcel parcelG = g(parcelF, 7);
        Bundle bundle = (Bundle) zzc.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zzg(String str) {
        Parcel parcelF = f();
        parcelF.writeString(str);
        Parcel parcelG = g(parcelF, 8);
        Bundle bundle = (Bundle) zzc.zza(parcelG, Bundle.CREATOR);
        parcelG.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final AccountChangeEventsResponse zzh(AccountChangeEventsRequest accountChangeEventsRequest) {
        Parcel parcelF = f();
        zzc.zzc(parcelF, accountChangeEventsRequest);
        Parcel parcelG = g(parcelF, 3);
        AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) zzc.zza(parcelG, AccountChangeEventsResponse.CREATOR);
        parcelG.recycle();
        return accountChangeEventsResponse;
    }
}
