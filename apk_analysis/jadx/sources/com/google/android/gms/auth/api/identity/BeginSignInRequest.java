package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new zbd();
    public final PasswordRequestOptions b;
    public final GoogleIdTokenRequestOptions c;
    public final String d;
    public final boolean e;
    public final int f;
    public final PasskeysRequestOptions g;
    public final PasskeyJsonRequestOptions h;
    public final boolean i;

    @Deprecated
    public static final class Builder {
        public PasswordRequestOptions a;
        public GoogleIdTokenRequestOptions b;
        public PasskeysRequestOptions c;
        public PasskeyJsonRequestOptions d;
        public String e;
        public boolean f;
        public int g;
        public boolean h;

        public Builder() {
            PasswordRequestOptions.Builder builder = PasswordRequestOptions.builder();
            builder.setSupported(false);
            this.a = builder.build();
            GoogleIdTokenRequestOptions.Builder builder2 = GoogleIdTokenRequestOptions.builder();
            builder2.setSupported(false);
            this.b = builder2.build();
            PasskeysRequestOptions.Builder builder3 = PasskeysRequestOptions.builder();
            builder3.setSupported(false);
            this.c = builder3.build();
            PasskeyJsonRequestOptions.Builder builder4 = PasskeyJsonRequestOptions.builder();
            builder4.setSupported(false);
            this.d = builder4.build();
        }

        public BeginSignInRequest build() {
            return new BeginSignInRequest(this.a, this.b, this.e, this.f, this.g, this.c, this.d, this.h);
        }

        public Builder setAutoSelectEnabled(boolean z) {
            this.f = z;
            return this;
        }

        public Builder setGoogleIdTokenRequestOptions(GoogleIdTokenRequestOptions googleIdTokenRequestOptions) {
            this.b = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
            return this;
        }

        public Builder setPasskeyJsonSignInRequestOptions(PasskeyJsonRequestOptions passkeyJsonRequestOptions) {
            this.d = (PasskeyJsonRequestOptions) Preconditions.checkNotNull(passkeyJsonRequestOptions);
            return this;
        }

        @Deprecated
        public Builder setPasskeysSignInRequestOptions(PasskeysRequestOptions passkeysRequestOptions) {
            this.c = (PasskeysRequestOptions) Preconditions.checkNotNull(passkeysRequestOptions);
            return this;
        }

        public Builder setPasswordRequestOptions(PasswordRequestOptions passwordRequestOptions) {
            this.a = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
            return this;
        }

        public Builder setPreferImmediatelyAvailableCredentials(boolean z) {
            this.h = z;
            return this;
        }

        public final Builder zba(String str) {
            this.e = str;
            return this;
        }

        public final Builder zbb(int i) {
            this.g = i;
            return this;
        }
    }

    @Deprecated
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbl();
        public final boolean b;
        public final String c;
        public final String d;
        public final boolean e;
        public final String f;
        public final ArrayList g;
        public final boolean h;
        public final List i;
        public final String j;

        public static final class Builder {
            public boolean a = false;
            public String b = null;
            public String c = null;
            public boolean d = true;
            public String e = null;
            public List f = null;
            public boolean g = false;

            public Builder associateLinkedAccounts(String str, List<String> list) {
                this.e = (String) Preconditions.checkNotNull(str, "linkedServiceId must be provided if you want to associate linked accounts.");
                this.f = list;
                return this;
            }

            public GoogleIdTokenRequestOptions build() {
                return new GoogleIdTokenRequestOptions(this.a, this.b, this.c, this.d, this.e, this.f, this.g, null, null);
            }

            public Builder setFilterByAuthorizedAccounts(boolean z) {
                this.d = z;
                return this;
            }

            public Builder setNonce(String str) {
                this.c = str;
                return this;
            }

            @Deprecated
            public Builder setRequestVerifiedPhoneNumber(boolean z) {
                this.g = z;
                return this;
            }

            public Builder setServerClientId(String str) {
                this.b = Preconditions.checkNotEmpty(str);
                return this;
            }

            public Builder setSupported(boolean z) {
                this.a = z;
                return this;
            }
        }

        public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, List list, boolean z3, ArrayList arrayList, String str4) {
            boolean z4 = true;
            if (z2 && z3) {
                z4 = false;
            }
            Preconditions.checkArgument(z4, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.b = z;
            if (z) {
                Preconditions.checkNotNull(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.c = str;
            this.d = str2;
            this.e = z2;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList2 = null;
            if (list != null && !list.isEmpty()) {
                arrayList2 = new ArrayList(list);
                Collections.sort(arrayList2);
            }
            this.g = arrayList2;
            this.f = str3;
            this.h = z3;
            this.i = arrayList;
            this.j = str4;
        }

        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.b == googleIdTokenRequestOptions.b && Objects.equal(this.c, googleIdTokenRequestOptions.c) && Objects.equal(this.d, googleIdTokenRequestOptions.d) && this.e == googleIdTokenRequestOptions.e && Objects.equal(this.f, googleIdTokenRequestOptions.f) && Objects.equal(this.g, googleIdTokenRequestOptions.g) && this.h == googleIdTokenRequestOptions.h && Objects.equal(this.i, googleIdTokenRequestOptions.i) && Objects.equal(this.j, googleIdTokenRequestOptions.j);
        }

        public boolean filterByAuthorizedAccounts() {
            return this.e;
        }

        public List<String> getIdTokenDepositionScopes() {
            return this.g;
        }

        public String getLinkedServiceId() {
            return this.f;
        }

        public String getNonce() {
            return this.d;
        }

        public String getServerClientId() {
            return this.c;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.b), this.c, this.d, Boolean.valueOf(this.e), this.f, this.g, Boolean.valueOf(this.h), this.i, this.j);
        }

        public boolean isSupported() {
            return this.b;
        }

        @Deprecated
        public boolean requestVerifiedPhoneNumber() {
            return this.h;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeString(parcel, 2, getServerClientId(), false);
            SafeParcelWriter.writeString(parcel, 3, getNonce(), false);
            SafeParcelWriter.writeBoolean(parcel, 4, filterByAuthorizedAccounts());
            SafeParcelWriter.writeString(parcel, 5, getLinkedServiceId(), false);
            SafeParcelWriter.writeStringList(parcel, 6, getIdTokenDepositionScopes(), false);
            SafeParcelWriter.writeBoolean(parcel, 7, requestVerifiedPhoneNumber());
            SafeParcelWriter.writeTypedList(parcel, 8, this.i, false);
            SafeParcelWriter.writeString(parcel, 9, this.j, false);
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }
    }

    @Deprecated
    public static final class PasskeyJsonRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasskeyJsonRequestOptions> CREATOR = new zbm();
        public final boolean b;
        public final String c;

        public static final class Builder {
            public boolean a = false;
            public String b;

            public PasskeyJsonRequestOptions build() {
                return new PasskeyJsonRequestOptions(this.a, this.b);
            }

            public Builder setRequestJson(String str) {
                this.b = str;
                return this;
            }

            public Builder setSupported(boolean z) {
                this.a = z;
                return this;
            }
        }

        public PasskeyJsonRequestOptions(boolean z, String str) {
            if (z) {
                Preconditions.checkNotNull(str);
            }
            this.b = z;
            this.c = str;
        }

        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeyJsonRequestOptions)) {
                return false;
            }
            PasskeyJsonRequestOptions passkeyJsonRequestOptions = (PasskeyJsonRequestOptions) obj;
            return this.b == passkeyJsonRequestOptions.b && Objects.equal(this.c, passkeyJsonRequestOptions.c);
        }

        public String getRequestJson() {
            return this.c;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.b), this.c);
        }

        public boolean isSupported() {
            return this.b;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeString(parcel, 2, getRequestJson(), false);
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }
    }

    @Deprecated
    public static final class PasskeysRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasskeysRequestOptions> CREATOR = new zbn();
        public final boolean b;
        public final byte[] c;
        public final String d;

        public static final class Builder {
            public boolean a = false;
            public byte[] b;
            public String c;

            public PasskeysRequestOptions build() {
                return new PasskeysRequestOptions(this.a, this.b, this.c);
            }

            public Builder setChallenge(byte[] bArr) {
                this.b = bArr;
                return this;
            }

            public Builder setRpId(String str) {
                this.c = str;
                return this;
            }

            public Builder setSupported(boolean z) {
                this.a = z;
                return this;
            }
        }

        public PasskeysRequestOptions(boolean z, byte[] bArr, String str) {
            if (z) {
                Preconditions.checkNotNull(bArr);
                Preconditions.checkNotNull(str);
            }
            this.b = z;
            this.c = bArr;
            this.d = str;
        }

        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeysRequestOptions)) {
                return false;
            }
            PasskeysRequestOptions passkeysRequestOptions = (PasskeysRequestOptions) obj;
            return this.b == passkeysRequestOptions.b && Arrays.equals(this.c, passkeysRequestOptions.c) && java.util.Objects.equals(this.d, passkeysRequestOptions.d);
        }

        public byte[] getChallenge() {
            return this.c;
        }

        public String getRpId() {
            return this.d;
        }

        public int hashCode() {
            return Arrays.hashCode(this.c) + (java.util.Objects.hash(Boolean.valueOf(this.b), this.d) * 31);
        }

        public boolean isSupported() {
            return this.b;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
            SafeParcelWriter.writeString(parcel, 3, getRpId(), false);
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }
    }

    @Deprecated
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new zbo();
        public final boolean b;

        public static final class Builder {
            public boolean a = false;

            public PasswordRequestOptions build() {
                return new PasswordRequestOptions(this.a);
            }

            public Builder setSupported(boolean z) {
                this.a = z;
                return this;
            }
        }

        public PasswordRequestOptions(boolean z) {
            this.b = z;
        }

        public static Builder builder() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.b == ((PasswordRequestOptions) obj).b;
        }

        public int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.b));
        }

        public boolean isSupported() {
            return this.b;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z, int i, PasskeysRequestOptions passkeysRequestOptions, PasskeyJsonRequestOptions passkeyJsonRequestOptions, boolean z2) {
        this.b = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
        this.c = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
        this.d = str;
        this.e = z;
        this.f = i;
        if (passkeysRequestOptions == null) {
            PasskeysRequestOptions.Builder builder = PasskeysRequestOptions.builder();
            builder.setSupported(false);
            passkeysRequestOptions = builder.build();
        }
        this.g = passkeysRequestOptions;
        if (passkeyJsonRequestOptions == null) {
            PasskeyJsonRequestOptions.Builder builder2 = PasskeyJsonRequestOptions.builder();
            builder2.setSupported(false);
            passkeyJsonRequestOptions = builder2.build();
        }
        this.h = passkeyJsonRequestOptions;
        this.i = z2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder zba(BeginSignInRequest beginSignInRequest) {
        Preconditions.checkNotNull(beginSignInRequest);
        Builder builder = builder();
        builder.setGoogleIdTokenRequestOptions(beginSignInRequest.getGoogleIdTokenRequestOptions());
        builder.setPasswordRequestOptions(beginSignInRequest.getPasswordRequestOptions());
        builder.setPasskeysSignInRequestOptions(beginSignInRequest.getPasskeysRequestOptions());
        builder.setPasskeyJsonSignInRequestOptions(beginSignInRequest.getPasskeyJsonRequestOptions());
        builder.setAutoSelectEnabled(beginSignInRequest.e);
        builder.zbb(beginSignInRequest.f);
        builder.setPreferImmediatelyAvailableCredentials(beginSignInRequest.i);
        String str = beginSignInRequest.d;
        if (str != null) {
            builder.zba(str);
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return Objects.equal(this.b, beginSignInRequest.b) && Objects.equal(this.c, beginSignInRequest.c) && Objects.equal(this.g, beginSignInRequest.g) && Objects.equal(this.h, beginSignInRequest.h) && Objects.equal(this.d, beginSignInRequest.d) && this.e == beginSignInRequest.e && this.f == beginSignInRequest.f && this.i == beginSignInRequest.i;
    }

    public GoogleIdTokenRequestOptions getGoogleIdTokenRequestOptions() {
        return this.c;
    }

    public PasskeyJsonRequestOptions getPasskeyJsonRequestOptions() {
        return this.h;
    }

    public PasskeysRequestOptions getPasskeysRequestOptions() {
        return this.g;
    }

    public PasswordRequestOptions getPasswordRequestOptions() {
        return this.b;
    }

    public boolean getPreferImmediatelyAvailableCredentials() {
        return this.i;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.g, this.h, this.d, Boolean.valueOf(this.e), Integer.valueOf(this.f), Boolean.valueOf(this.i));
    }

    public boolean isAutoSelectEnabled() {
        return this.e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getPasswordRequestOptions(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isAutoSelectEnabled());
        SafeParcelWriter.writeInt(parcel, 5, this.f);
        SafeParcelWriter.writeParcelable(parcel, 6, getPasskeysRequestOptions(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, getPasskeyJsonRequestOptions(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 8, getPreferImmediatelyAvailableCredentials());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
