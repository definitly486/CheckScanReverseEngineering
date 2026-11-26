package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.yxb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();
    public final String b;
    public final yxb c;
    public final boolean d;
    public final boolean e;

    public zzt(String str, IBinder iBinder, boolean z, boolean z2) {
        this.b = str;
        yxb yxbVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper iObjectWrapperZzd = zzw.zzf(iBinder).zzd();
                byte[] bArr = iObjectWrapperZzd == null ? null : (byte[]) ObjectWrapper.unwrap(iObjectWrapperZzd);
                if (bArr != null) {
                    yxbVar = new yxb(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            }
        }
        this.c = yxbVar;
        this.d = z;
        this.e = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.b, false);
        yxb yxbVar = this.c;
        if (yxbVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            yxbVar = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, yxbVar, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.d);
        SafeParcelWriter.writeBoolean(parcel, 4, this.e);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzt(String str, yxb yxbVar, boolean z, boolean z2) {
        this.b = str;
        this.c = yxbVar;
        this.d = z;
        this.e = z2;
    }
}
