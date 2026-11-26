package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyl extends zza implements IInterface {
    public final List zzd(IObjectWrapper iObjectWrapper, zzyu zzyuVar) {
        Parcel parcelF = f();
        zzc.zzb(parcelF, iObjectWrapper);
        zzc.zza(parcelF, zzyuVar);
        Parcel parcelG = g(parcelF, 3);
        ArrayList arrayListCreateTypedArrayList = parcelG.createTypedArrayList(zzyb.CREATOR);
        parcelG.recycle();
        return arrayListCreateTypedArrayList;
    }

    public final void zze() {
        h(f(), 1);
    }

    public final void zzf() {
        h(f(), 2);
    }
}
