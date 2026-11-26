package com.google.android.gms.internal.location;

import android.os.IInterface;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationAvailability;

/* JADX INFO: loaded from: classes4.dex */
public interface zzw extends IInterface {
    void zzb(Status status, LocationAvailability locationAvailability, ApiMetadata apiMetadata);
}
