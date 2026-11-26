package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zaaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaaa> CREATOR = new zaab();
    public final int b;
    public final IBinder c;
    public final ConnectionResult d;
    public final boolean e;
    public final boolean f;

    public zaaa(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.b = i;
        this.c = iBinder;
        this.d = connectionResult;
        this.e = z;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zaaa)) {
            return false;
        }
        zaaa zaaaVar = (zaaa) obj;
        return this.d.equals(zaaaVar.d) && Objects.equal(zaa(), zaaaVar.zaa());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeIBinder(parcel, 2, this.c, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.e);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final IAccountAccessor zaa() {
        IBinder iBinder = this.c;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.asInterface(iBinder);
    }

    public final ConnectionResult zab() {
        return this.d;
    }

    public final boolean zac() {
        return this.e;
    }

    public final boolean zad() {
        return this.f;
    }
}
