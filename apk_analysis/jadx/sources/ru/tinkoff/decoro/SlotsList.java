package ru.tinkoff.decoro;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.ah;
import defpackage.fg;
import java.util.Iterator;
import ru.tinkoff.decoro.slots.Slot;

/* JADX INFO: loaded from: classes2.dex */
class SlotsList implements Iterable<Slot>, Parcelable {
    public static final Parcelable.Creator<SlotsList> CREATOR = new a();
    public int b = 0;
    public Slot c;
    public Slot d;

    public class a implements Parcelable.Creator<SlotsList> {
        @Override // android.os.Parcelable.Creator
        public final SlotsList createFromParcel(Parcel parcel) {
            SlotsList slotsList = new SlotsList();
            slotsList.b = 0;
            int i = parcel.readInt();
            slotsList.b = i;
            if (i > 0) {
                Slot[] slotArr = new Slot[i];
                parcel.readTypedArray(slotArr, Slot.CREATOR);
                SlotsList.c(slotArr, slotsList);
            }
            return slotsList;
        }

        @Override // android.os.Parcelable.Creator
        public final SlotsList[] newArray(int i) {
            return new SlotsList[i];
        }
    }

    public static class b implements Iterator<Slot> {
        public Slot b;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != null;
        }

        @Override // java.util.Iterator
        public final Slot next() {
            Slot slot = this.b;
            this.b = slot.g;
            return slot;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Mask cannot be modified from outside!");
        }
    }

    public static void c(Slot[] slotArr, SlotsList slotsList) {
        Slot slot = new Slot(slotArr[0]);
        slotsList.c = slot;
        if (slotsList.b == 1) {
            slotsList.d = slot;
        }
        int i = 1;
        while (i < slotArr.length) {
            Slot slot2 = new Slot(slotArr[i]);
            slot.g = slot2;
            slot2.h = slot;
            if (i == slotArr.length - 1) {
                slotsList.d = slot2;
            }
            i++;
            slot = slot2;
        }
    }

    public final boolean a(int i) {
        return i >= 0 && i < this.b;
    }

    public final Slot b(int i) {
        Slot slot;
        if (!a(i)) {
            return null;
        }
        int i2 = this.b;
        if (i < (i2 >> 1)) {
            slot = this.c;
            for (int i3 = 0; i3 < i; i3++) {
                slot = slot.g;
            }
        } else {
            slot = this.d;
            for (int i4 = i2 - 1; i4 > i; i4--) {
                slot = slot.h;
            }
        }
        if (slot != null) {
            return slot;
        }
        ah.f("Slot inside the mask should not be null. But it is.");
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        b bVar;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SlotsList slotsList = (SlotsList) obj;
        if (slotsList.b != this.b) {
            return false;
        }
        Iterator<Slot> it = iterator();
        Iterator<Slot> it2 = slotsList.iterator();
        do {
            bVar = (b) it2;
            if (!bVar.hasNext()) {
                return true;
            }
        } while (((Slot) ((b) it).next()).equals((Slot) bVar.next()));
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<Slot> iterator() {
        Slot slot = this.c;
        b bVar = new b();
        if (slot != null) {
            bVar.b = slot;
            return bVar;
        }
        fg.c("Initial slot for iterator cannot be null");
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Slot[] slotArr;
        parcel.writeInt(this.b);
        int i2 = this.b;
        if (i2 > 0) {
            int i3 = 0;
            if (i2 == 0) {
                slotArr = new Slot[0];
            } else {
                Slot[] slotArr2 = new Slot[i2];
                Iterator<Slot> it = iterator();
                while (true) {
                    b bVar = (b) it;
                    if (!bVar.hasNext()) {
                        break;
                    }
                    slotArr2[i3] = (Slot) bVar.next();
                    i3++;
                }
                slotArr = slotArr2;
            }
            parcel.writeTypedArray(slotArr, i);
        }
    }
}
