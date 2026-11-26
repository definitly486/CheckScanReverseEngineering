package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends zza implements IInterface {
    public final void zzd(IStatusCallback iStatusCallback, zzbw zzbwVar) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, iStatusCallback);
        zzc.zzc(parcelF, zzbwVar);
        h(parcelF, 2);
    }

    public final void zze(zzm zzmVar, AccountChangeEventsRequest accountChangeEventsRequest) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzmVar);
        zzc.zzc(parcelF, accountChangeEventsRequest);
        h(parcelF, 4);
    }

    public final void zzf(zzo zzoVar, Account account, String str, Bundle bundle) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzoVar);
        zzc.zzc(parcelF, account);
        parcelF.writeString(str);
        zzc.zzc(parcelF, bundle);
        h(parcelF, 1);
    }

    public final void zzg(zzk zzkVar, Account account) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzkVar);
        zzc.zzc(parcelF, account);
        h(parcelF, 6);
    }

    public final void zzh(zzk zzkVar, String str) {
        Parcel parcelF = f();
        zzc.zzd(parcelF, zzkVar);
        parcelF.writeString(str);
        h(parcelF, 3);
    }
}
