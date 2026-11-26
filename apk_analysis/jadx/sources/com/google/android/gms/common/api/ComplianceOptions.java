package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class ComplianceOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ComplianceOptions> CREATOR;
    public static final ComplianceOptions zza;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;

    public static final class Builder {
        public int a = -1;
        public int b = -1;
        public int c = 0;
        public boolean d = true;

        public ComplianceOptions build() {
            return new ComplianceOptions(this.a, this.b, this.c, this.d);
        }

        public Builder setCallerProductId(int i) {
            this.a = i;
            return this;
        }

        public Builder setDataOwnerProductId(int i) {
            this.b = i;
            return this;
        }

        public Builder setIsUserData(boolean z) {
            this.d = z;
            return this;
        }

        public Builder setProcessingReason(int i) {
            this.c = i;
            return this;
        }
    }

    static {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setCallerProductId(-1);
        builderNewBuilder.setDataOwnerProductId(-1);
        builderNewBuilder.setProcessingReason(0);
        builderNewBuilder.setIsUserData(true);
        zza = builderNewBuilder.build();
        CREATOR = new zzc();
    }

    public ComplianceOptions(int i, int i2, int i3, boolean z) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ComplianceOptions)) {
            return false;
        }
        ComplianceOptions complianceOptions = (ComplianceOptions) obj;
        return this.b == complianceOptions.b && this.c == complianceOptions.c && this.d == complianceOptions.d && this.e == complianceOptions.e;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), Boolean.valueOf(this.e));
    }

    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setCallerProductId(this.b);
        builder.setDataOwnerProductId(this.c);
        builder.setProcessingReason(this.d);
        builder.setIsUserData(this.e);
        return builder;
    }

    public final String toString() {
        int i = this.b;
        int length = String.valueOf(i).length();
        int i2 = this.c;
        int length2 = String.valueOf(i2).length();
        int i3 = this.d;
        int length3 = String.valueOf(i3).length();
        boolean z = this.e;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 19 + length3 + 13 + String.valueOf(z).length() + 1);
        sb.append("ComplianceOptions{callerProductId=");
        sb.append(i);
        sb.append(", dataOwnerProductId=");
        sb.append(i2);
        sb.append(", processingReason=");
        sb.append(i3);
        sb.append(", isUserData=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeInt(parcel, 2, this.c);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.writeBoolean(parcel, 4, this.e);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public static final Builder newBuilder(Context context) {
        return newBuilder();
    }
}
