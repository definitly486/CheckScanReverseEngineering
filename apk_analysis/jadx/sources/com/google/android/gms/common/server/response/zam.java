package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();
    public final int b;
    public final String c;
    public final FastJsonResponse.Field d;

    public zam(FastJsonResponse.Field field, String str) {
        this.b = 1;
        this.c = str;
        this.d = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zam(int i, String str, FastJsonResponse.Field field) {
        this.b = i;
        this.c = str;
        this.d = field;
    }
}
