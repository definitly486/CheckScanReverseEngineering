package com.google.android.gms.auth.api.phone;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "IncomingCallRetrieverResponseCreator")
public final class IncomingCallRetrieverResponse extends AbstractSafeParcelable implements ReflectedParcelable {

    @SafeParcelable.Field(getter = "getPhoneNumber", id = 1)
    public final String b;

    @SafeParcelable.Field(getter = "getIncomingCallVerificationStatusCode", id = 2)
    public final String c;

    @SafeParcelable.Field(getter = "getErrorDetails", id = 3)
    public final String d;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<IncomingCallRetrieverResponse> CREATOR = new zzb();

    @SafeParcelable.Constructor
    public IncomingCallRetrieverResponse(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3) {
        str2.getClass();
        this.b = str;
        this.c = str2;
        this.d = str3;
        if (str != null && !aa4.e(str2, IncomingCallRetrieverStatusCodes.INSTANCE.getVerificationStatusCodeString(0))) {
            fg.c("incomingCallVerificationStatusCode should be SUCCESS when phone number is set.");
            throw null;
        }
        if (str == null && aa4.e(str2, IncomingCallRetrieverStatusCodes.INSTANCE.getVerificationStatusCodeString(0))) {
            fg.c("Phone number must not be null when verificationStatus is SUCCESS.");
            throw null;
        }
    }

    public final String getErrorDetails() {
        return this.d;
    }

    public final String getIncomingCallVerificationStatusCode() {
        return this.c;
    }

    public final String getPhoneNumber() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getPhoneNumber(), false);
        SafeParcelWriter.writeString(parcel, 2, getIncomingCallVerificationStatusCode(), false);
        SafeParcelWriter.writeString(parcel, 3, getErrorDetails(), false);
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
