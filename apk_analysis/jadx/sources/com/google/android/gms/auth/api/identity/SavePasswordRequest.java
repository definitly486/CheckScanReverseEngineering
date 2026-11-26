package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new zbs();
    public final SignInPassword b;
    public final String c;
    public final int d;

    @Deprecated
    public static final class Builder {
        public SignInPassword a;
        public String b;
        public int c;

        public SavePasswordRequest build() {
            return new SavePasswordRequest(this.a, this.b, this.c);
        }

        public Builder setSignInPassword(SignInPassword signInPassword) {
            this.a = signInPassword;
            return this;
        }

        public final Builder zba(int i) {
            this.c = i;
            return this;
        }

        public final Builder zbb(String str) {
            this.b = str;
            return this;
        }
    }

    public SavePasswordRequest(SignInPassword signInPassword, String str, int i) {
        this.b = (SignInPassword) Preconditions.checkNotNull(signInPassword);
        this.c = str;
        this.d = i;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder zba(SavePasswordRequest savePasswordRequest) {
        Preconditions.checkNotNull(savePasswordRequest);
        Builder builder = builder();
        builder.setSignInPassword(savePasswordRequest.getSignInPassword());
        builder.zba(savePasswordRequest.d);
        String str = savePasswordRequest.c;
        if (str != null) {
            builder.zbb(str);
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return Objects.equal(this.b, savePasswordRequest.b) && Objects.equal(this.c, savePasswordRequest.c) && this.d == savePasswordRequest.d;
    }

    public SignInPassword getSignInPassword() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getSignInPassword(), i, false);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeInt(parcel, 3, this.d);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
