package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzym extends zza implements zzyo {
    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzyo
    public final zzyl zzd(IObjectWrapper iObjectWrapper, zzyd zzydVar) {
        zzyl zzylVar;
        Parcel parcelF = f();
        zzc.zzb(parcelF, iObjectWrapper);
        zzc.zza(parcelF, zzydVar);
        Parcel parcelG = g(parcelF, 1);
        IBinder strongBinder = parcelG.readStrongBinder();
        if (strongBinder == null) {
            zzylVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.barcode.aidls.IBarcodeScanner");
            zzylVar = iInterfaceQueryLocalInterface instanceof zzyl ? (zzyl) iInterfaceQueryLocalInterface : new zzyl(strongBinder, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner");
        }
        parcelG.recycle();
        return zzylVar;
    }
}
