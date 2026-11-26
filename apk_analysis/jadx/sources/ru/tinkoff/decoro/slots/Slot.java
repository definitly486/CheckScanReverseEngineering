package ru.tinkoff.decoro.slots;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bc9;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class Slot implements Serializable, Parcelable {
    public static final Parcelable.Creator<Slot> CREATOR = new a();
    public final int b;
    public Character c;
    public final bc9 d;
    public final HashSet e;
    public final ru.tinkoff.decoro.slots.b f;
    public transient Slot g;
    public transient Slot h;

    public class a implements Parcelable.Creator<Slot> {
        @Override // android.os.Parcelable.Creator
        public final Slot createFromParcel(Parcel parcel) {
            return new Slot(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Slot[] newArray(int i) {
            return new Slot[i];
        }
    }

    public interface b extends Serializable {
        boolean l(char c);
    }

    public Slot(Parcel parcel) {
        this.b = 0;
        this.e = new HashSet();
        this.b = parcel.readInt();
        this.c = (Character) parcel.readSerializable();
        this.f = (ru.tinkoff.decoro.slots.b) parcel.readSerializable();
        this.d = (bc9) parcel.readSerializable();
        int i = parcel.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            this.e.add(Integer.valueOf(parcel.readInt()));
        }
    }

    public final boolean d() {
        if (this.c != null && !f()) {
            return true;
        }
        Slot slot = this.g;
        if (slot != null) {
            return slot.d();
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean e(int i) {
        return (this.b & i) == i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Slot.class != obj.getClass()) {
            return false;
        }
        Slot slot = (Slot) obj;
        if (this.b != slot.b) {
            return false;
        }
        Character ch = this.c;
        Character ch2 = slot.c;
        if (ch != null) {
            if (!ch.equals(ch2)) {
                return false;
            }
        } else if (ch2 != null) {
            return false;
        }
        HashSet hashSet = slot.e;
        HashSet hashSet2 = this.e;
        if (hashSet2 != null) {
            if (!hashSet2.equals(hashSet)) {
                return false;
            }
        } else if (hashSet != null) {
            return false;
        }
        ru.tinkoff.decoro.slots.b bVar = slot.f;
        ru.tinkoff.decoro.slots.b bVar2 = this.f;
        if (bVar2 != null) {
            return bVar2.equals(bVar);
        }
        return bVar == null;
    }

    public final boolean f() {
        return this.c != null && e(2);
    }

    public final int hashCode() {
        int i = this.b * 31;
        Character ch = this.c;
        int iHashCode = (i + (ch != null ? ch.hashCode() : 0)) * 31;
        HashSet hashSet = this.e;
        int iHashCode2 = (iHashCode + (hashSet != null ? hashSet.hashCode() : 0)) * 31;
        ru.tinkoff.decoro.slots.b bVar = this.f;
        return iHashCode2 + (bVar != null ? bVar.hashCode() : 0);
    }

    public final int i(int i) {
        Slot slot;
        if (f() && ((slot = this.g) == null || !slot.f())) {
            return i + 1;
        }
        if (f() && this.g.f()) {
            return this.g.i(i + 1);
        }
        return -1;
    }

    public final Character j(Slot slot) {
        if (slot != null) {
            if (!slot.f()) {
                Character ch = slot.c;
                if (ch != null) {
                    char cCharValue = ch.charValue();
                    ru.tinkoff.decoro.slots.b bVar = this.f;
                    if (bVar != null && !bVar.l(cCharValue)) {
                        return null;
                    }
                }
                slot.k();
                return ch;
            }
            Slot slot2 = slot.g;
            if (slot2 != null) {
                return j(slot2);
            }
        }
        return null;
    }

    public final void k() {
        if (!f()) {
            this.c = j(this.g);
            return;
        }
        Slot slot = this.h;
        if (slot != null) {
            slot.k();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int m(int i, Character ch, boolean z) {
        int iM;
        Object[] objArr;
        Slot slot;
        bc9 bc9Var = this.d;
        if (bc9Var != null) {
            ch = bc9Var.h();
        }
        if (ch == null) {
            k();
            return e(4) ? 1 : 0;
        }
        Object[] objArr2 = z && e(2) && !e(1);
        if (!f() || objArr2 == true || !this.c.equals(ch)) {
            if (e(2) || objArr2 == true) {
                int i2 = i + 1;
                Slot slot2 = this.g;
                iM = slot2 == null ? 0 : slot2.m(i2, ch, true);
                objArr = false;
            } else {
                iM = 0;
                objArr = true;
            }
            Character ch2 = this.c;
            if (ch2 != null && (this.b & 3) == 0 && (slot = this.g) != null) {
                slot.m(0, ch2, true);
            }
            if (objArr != true) {
                return iM;
            }
            this.c = ch;
            if (!e(8)) {
                return i + 1;
            }
        } else if (!e(8)) {
            return i + 1;
        }
        return i;
    }

    public final void n(Integer... numArr) {
        for (Integer num : numArr) {
            if (num != null) {
                this.e.add(num);
            }
        }
    }

    public final String toString() {
        return "Slot{value=" + this.c + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeSerializable(this.c);
        parcel.writeSerializable(this.f);
        parcel.writeSerializable(this.d);
        HashSet hashSet = this.e;
        parcel.writeInt(hashSet.size());
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            parcel.writeInt(((Integer) it.next()).intValue());
        }
    }

    public Slot(int i, Character ch, ru.tinkoff.decoro.slots.b bVar) {
        this.b = 0;
        this.e = new HashSet();
        this.b = i;
        this.c = ch;
        this.f = bVar == null ? new ru.tinkoff.decoro.slots.b() : bVar;
    }

    public Slot() {
        this(0, null, null);
    }

    public Slot(Slot slot) {
        this(slot.b, slot.c, slot.f);
        this.d = slot.d;
        this.e.addAll(slot.e);
    }

    public Slot(b... bVarArr) {
        ru.tinkoff.decoro.slots.b bVar = new ru.tinkoff.decoro.slots.b(bVarArr.length);
        for (b bVar2 : bVarArr) {
            if (bVar2 instanceof ru.tinkoff.decoro.slots.b) {
                bVar.addAll((ru.tinkoff.decoro.slots.b) bVar2);
            } else {
                bVar.add(bVar2);
            }
        }
        this(0, null, bVar);
    }
}
