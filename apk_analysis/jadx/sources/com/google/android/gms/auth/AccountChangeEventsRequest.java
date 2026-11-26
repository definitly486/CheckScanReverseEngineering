package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();
    public final int b;
    public int c;

    @Deprecated
    public String d;
    public Account e;

    public AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.b = i;
        this.c = i2;
        this.d = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.e = account;
        } else {
            this.e = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.e;
    }

    @Deprecated
    public String getAccountName() {
        return this.d;
    }

    public int getEventIndex() {
        return this.c;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.e = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.d = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.c = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public AccountChangeEventsRequest() {
        this.b = 1;
    }
}
