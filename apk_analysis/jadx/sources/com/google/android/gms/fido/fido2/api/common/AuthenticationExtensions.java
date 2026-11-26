package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new zzd();
    public final FidoAppIdExtension b;
    public final zzs c;
    public final UserVerificationMethodExtension d;
    public final zzz e;
    public final zzab f;
    public final zzad g;
    public final zzu h;
    public final zzag i;
    public final GoogleThirdPartyPaymentExtension j;
    public final zzai k;

    public AuthenticationExtensions(FidoAppIdExtension fidoAppIdExtension, zzs zzsVar, UserVerificationMethodExtension userVerificationMethodExtension, zzz zzzVar, zzab zzabVar, zzad zzadVar, zzu zzuVar, zzag zzagVar, GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension, zzai zzaiVar) {
        this.b = fidoAppIdExtension;
        this.d = userVerificationMethodExtension;
        this.c = zzsVar;
        this.e = zzzVar;
        this.f = zzabVar;
        this.g = zzadVar;
        this.h = zzuVar;
        this.i = zzagVar;
        this.j = googleThirdPartyPaymentExtension;
        this.k = zzaiVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensions)) {
            return false;
        }
        AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
        return Objects.equal(this.b, authenticationExtensions.b) && Objects.equal(this.c, authenticationExtensions.c) && Objects.equal(this.d, authenticationExtensions.d) && Objects.equal(this.e, authenticationExtensions.e) && Objects.equal(this.f, authenticationExtensions.f) && Objects.equal(this.g, authenticationExtensions.g) && Objects.equal(this.h, authenticationExtensions.h) && Objects.equal(this.i, authenticationExtensions.i) && Objects.equal(this.j, authenticationExtensions.j) && Objects.equal(this.k, authenticationExtensions.k);
    }

    public FidoAppIdExtension getFidoAppIdExtension() {
        return this.b;
    }

    public UserVerificationMethodExtension getUserVerificationMethodExtension() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getFidoAppIdExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getUserVerificationMethodExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.e, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.k, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzs zza() {
        return this.c;
    }

    public final zzu zzb() {
        return this.h;
    }

    public final zzz zzc() {
        return this.e;
    }

    public final zzab zzd() {
        return this.f;
    }

    public final zzad zze() {
        return this.g;
    }

    public final GoogleThirdPartyPaymentExtension zzf() {
        return this.j;
    }

    public final zzag zzg() {
        return this.i;
    }

    public final zzai zzh() {
        return this.k;
    }

    public static final class Builder {
        public FidoAppIdExtension a;
        public UserVerificationMethodExtension b;
        public final zzs c;
        public final zzz d;
        public final zzab e;
        public final zzad f;
        public final zzu g;
        public final zzag h;
        public GoogleThirdPartyPaymentExtension i;
        public final zzai j;

        public Builder(AuthenticationExtensions authenticationExtensions) {
            if (authenticationExtensions != null) {
                this.a = authenticationExtensions.getFidoAppIdExtension();
                this.b = authenticationExtensions.getUserVerificationMethodExtension();
                this.c = authenticationExtensions.zza();
                this.d = authenticationExtensions.zzc();
                this.e = authenticationExtensions.zzd();
                this.f = authenticationExtensions.zze();
                this.g = authenticationExtensions.zzb();
                this.h = authenticationExtensions.zzg();
                this.i = authenticationExtensions.zzf();
                this.j = authenticationExtensions.zzh();
            }
        }

        public AuthenticationExtensions build() {
            return new AuthenticationExtensions(this.a, this.c, this.b, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }

        public Builder setFido2Extension(FidoAppIdExtension fidoAppIdExtension) {
            this.a = fidoAppIdExtension;
            return this;
        }

        public Builder setGoogleThirdPartyPaymentExtension(GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension) {
            this.i = googleThirdPartyPaymentExtension;
            return this;
        }

        public Builder setUserVerificationMethodExtension(UserVerificationMethodExtension userVerificationMethodExtension) {
            this.b = userVerificationMethodExtension;
            return this;
        }

        public Builder() {
        }
    }
}
