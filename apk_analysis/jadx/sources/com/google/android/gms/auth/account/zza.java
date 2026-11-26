package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zza extends com.google.android.gms.internal.auth.zzb implements zzb {
    public zza() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean f(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Account account = (Account) com.google.android.gms.internal.auth.zzc.zza(parcel, Account.CREATOR);
            com.google.android.gms.internal.auth.zzc.zzb(parcel);
            zzb(account);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int i2 = com.google.android.gms.internal.auth.zzc.zza;
        int i3 = parcel.readInt();
        com.google.android.gms.internal.auth.zzc.zzb(parcel);
        zzc(i3 != 0);
        return true;
    }
}
