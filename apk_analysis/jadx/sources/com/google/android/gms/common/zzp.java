package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    public final String b;
    public final boolean c;
    public final boolean d;
    public final Context e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    public zzp(String str, boolean z, boolean z2, IBinder iBinder, boolean z3, boolean z4, boolean z5) {
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = (Context) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.f = z3;
        this.g = z4;
        this.h = z5;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.b, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.e), false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f);
        SafeParcelWriter.writeBoolean(parcel, 6, this.g);
        SafeParcelWriter.writeBoolean(parcel, 8, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
