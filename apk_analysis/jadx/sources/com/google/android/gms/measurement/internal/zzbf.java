package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.xwa;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbf extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();
    public final Bundle b;

    public zzbf(Bundle bundle) {
        this.b = bundle;
    }

    public final Object a(String str) {
        return this.b.get(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new xwa(this);
    }

    public final Double n() {
        return Double.valueOf(this.b.getDouble("value"));
    }

    public final String o() {
        return this.b.getString(FirebaseAnalytics.Param.CURRENCY);
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzf(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zze() {
        return this.b.size();
    }

    public final Bundle zzf() {
        return new Bundle(this.b);
    }
}
