package ru.tinkoff.decoro;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.Arrays;
import ru.tinkoff.decoro.slots.Slot;

/* JADX INFO: loaded from: classes2.dex */
public class MaskDescriptor implements Serializable, Parcelable {
    public static final Parcelable.Creator<MaskDescriptor> CREATOR = new a();
    public Slot[] b;
    public String c;
    public String d;
    public boolean e = true;
    public boolean f = false;
    public boolean g = false;

    public class a implements Parcelable.Creator<MaskDescriptor> {
        @Override // android.os.Parcelable.Creator
        public final MaskDescriptor createFromParcel(Parcel parcel) {
            MaskDescriptor maskDescriptor = new MaskDescriptor();
            maskDescriptor.e = true;
            maskDescriptor.f = false;
            maskDescriptor.g = false;
            maskDescriptor.b = (Slot[]) parcel.createTypedArray(Slot.CREATOR);
            maskDescriptor.c = parcel.readString();
            maskDescriptor.d = parcel.readString();
            maskDescriptor.e = parcel.readByte() != 0;
            maskDescriptor.f = parcel.readByte() != 0;
            maskDescriptor.g = parcel.readByte() != 0;
            return maskDescriptor;
        }

        @Override // android.os.Parcelable.Creator
        public final MaskDescriptor[] newArray(int i) {
            return new MaskDescriptor[i];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MaskDescriptor maskDescriptor = (MaskDescriptor) obj;
            if (this.e != maskDescriptor.e || this.f != maskDescriptor.f || this.g != maskDescriptor.g || !Arrays.equals(this.b, maskDescriptor.b)) {
                return false;
            }
            String str = this.c;
            String str2 = maskDescriptor.c;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.d;
            String str4 = maskDescriptor.d;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = Arrays.hashCode(this.b) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return ((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0);
    }

    public final String toString() {
        String str = this.c;
        if (str != null && str.length() != 0) {
            return str;
        }
        Slot[] slotArr = this.b;
        if (slotArr == null || slotArr.length <= 0) {
            return "(empty)";
        }
        StringBuilder sb = new StringBuilder(slotArr.length);
        for (Slot slot : slotArr) {
            char c = slot.c;
            if (c == null) {
                c = '_';
            }
            sb.append(c);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.b, i);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
    }
}
