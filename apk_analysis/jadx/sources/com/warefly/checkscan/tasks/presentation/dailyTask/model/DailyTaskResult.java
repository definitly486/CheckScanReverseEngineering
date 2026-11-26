package com.warefly.checkscan.tasks.presentation.dailyTask.model;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.n2;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class DailyTaskResult implements Parcelable {
    public static final Parcelable.Creator<DailyTaskResult> CREATOR = new a();
    public final String b;
    public final String c;
    public final String d;
    public final Button e;
    public final Button f;

    public static final class Button implements Parcelable {
        public static final Parcelable.Creator<Button> CREATOR = new a();
        public final String b;
        public final String c;

        public static final class a implements Parcelable.Creator<Button> {
            @Override // android.os.Parcelable.Creator
            public final Button createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Button(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Button[] newArray(int i) {
                return new Button[i];
            }
        }

        public Button(String str, String str2) {
            str.getClass();
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
            if (!(obj instanceof Button)) {
                return false;
            }
            Button button = (Button) obj;
            return aa4.e(this.b, button.b) && aa4.e(this.c, button.c);
        }

        public final int hashCode() {
            int iHashCode = this.b.hashCode() * 31;
            String str = this.c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("Button(title=", this.b, ", deeplink=", this.c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.b);
            parcel.writeString(this.c);
        }
    }

    public static final class a implements Parcelable.Creator<DailyTaskResult> {
        @Override // android.os.Parcelable.Creator
        public final DailyTaskResult createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DailyTaskResult(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Button.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? Button.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final DailyTaskResult[] newArray(int i) {
            return new DailyTaskResult[i];
        }
    }

    public DailyTaskResult(String str, String str2, String str3, Button button, Button button2) {
        str.getClass();
        str3.getClass();
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = button;
        this.f = button2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DailyTaskResult)) {
            return false;
        }
        DailyTaskResult dailyTaskResult = (DailyTaskResult) obj;
        return aa4.e(this.b, dailyTaskResult.b) && aa4.e(this.c, dailyTaskResult.c) && aa4.e(this.d, dailyTaskResult.d) && aa4.e(this.e, dailyTaskResult.e) && aa4.e(this.f, dailyTaskResult.f);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.c;
        int iB = zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        Button button = this.e;
        int iHashCode2 = (iB + (button == null ? 0 : button.hashCode())) * 31;
        Button button2 = this.f;
        return iHashCode2 + (button2 != null ? button2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("DailyTaskResult(title=", this.b, ", description=", this.c, ", imgUrl=");
        sbD.append(this.d);
        sbD.append(", actionButton=");
        sbD.append(this.e);
        sbD.append(", secondButton=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        Button button = this.e;
        if (button == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            button.writeToParcel(parcel, i);
        }
        Button button2 = this.f;
        if (button2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            button2.writeToParcel(parcel, i);
        }
    }
}
