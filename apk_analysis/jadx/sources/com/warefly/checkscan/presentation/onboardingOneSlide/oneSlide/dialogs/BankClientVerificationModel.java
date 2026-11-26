package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.me0;
import defpackage.zg;

/* JADX INFO: loaded from: classes5.dex */
public final class BankClientVerificationModel implements Parcelable {
    public static final Parcelable.Creator<BankClientVerificationModel> CREATOR = new a();
    public final String b;
    public final String c;
    public final Button d;
    public final Button e;

    public static final class Button implements Parcelable {
        public static final Parcelable.Creator<Button> CREATOR = new a();
        public final String b;
        public final String c;
        public final String d;

        public static final class a implements Parcelable.Creator<Button> {
            @Override // android.os.Parcelable.Creator
            public final Button createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Button(parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Button[] newArray(int i) {
                return new Button[i];
            }
        }

        public Button(String str, String str2, String str3) {
            str.getClass();
            this.b = str;
            this.c = str2;
            this.d = str3;
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
            return aa4.e(this.b, button.b) && aa4.e(this.c, button.c) && aa4.e(this.d, button.d);
        }

        public final int hashCode() {
            int iHashCode = this.b.hashCode() * 31;
            String str = this.c;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.d;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return me0.d(ad2.d("Button(title=", this.b, ", deeplink=", this.c, ", event="), this.d, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.b);
            parcel.writeString(this.c);
            parcel.writeString(this.d);
        }
    }

    public static final class a implements Parcelable.Creator<BankClientVerificationModel> {
        @Override // android.os.Parcelable.Creator
        public final BankClientVerificationModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            Parcelable.Creator<Button> creator = Button.CREATOR;
            return new BankClientVerificationModel(string, string2, creator.createFromParcel(parcel), creator.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final BankClientVerificationModel[] newArray(int i) {
            return new BankClientVerificationModel[i];
        }
    }

    public BankClientVerificationModel(String str, String str2, Button button, Button button2) {
        str.getClass();
        str2.getClass();
        button.getClass();
        button2.getClass();
        this.b = str;
        this.c = str2;
        this.d = button;
        this.e = button2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BankClientVerificationModel)) {
            return false;
        }
        BankClientVerificationModel bankClientVerificationModel = (BankClientVerificationModel) obj;
        return aa4.e(this.b, bankClientVerificationModel.b) && aa4.e(this.c, bankClientVerificationModel.c) && aa4.e(this.d, bankClientVerificationModel.d) && aa4.e(this.e, bankClientVerificationModel.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + zg.b(this.b.hashCode() * 31, 31, this.c)) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("BankClientVerificationModel(title=", this.b, ", logoUrl=", this.c, ", primaryButton=");
        sbD.append(this.d);
        sbD.append(", secondaryButton=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        this.d.writeToParcel(parcel, i);
        this.e.writeToParcel(parcel, i);
    }
}
