package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zbj extends zba implements IInterface {
    public final void zbc(zbi zbiVar, AuthorizationRequest authorizationRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zbiVar);
        zbc.zbb(parcelF, authorizationRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 1);
    }

    public final void zbd(IStatusCallback iStatusCallback, RevokeAccessRequest revokeAccessRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, iStatusCallback);
        zbc.zbb(parcelF, revokeAccessRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 3);
    }

    public final void zbe(IStatusCallback iStatusCallback, ClearTokenRequest clearTokenRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, iStatusCallback);
        zbc.zbb(parcelF, clearTokenRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 4);
    }
}
