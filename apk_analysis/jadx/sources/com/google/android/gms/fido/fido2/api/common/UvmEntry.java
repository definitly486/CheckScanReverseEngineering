package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class UvmEntry extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UvmEntry> CREATOR = new zzba();
    public final int b;
    public final short c;
    public final short d;

    public static final class Builder {
        public int a;
        public short b;
        public short c;

        public UvmEntry build() {
            return new UvmEntry(this.b, this.c, this.a);
        }

        public Builder setKeyProtectionType(short s) {
            this.b = s;
            return this;
        }

        public Builder setMatcherProtectionType(short s) {
            this.c = s;
            return this;
        }

        public Builder setUserVerificationMethod(int i) {
            this.a = i;
            return this;
        }
    }

    public UvmEntry(short s, short s2, int i) {
        this.b = i;
        this.c = s;
        this.d = s2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UvmEntry)) {
            return false;
        }
        UvmEntry uvmEntry = (UvmEntry) obj;
        return this.b == uvmEntry.b && this.c == uvmEntry.c && this.d == uvmEntry.d;
    }

    public short getKeyProtectionType() {
        return this.c;
    }

    public short getMatcherProtectionType() {
        return this.d;
    }

    public int getUserVerificationMethod() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Short.valueOf(this.c), Short.valueOf(this.d));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getUserVerificationMethod());
        SafeParcelWriter.writeShort(parcel, 2, getKeyProtectionType());
        SafeParcelWriter.writeShort(parcel, 3, getMatcherProtectionType());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
