package ru.tinkoff.decoro.watchers;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import ru.tinkoff.decoro.Mask;
import ru.tinkoff.decoro.slots.Slot;

/* JADX INFO: loaded from: classes2.dex */
class UnmodifiableMask implements Mask {
    public static final Parcelable.Creator<UnmodifiableMask> CREATOR = new a();
    public final Mask b;

    public class a implements Parcelable.Creator<UnmodifiableMask> {
        @Override // android.os.Parcelable.Creator
        public final UnmodifiableMask createFromParcel(Parcel parcel) {
            return new UnmodifiableMask(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final UnmodifiableMask[] newArray(int i) {
            return new UnmodifiableMask[i];
        }
    }

    public UnmodifiableMask(Parcel parcel) {
        this.b = (Mask) parcel.readParcelable(Mask.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Iterable
    public final Iterator<Slot> iterator() {
        Mask mask = this.b;
        if (mask == null) {
            return null;
        }
        return mask.iterator();
    }

    public final String toString() {
        Mask mask = this.b;
        return mask == null ? "" : mask.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, i);
    }
}
