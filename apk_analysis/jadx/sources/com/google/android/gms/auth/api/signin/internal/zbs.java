package com.google.android.gms.auth.api.signin.internal;

import android.os.IInterface;
import android.os.Parcel;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class zbs extends com.google.android.gms.internal.p000authapi.zba implements IInterface {
    public final void zbc(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelF = f();
        com.google.android.gms.internal.p000authapi.zbc.zbc(parcelF, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.zbb(parcelF, googleSignInOptions);
        g(parcelF, TypedValues.TYPE_TARGET);
    }

    public final void zbd(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelF = f();
        com.google.android.gms.internal.p000authapi.zbc.zbc(parcelF, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.zbb(parcelF, googleSignInOptions);
        g(parcelF, 102);
    }

    public final void zbe(zbr zbrVar, GoogleSignInOptions googleSignInOptions) {
        Parcel parcelF = f();
        com.google.android.gms.internal.p000authapi.zbc.zbc(parcelF, zbrVar);
        com.google.android.gms.internal.p000authapi.zbc.zbb(parcelF, googleSignInOptions);
        g(parcelF, 103);
    }
}
