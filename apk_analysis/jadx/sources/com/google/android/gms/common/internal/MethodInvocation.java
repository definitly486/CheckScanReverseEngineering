package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zas();
    public final int b;
    public final int c;
    public final int d;
    public final long e;
    public final long f;
    public final String g;
    public final String h;
    public final int i;
    public final int j;

    public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = j;
        this.f = j2;
        this.g = str;
        this.h = str2;
        this.i = i4;
        this.j = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.writeLong(parcel, 4, this.e);
        SafeParcelWriter.writeLong(parcel, 5, this.f);
        SafeParcelWriter.writeString(parcel, 6, this.g, false);
        SafeParcelWriter.writeString(parcel, 7, this.h, false);
        SafeParcelWriter.writeInt(parcel, 8, this.i);
        SafeParcelWriter.writeInt(parcel, 9, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Deprecated
    public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
        this(i, i2, i3, j, j2, str, str2, i4, -1);
    }
}
