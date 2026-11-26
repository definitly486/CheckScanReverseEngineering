package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.hoa;
import defpackage.kh;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiMetadata> CREATOR = hoa.a;
    public static final ApiMetadata e = newBuilder().build();
    public static final ApiMetadata zza;
    public final ComplianceOptions b;
    public final boolean c;
    public boolean d;

    public static final class Builder {
        public ComplianceOptions a;
        public boolean b = false;
        public boolean c;

        public ApiMetadata build() {
            ApiMetadata apiMetadata = new ApiMetadata(this.a, this.b);
            apiMetadata.d = this.c;
            return apiMetadata;
        }

        public Builder setCallbackSupportEnabled(boolean z) {
            this.b = z;
            return this;
        }

        public Builder setComplianceOptions(ComplianceOptions complianceOptions) {
            this.a = complianceOptions;
            return this;
        }
    }

    static {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.c = true;
        zza = builderNewBuilder.build();
    }

    public ApiMetadata(ComplianceOptions complianceOptions, boolean z) {
        this.b = complianceOptions;
        this.c = z;
    }

    public static final ApiMetadata fromComplianceOptions(ComplianceOptions complianceOptions) {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setComplianceOptions(complianceOptions);
        return builderNewBuilder.build();
    }

    public static final ApiMetadata getEmptyInstance() {
        return e;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ApiMetadata)) {
            return false;
        }
        ApiMetadata apiMetadata = (ApiMetadata) obj;
        return Objects.equal(this.b, apiMetadata.b) && this.d == apiMetadata.d && this.c == apiMetadata.c;
    }

    public final int hashCode() {
        return Objects.hashCode(this.b, Boolean.valueOf(this.d), Boolean.valueOf(this.c));
    }

    public Builder toBuilder() {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setComplianceOptions(this.b);
        builderNewBuilder.setCallbackSupportEnabled(this.c);
        builderNewBuilder.c = this.d;
        return builderNewBuilder;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.b);
        return kh.c(new StringBuilder(strValueOf.length() + 31), "ApiMetadata(complianceOptions=", strValueOf, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.d) {
            parcel.setDataPosition(parcel.dataPosition() - 4);
            parcel.setDataSize(parcel.dataSize() - 4);
            return;
        }
        parcel.writeInt(-204102970);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.c);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
