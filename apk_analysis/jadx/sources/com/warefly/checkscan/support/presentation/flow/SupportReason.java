package com.warefly.checkscan.support.presentation.flow;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes5.dex */
public interface SupportReason extends Parcelable {

    public static final class Form implements SupportReason {
        public static final Form b = new Form();
        public static final Parcelable.Creator<Form> CREATOR = new a();

        public static final class a implements Parcelable.Creator<Form> {
            @Override // android.os.Parcelable.Creator
            public final Form createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Form.b;
            }

            @Override // android.os.Parcelable.Creator
            public final Form[] newArray(int i) {
                return new Form[i];
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

    public static final class Sections implements SupportReason {
        public static final Sections b = new Sections();
        public static final Parcelable.Creator<Sections> CREATOR = new a();

        public static final class a implements Parcelable.Creator<Sections> {
            @Override // android.os.Parcelable.Creator
            public final Sections createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return Sections.b;
            }

            @Override // android.os.Parcelable.Creator
            public final Sections[] newArray(int i) {
                return new Sections[i];
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
}
