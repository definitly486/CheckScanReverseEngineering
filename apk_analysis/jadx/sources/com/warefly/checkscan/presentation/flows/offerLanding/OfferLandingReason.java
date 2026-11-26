package com.warefly.checkscan.presentation.flows.offerLanding;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.me0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OfferLandingReason implements Parcelable {

    public static final class Landing extends OfferLandingReason {
        public static final Parcelable.Creator<Landing> CREATOR = new a();
        public final String b;

        public static final class a implements Parcelable.Creator<Landing> {
            @Override // android.os.Parcelable.Creator
            public final Landing createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Landing(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Landing[] newArray(int i) {
                return new Landing[i];
            }
        }

        public Landing(String str) {
            str.getClass();
            this.b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Landing) && aa4.e(this.b, ((Landing) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return me0.c("Landing(partnerId=", this.b, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.b);
        }
    }
}
