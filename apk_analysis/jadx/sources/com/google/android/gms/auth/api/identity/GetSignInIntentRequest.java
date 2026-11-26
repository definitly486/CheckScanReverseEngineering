package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new zbk();
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final boolean f;
    public final int g;
    public final List h;

    public static final class Builder {
        public String a;
        public String b;
        public String c;
        public List d;
        public String e;
        public boolean f;
        public int g;

        public GetSignInIntentRequest build() {
            return new GetSignInIntentRequest(this.a, this.b, this.c, this.e, this.f, this.g, this.d);
        }

        public Builder filterByHostedDomain(String str) {
            this.b = str;
            return this;
        }

        public Builder setNonce(String str) {
            this.e = str;
            return this;
        }

        @Deprecated
        public Builder setRequestVerifiedPhoneNumber(boolean z) {
            this.f = z;
            return this;
        }

        public Builder setServerClientId(String str) {
            Preconditions.checkNotNull(str);
            this.a = str;
            return this;
        }

        public final Builder zba(String str) {
            this.c = str;
            return this;
        }

        public final Builder zbb(int i) {
            this.g = i;
            return this;
        }

        public final Builder zbc(List list) {
            this.d = list;
            return this;
        }
    }

    public GetSignInIntentRequest(String str, String str2, String str3, String str4, boolean z, int i, List list) {
        Preconditions.checkNotNull(str);
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = i;
        this.h = list;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder zba(GetSignInIntentRequest getSignInIntentRequest) {
        Preconditions.checkNotNull(getSignInIntentRequest);
        Builder builder = builder();
        builder.setServerClientId(getSignInIntentRequest.getServerClientId());
        builder.setNonce(getSignInIntentRequest.getNonce());
        builder.filterByHostedDomain(getSignInIntentRequest.getHostedDomainFilter());
        builder.setRequestVerifiedPhoneNumber(getSignInIntentRequest.f);
        builder.zbb(getSignInIntentRequest.g);
        builder.zbc(getSignInIntentRequest.h);
        String str = getSignInIntentRequest.d;
        if (str != null) {
            builder.zba(str);
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return Objects.equal(this.b, getSignInIntentRequest.b) && Objects.equal(this.e, getSignInIntentRequest.e) && Objects.equal(this.c, getSignInIntentRequest.c) && Objects.equal(Boolean.valueOf(this.f), Boolean.valueOf(getSignInIntentRequest.f)) && this.g == getSignInIntentRequest.g && Objects.equal(this.h, getSignInIntentRequest.h);
    }

    public String getHostedDomainFilter() {
        return this.c;
    }

    public String getNonce() {
        return this.e;
    }

    public String getServerClientId() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.e, Boolean.valueOf(this.f), Integer.valueOf(this.g), this.h);
    }

    @Deprecated
    public boolean requestVerifiedPhoneNumber() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 2, getHostedDomainFilter(), false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.writeString(parcel, 4, getNonce(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, requestVerifiedPhoneNumber());
        SafeParcelWriter.writeInt(parcel, 6, this.g);
        SafeParcelWriter.writeTypedList(parcel, 7, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
