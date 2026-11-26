package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.internal.common.zza;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu extends zza implements ICancelToken {
    @Override // com.google.android.gms.common.internal.ICancelToken
    public final void cancel() {
        Parcel parcelG = g();
        try {
            this.a.transact(2, parcelG, null, 1);
        } finally {
            parcelG.recycle();
        }
    }
}
