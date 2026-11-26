package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class ClearTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ClearTokenRequest> CREATOR = new zbh();
    public final String b;
    public final String c;

    public static final class Builder {
        public String a;
        public String b;

        public Builder() {
            throw null;
        }

        public ClearTokenRequest build() {
            return new ClearTokenRequest(this.a, this.b);
        }

        public Builder setToken(String str) {
            this.a = str;
            return this;
        }

        public final Builder zba(String str) {
            this.b = str;
            return this;
        }
    }

    public ClearTokenRequest(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ClearTokenRequest) {
            ClearTokenRequest clearTokenRequest = (ClearTokenRequest) obj;
            if (Objects.equal(this.b, clearTokenRequest.b) && Objects.equal(this.c, clearTokenRequest.c)) {
                return true;
            }
        }
        return false;
    }

    public String getToken() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getToken(), false);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final Builder zba() {
        Builder builder = new Builder();
        builder.a = this.b;
        builder.b = this.c;
        return builder;
    }
}
