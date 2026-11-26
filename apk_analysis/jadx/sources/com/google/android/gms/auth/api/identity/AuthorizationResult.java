package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class AuthorizationResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthorizationResult> CREATOR = new zbc();
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final GoogleSignInAccount f;
    public final PendingIntent g;
    public final Bundle h;

    @Deprecated
    public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = (List) Preconditions.checkNotNull(list);
        this.f = googleSignInAccount;
        this.g = pendingIntent;
        this.h = null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationResult)) {
            return false;
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) obj;
        return Objects.equal(this.b, authorizationResult.b) && Objects.equal(this.c, authorizationResult.c) && Objects.equal(this.d, authorizationResult.d) && Objects.equal(this.e, authorizationResult.e) && Objects.equal(this.g, authorizationResult.g) && Objects.equal(this.f, authorizationResult.f) && Objects.equal(this.h, authorizationResult.h);
    }

    public String getAccessToken() {
        return this.c;
    }

    public List<String> getGrantedScopes() {
        return this.e;
    }

    public PendingIntent getPendingIntent() {
        return this.g;
    }

    public String getServerAuthCode() {
        return this.b;
    }

    public Bundle getTokenResponseParams() {
        return this.h;
    }

    public boolean hasResolution() {
        return this.g != null;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e, this.g, this.f, this.h);
    }

    public GoogleSignInAccount toGoogleSignInAccount() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getServerAuthCode(), false);
        SafeParcelWriter.writeString(parcel, 2, getAccessToken(), false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeStringList(parcel, 4, getGrantedScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, toGoogleSignInAccount(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPendingIntent(), i, false);
        SafeParcelWriter.writeBundle(parcel, 7, getTokenResponseParams(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent, Bundle bundle) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = (List) Preconditions.checkNotNull(list);
        this.f = googleSignInAccount;
        this.g = pendingIntent;
        this.h = bundle;
    }
}
