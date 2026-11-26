package com.warefly.checkscan.presentation.profile.reason;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.l2;

/* JADX INFO: loaded from: classes5.dex */
public interface ProfileReason extends Parcelable {

    public static final class ChangeCity implements ProfileReason {
        public static final ChangeCity b = new ChangeCity();
        public static final Parcelable.Creator<ChangeCity> CREATOR = new a();

        public static final class a implements Parcelable.Creator<ChangeCity> {
            @Override // android.os.Parcelable.Creator
            public final ChangeCity createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return ChangeCity.b;
            }

            @Override // android.os.Parcelable.Creator
            public final ChangeCity[] newArray(int i) {
                return new ChangeCity[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class ChangeEmail implements ProfileReason {
        public static final ChangeEmail b = new ChangeEmail();
        public static final Parcelable.Creator<ChangeEmail> CREATOR = new a();

        public static final class a implements Parcelable.Creator<ChangeEmail> {
            @Override // android.os.Parcelable.Creator
            public final ChangeEmail createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return ChangeEmail.b;
            }

            @Override // android.os.Parcelable.Creator
            public final ChangeEmail[] newArray(int i) {
                return new ChangeEmail[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class ChangePhone implements ProfileReason {
        public static final ChangePhone b = new ChangePhone();
        public static final Parcelable.Creator<ChangePhone> CREATOR = new a();

        public static final class a implements Parcelable.Creator<ChangePhone> {
            @Override // android.os.Parcelable.Creator
            public final ChangePhone createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return ChangePhone.b;
            }

            @Override // android.os.Parcelable.Creator
            public final ChangePhone[] newArray(int i) {
                return new ChangePhone[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class MainProfile implements ProfileReason {
        public static final MainProfile b = new MainProfile();
        public static final Parcelable.Creator<MainProfile> CREATOR = new a();

        public static final class a implements Parcelable.Creator<MainProfile> {
            @Override // android.os.Parcelable.Creator
            public final MainProfile createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return MainProfile.b;
            }

            @Override // android.os.Parcelable.Creator
            public final MainProfile[] newArray(int i) {
                return new MainProfile[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class Notifications implements ProfileReason {
        public static final Notifications b = new Notifications();
        public static final Parcelable.Creator<Notifications> CREATOR = new a();

        public static final class a implements Parcelable.Creator<Notifications> {
            @Override // android.os.Parcelable.Creator
            public final Notifications createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Notifications.b;
            }

            @Override // android.os.Parcelable.Creator
            public final Notifications[] newArray(int i) {
                return new Notifications[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class FillMyData implements ProfileReason {
        public static final Parcelable.Creator<FillMyData> CREATOR = new a();
        public final boolean b;

        public static final class a implements Parcelable.Creator<FillMyData> {
            @Override // android.os.Parcelable.Creator
            public final FillMyData createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new FillMyData(parcel.readInt() != 0);
            }

            @Override // android.os.Parcelable.Creator
            public final FillMyData[] newArray(int i) {
                return new FillMyData[i];
            }
        }

        public FillMyData(boolean z) {
            this.b = z;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FillMyData) && this.b == ((FillMyData) obj).b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b);
        }

        public final String toString() {
            return l2.c("FillMyData(afterOnboarding=", ")", this.b);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b ? 1 : 0);
        }

        public FillMyData() {
            this(false);
        }
    }
}
