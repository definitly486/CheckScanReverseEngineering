package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new zbu();
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Uri f;
    public final String g;
    public final String h;
    public final String i;
    public final PublicKeyCredential j;

    public SignInCredential(String str, String str2, String str3, String str4, Uri uri, String str5, String str6, String str7, PublicKeyCredential publicKeyCredential) {
        this.b = (String) Preconditions.checkNotNull(str);
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = uri;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = publicKeyCredential;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return Objects.equal(this.b, signInCredential.b) && Objects.equal(this.c, signInCredential.c) && Objects.equal(this.d, signInCredential.d) && Objects.equal(this.e, signInCredential.e) && Objects.equal(this.f, signInCredential.f) && Objects.equal(this.g, signInCredential.g) && Objects.equal(this.h, signInCredential.h) && Objects.equal(this.i, signInCredential.i) && Objects.equal(this.j, signInCredential.j);
    }

    public String getDisplayName() {
        return this.c;
    }

    public String getFamilyName() {
        return this.e;
    }

    public String getGivenName() {
        return this.d;
    }

    public String getGoogleIdToken() {
        return this.h;
    }

    public String getId() {
        return this.b;
    }

    public String getPassword() {
        return this.g;
    }

    @Deprecated
    public String getPhoneNumber() {
        return this.i;
    }

    public Uri getProfilePictureUri() {
        return this.f;
    }

    public PublicKeyCredential getPublicKeyCredential() {
        return this.j;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getId(), false);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 3, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 4, getFamilyName(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getProfilePictureUri(), i, false);
        SafeParcelWriter.writeString(parcel, 6, getPassword(), false);
        SafeParcelWriter.writeString(parcel, 7, getGoogleIdToken(), false);
        SafeParcelWriter.writeString(parcel, 8, getPhoneNumber(), false);
        SafeParcelWriter.writeParcelable(parcel, 9, getPublicKeyCredential(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
