package com.warefly.checkscan.tasks.presentation.adResult;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.kv2;
import defpackage.me0;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyBonusPoints implements Parcelable {
    public static final Parcelable.Creator<DailyBonusPoints> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public static final class a implements Parcelable.Creator<DailyBonusPoints> {
        @Override // android.os.Parcelable.Creator
        public final DailyBonusPoints createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DailyBonusPoints(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final DailyBonusPoints[] newArray(int i) {
            return new DailyBonusPoints[i];
        }
    }

    public DailyBonusPoints(String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DailyBonusPoints)) {
            return false;
        }
        DailyBonusPoints dailyBonusPoints = (DailyBonusPoints) obj;
        return aa4.e(this.b, dailyBonusPoints.b) && aa4.e(this.c, dailyBonusPoints.c) && aa4.e(this.d, dailyBonusPoints.d) && aa4.e(this.e, dailyBonusPoints.e) && aa4.e(this.f, dailyBonusPoints.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(this.b.hashCode() * 31, 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("DailyBonusPoints(prizeUrl=", this.b, ", title=", this.c, ", description=");
        kv2.c(sbD, this.d, ", badgeUrl=", this.e, ", buttonTitle=");
        return me0.d(sbD, this.f, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }
}
