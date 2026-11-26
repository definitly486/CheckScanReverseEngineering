package com.warefly.checkscan.tasks.presentation.dailyTask.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.dg;
import defpackage.m2;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskNoAttempts implements Parcelable {
    public static final Parcelable.Creator<DailyTaskNoAttempts> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public static final class a implements Parcelable.Creator<DailyTaskNoAttempts> {
        @Override // android.os.Parcelable.Creator
        public final DailyTaskNoAttempts createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DailyTaskNoAttempts(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final DailyTaskNoAttempts[] newArray(int i) {
            return new DailyTaskNoAttempts[i];
        }
    }

    public DailyTaskNoAttempts(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DailyTaskNoAttempts)) {
            return false;
        }
        DailyTaskNoAttempts dailyTaskNoAttempts = (DailyTaskNoAttempts) obj;
        return aa4.e(this.b, dailyTaskNoAttempts.b) && aa4.e(this.c, dailyTaskNoAttempts.c) && aa4.e(this.d, dailyTaskNoAttempts.d) && aa4.e(this.e, dailyTaskNoAttempts.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(this.b.hashCode() * 31, 31, this.c), 31, this.d);
    }

    public final String toString() {
        return dg.c(ad2.d("DailyTaskNoAttempts(imageUrl=", this.b, ", title=", this.c, ", description="), this.d, ", btnText=", this.e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
    }
}
