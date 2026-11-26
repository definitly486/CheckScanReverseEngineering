package com.warefly.checkscan.auth.presentation.flow;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.me0;
import defpackage.p2;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public interface AuthReason extends Parcelable {

    public static final class AddEmail implements AuthReason {
        public static final AddEmail b = new AddEmail();
        public static final Parcelable.Creator<AddEmail> CREATOR = new a();

        public static final class a implements Parcelable.Creator<AddEmail> {
            @Override // android.os.Parcelable.Creator
            public final AddEmail createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return AddEmail.b;
            }

            @Override // android.os.Parcelable.Creator
            public final AddEmail[] newArray(int i) {
                return new AddEmail[i];
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

    public static final class Login implements AuthReason {
        public static final Parcelable.Creator<Login> CREATOR = new a();
        public final String b;
        public final boolean c;
        public final String d;

        public static final class a implements Parcelable.Creator<Login> {
            @Override // android.os.Parcelable.Creator
            public final Login createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Login(parcel.readString(), parcel.readInt() != 0, parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Login[] newArray(int i) {
                return new Login[i];
            }
        }

        public /* synthetic */ Login(String str, String str2, int i) {
            this((i & 1) != 0 ? null : str, false, (i & 4) != 0 ? null : str2);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Login)) {
                return false;
            }
            Login login = (Login) obj;
            return aa4.e(this.b, login.b) && this.c == login.c && aa4.e(this.d, login.d);
        }

        public final int hashCode() {
            String str = this.b;
            int iC = tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.c);
            String str2 = this.d;
            return iC + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return me0.d(p2.b("Login(inviteCode=", this.b, ", showSkipButton=", ", afterEvent=", this.c), this.d, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.b);
            parcel.writeInt(this.c ? 1 : 0);
            parcel.writeString(this.d);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Login() {
            String str = null;
            this(str, str, 7);
        }

        public Login(String str, boolean z, String str2) {
            this.b = str;
            this.c = z;
            this.d = str2;
        }
    }
}
