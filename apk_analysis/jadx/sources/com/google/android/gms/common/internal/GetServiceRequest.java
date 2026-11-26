package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes4.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzm();
    public static final Scope[] p = new Scope[0];
    public static final Feature[] q = new Feature[0];
    public final int b;
    public final int c;
    public final int d;
    public String e;
    public IBinder f;
    public Scope[] g;
    public Bundle h;
    public Account i;
    public Feature[] j;
    public Feature[] k;
    public final boolean l;
    public final int m;
    public boolean n;
    public final String o;

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4, boolean z2, String str2) {
        scopeArr = scopeArr == null ? p : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        Feature[] featureArr3 = q;
        featureArr = featureArr == null ? featureArr3 : featureArr;
        featureArr2 = featureArr2 == null ? featureArr3 : featureArr2;
        this.b = i;
        this.c = i2;
        this.d = i3;
        if ("com.google.android.gms".equals(str)) {
            this.e = "com.google.android.gms";
        } else {
            this.e = str;
        }
        if (i < 2) {
            this.i = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.f = iBinder;
            this.i = account;
        }
        this.g = scopeArr;
        this.h = bundle;
        this.j = featureArr;
        this.k = featureArr2;
        this.l = z;
        this.m = i4;
        this.n = z2;
        this.o = str2;
    }

    public String getAttributionTag() {
        return this.o;
    }

    public String getCallingPackage() {
        return this.e;
    }

    public Feature[] getClientApiFeatures() {
        return this.k;
    }

    public int getClientLibraryVersion() {
        return this.d;
    }

    public Bundle getExtraArgs() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzm.a(this, parcel, i);
    }
}
