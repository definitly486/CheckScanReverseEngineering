package com.warefly.checkscan.shared.universalWebView.presentation;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.tg;

/* JADX INFO: loaded from: classes5.dex */
public final class UniversalWebViewArgs implements Parcelable {
    public static final Parcelable.Creator<UniversalWebViewArgs> CREATOR = new a();
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;

    public static final class a implements Parcelable.Creator<UniversalWebViewArgs> {
        @Override // android.os.Parcelable.Creator
        public final UniversalWebViewArgs createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new UniversalWebViewArgs(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final UniversalWebViewArgs[] newArray(int i) {
            return new UniversalWebViewArgs[i];
        }
    }

    public UniversalWebViewArgs(String str, String str2, boolean z, boolean z2) {
        str.getClass();
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UniversalWebViewArgs)) {
            return false;
        }
        UniversalWebViewArgs universalWebViewArgs = (UniversalWebViewArgs) obj;
        return aa4.e(this.b, universalWebViewArgs.b) && aa4.e(this.c, universalWebViewArgs.c) && this.d == universalWebViewArgs.d && this.e == universalWebViewArgs.e;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.c;
        return Boolean.hashCode(this.e) + tg.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("UniversalWebViewArgs(url=", this.b, ", title=", this.c, ", isRefreshEnabled=");
        sbD.append(this.d);
        sbD.append(", isToolbarVisible=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d ? 1 : 0);
        parcel.writeInt(this.e ? 1 : 0);
    }
}
