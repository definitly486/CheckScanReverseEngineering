package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ad2;

/* JADX INFO: loaded from: classes4.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();
    public final int b;
    public final long c;
    public final String d;
    public final int e;
    public final int f;
    public final String g;

    public AccountChangeEvent(long j, String str, int i, int i2, String str2) {
        this.b = 1;
        this.c = j;
        this.d = (String) Preconditions.checkNotNull(str);
        this.e = i;
        this.f = i2;
        this.g = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.b == accountChangeEvent.b && this.c == accountChangeEvent.c && Objects.equal(this.d, accountChangeEvent.d) && this.e == accountChangeEvent.e && this.f == accountChangeEvent.f && Objects.equal(this.g, accountChangeEvent.g);
    }

    public String getAccountName() {
        return this.d;
    }

    public String getChangeData() {
        return this.g;
    }

    public int getChangeType() {
        return this.e;
    }

    public int getEventIndex() {
        return this.f;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Long.valueOf(this.c), this.d, Integer.valueOf(this.e), Integer.valueOf(this.f), this.g);
    }

    public String toString() {
        String str;
        int i = this.e;
        if (i == 1) {
            str = "ADDED";
        } else if (i == 2) {
            str = "REMOVED";
        } else if (i != 3) {
            str = i != 4 ? "UNKNOWN" : "RENAMED_TO";
        } else {
            str = "RENAMED_FROM";
        }
        StringBuilder sbD = ad2.d("AccountChangeEvent {accountName = ", this.d, ", changeType = ", str, ", changeData = ");
        sbD.append(this.g);
        sbD.append(", eventIndex = ");
        sbD.append(this.f);
        sbD.append("}");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeLong(parcel, 2, this.c);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeInt(parcel, 4, this.e);
        SafeParcelWriter.writeInt(parcel, 5, this.f);
        SafeParcelWriter.writeString(parcel, 6, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public AccountChangeEvent(int i, int i2, int i3, long j, String str, String str2) {
        this.b = i;
        this.c = j;
        this.d = (String) Preconditions.checkNotNull(str);
        this.e = i2;
        this.f = i3;
        this.g = str2;
    }
}
