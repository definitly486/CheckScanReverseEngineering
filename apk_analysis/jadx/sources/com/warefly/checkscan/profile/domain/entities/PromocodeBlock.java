package com.warefly.checkscan.profile.domain.entities;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.n2;

/* JADX INFO: loaded from: classes5.dex */
public final class PromocodeBlock implements Parcelable {
    public static final Parcelable.Creator<PromocodeBlock> CREATOR = new a();
    public final String b;
    public final String c;

    public static final class a implements Parcelable.Creator<PromocodeBlock> {
        @Override // android.os.Parcelable.Creator
        public final PromocodeBlock createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PromocodeBlock(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final PromocodeBlock[] newArray(int i) {
            return new PromocodeBlock[i];
        }
    }

    public PromocodeBlock(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.b = str;
        this.c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PromocodeBlock)) {
            return false;
        }
        PromocodeBlock promocodeBlock = (PromocodeBlock) obj;
        return aa4.e(this.b, promocodeBlock.b) && aa4.e(this.c, promocodeBlock.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("PromocodeBlock(title=", this.b, ", buttonTitle=", this.c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }
}
