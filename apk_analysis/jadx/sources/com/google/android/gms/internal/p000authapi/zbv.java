package com.google.android.gms.internal.p000authapi;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zbv extends zba implements IInterface {
    public final void zbc(zbl zblVar, BeginSignInRequest beginSignInRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zblVar);
        zbc.zbb(parcelF, beginSignInRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 1);
    }

    public final void zbd(IStatusCallback iStatusCallback, String str, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, iStatusCallback);
        parcelF.writeString(str);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 2);
    }

    public final void zbe(zbq zbqVar, GetSignInIntentRequest getSignInIntentRequest, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zbqVar);
        zbc.zbb(parcelF, getSignInIntentRequest);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 3);
    }

    public final void zbf(zbo zboVar, GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest, String str, ApiMetadata apiMetadata) {
        Parcel parcelF = f();
        zbc.zbc(parcelF, zboVar);
        zbc.zbb(parcelF, getPhoneNumberHintIntentRequest);
        parcelF.writeString(str);
        zbc.zbb(parcelF, apiMetadata);
        g(parcelF, 4);
    }
}
