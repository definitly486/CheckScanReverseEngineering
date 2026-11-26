package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zbb();

    @Deprecated
    public final String b;
    public final GoogleSignInAccount c;

    @Deprecated
    public final String d;

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.c = googleSignInAccount;
        this.b = Preconditions.checkNotEmpty(str, "8.3 and 8.4 SDKs require non-null email");
        this.d = Preconditions.checkNotEmpty(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 4, this.b, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.c, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.d, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final GoogleSignInAccount zba() {
        return this.c;
    }
}
