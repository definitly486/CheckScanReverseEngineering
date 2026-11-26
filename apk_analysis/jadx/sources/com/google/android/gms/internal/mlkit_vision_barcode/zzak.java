package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak extends zza implements zzam {
    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzam
    public final zzaj zzd(IObjectWrapper iObjectWrapper, zzah zzahVar) {
        zzaj zzajVar;
        Parcel parcelF = f();
        zzc.zzb(parcelF, iObjectWrapper);
        zzc.zza(parcelF, zzahVar);
        Parcel parcelG = g(parcelF, 1);
        IBinder strongBinder = parcelG.readStrongBinder();
        if (strongBinder == null) {
            zzajVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
            zzajVar = iInterfaceQueryLocalInterface instanceof zzaj ? (zzaj) iInterfaceQueryLocalInterface : new zzaj(strongBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
        }
        parcelG.recycle();
        return zzajVar;
    }
}
