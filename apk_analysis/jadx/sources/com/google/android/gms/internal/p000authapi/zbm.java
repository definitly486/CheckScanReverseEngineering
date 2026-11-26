package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public final class zbm extends zba implements IInterface {
    public final void zbc(zbs zbsVar, SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zbsVar);
        zbc.zbb(parcelF, saveAccountLinkingTokenRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 1);
    }

    public final void zbd(zbu zbuVar, SavePasswordRequest savePasswordRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zbuVar);
        zbc.zbb(parcelF, savePasswordRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 2);
    }
}
