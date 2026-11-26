package com.google.android.gms.auth.api.phone;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.jh2;
import defpackage.m2;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "IncomingCallRetrieverRequestCreator")
public final class IncomingCallRetrieverRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @SafeParcelable.Field(getter = "getCountryCode", id = 1)
    public final String b;

    @SafeParcelable.Field(getter = "getPrefix", id = 2)
    public final String c;

    @SafeParcelable.Field(getter = "getStartRange", id = 3)
    public final String d;

    @SafeParcelable.Field(getter = "getEndRange", id = 4)
    public final String e;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<IncomingCallRetrieverRequest> CREATOR = new zza();

    @SafeParcelable.Constructor
    public IncomingCallRetrieverRequest(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) String str4) {
        m2.e(str, str2, str3, str4);
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final String getCountryCode() {
        return this.b;
    }

    public final String getEndRange() {
        return this.e;
    }

    public final String getPrefix() {
        return this.c;
    }

    public final String getStartRange() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getCountryCode(), false);
        SafeParcelWriter.writeString(parcel, 2, getPrefix(), false);
        SafeParcelWriter.writeString(parcel, 3, getStartRange(), false);
        SafeParcelWriter.writeString(parcel, 4, getEndRange(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
        }

        public Companion() {
            throw null;
        }
    }
}
