package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt extends zza implements IAccountAccessor {
    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() {
        Parcel parcelF = f(g(), 2);
        Account account = (Account) com.google.android.gms.internal.common.zzc.zzb(parcelF, Account.CREATOR);
        parcelF.recycle();
        return account;
    }
}
