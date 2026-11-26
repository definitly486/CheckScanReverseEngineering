package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ag;

/* JADX INFO: loaded from: classes4.dex */
public final class zzed extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzed> CREATOR = new zzee();
    public final int b;
    public final IBinder c;
    public final IBinder d;
    public final PendingIntent e;
    public final String f;

    public zzed(int i, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, String str) {
        this.b = i;
        this.c = iBinder;
        this.d = iBinder2;
        this.e = pendingIntent;
        this.f = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder, com.google.android.gms.location.zzy] */
    public static zzed zza(IInterface iInterface, com.google.android.gms.location.zzy zzyVar, String str) {
        if (iInterface == null) {
            iInterface = null;
        }
        return new zzed(1, iInterface, zzyVar, null, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.os.IBinder, com.google.android.gms.location.zzv] */
    public static zzed zzb(IInterface iInterface, com.google.android.gms.location.zzv zzvVar, String str) {
        if (iInterface == null) {
            iInterface = null;
        }
        return new zzed(2, iInterface, zzvVar, null, str);
    }

    public static zzed zzc(PendingIntent pendingIntent) {
        int iHashCode = pendingIntent.hashCode();
        return new zzed(3, null, null, pendingIntent, ag.d(new StringBuilder(String.valueOf(iHashCode).length() + 14), "PendingIntent@", iHashCode));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeIBinder(parcel, 2, this.c, false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.d, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
