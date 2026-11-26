package ru.tinkoff.decoro;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bc9;
import defpackage.fg;
import defpackage.yq;
import java.util.ArrayDeque;
import java.util.Iterator;
import ru.tinkoff.decoro.slots.Slot;
import ru.tinkoff.decoro.slots.b;

/* JADX INFO: loaded from: classes2.dex */
public class MaskImpl implements Mask {
    public static final Parcelable.Creator<MaskImpl> CREATOR = new a();
    public boolean b;
    public Character c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public SlotsList h;

    public class a implements Parcelable.Creator<MaskImpl> {
        @Override // android.os.Parcelable.Creator
        public final MaskImpl createFromParcel(Parcel parcel) {
            MaskImpl maskImpl = new MaskImpl();
            maskImpl.b = true;
            maskImpl.g = true;
            maskImpl.b = parcel.readByte() != 0;
            maskImpl.c = (Character) parcel.readSerializable();
            maskImpl.d = parcel.readByte() != 0;
            maskImpl.e = parcel.readByte() != 0;
            maskImpl.f = parcel.readByte() != 0;
            maskImpl.g = parcel.readByte() != 0;
            maskImpl.h = (SlotsList) parcel.readParcelable(SlotsList.class.getClassLoader());
            return maskImpl;
        }

        @Override // android.os.Parcelable.Creator
        public final MaskImpl[] newArray(int i) {
            return new MaskImpl[i];
        }
    }

    public MaskImpl(MaskImpl maskImpl) {
        boolean z = maskImpl.b;
        this.g = true;
        this.b = z;
        this.c = maskImpl.c;
        this.d = maskImpl.d;
        this.e = maskImpl.e;
        this.f = maskImpl.f;
        this.g = maskImpl.g;
        SlotsList slotsList = maskImpl.h;
        SlotsList slotsList2 = new SlotsList();
        slotsList2.b = 0;
        if (slotsList.b != 0) {
            Iterator<Slot> it = slotsList.iterator();
            Slot slot = null;
            while (true) {
                SlotsList.b bVar = (SlotsList.b) it;
                if (!bVar.hasNext()) {
                    break;
                }
                Slot slot2 = new Slot((Slot) bVar.next());
                int i = slotsList2.b;
                if (i == 0) {
                    slotsList2.c = slot2;
                } else {
                    slot.g = slot2;
                    slot2.h = slot;
                }
                slotsList2.b = i + 1;
                slot = slot2;
            }
            slotsList2.d = slot;
        }
        this.h = slotsList2;
    }

    public static MaskImpl a(Slot[] slotArr) {
        MaskImpl maskImpl = new MaskImpl();
        maskImpl.g = true;
        maskImpl.b = true;
        SlotsList slotsList = new SlotsList();
        int length = slotArr.length;
        slotsList.b = length;
        if (length != 0) {
            SlotsList.c(slotArr, slotsList);
        }
        maskImpl.h = slotsList;
        return maskImpl;
    }

    public final int c() {
        int i = 0;
        for (Slot slotB = this.h.b(0); slotB != null && slotB.c != null; slotB = slotB.g) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x00bf A[EDGE_INSN: B:122:0x00bf->B:54:0x00bf BREAK  A[LOOP:3: B:33:0x0080->B:53:0x00ba], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x013a A[EDGE_INSN: B:128:0x013a->B:94:0x013a BREAK  A[LOOP:5: B:73:0x00f0->B:91:0x0124], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x005f A[LOOP:1: B:28:0x005d->B:29:0x005f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x0073  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:36:0x0086  */
    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:40:0x0096  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:79:0x0106  */
    /* JADX WARN: Code duplicated, block: B:80:0x010b  */
    /* JADX WARN: Code duplicated, block: B:83:0x0113  */
    /* JADX WARN: Code duplicated, block: B:85:0x0117  */
    /* JADX WARN: Code duplicated, block: B:87:0x011b  */
    /* JADX WARN: Code duplicated, block: B:88:0x011e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0122  */
    /* JADX WARN: Code duplicated, block: B:96:0x0140  */
    /* JADX WARN: Code duplicated, block: B:97:0x0145  */
    /* JADX WARN: Code duplicated, block: B:99:0x0148  */
    public final int d(int i, CharSequence charSequence) {
        ArrayDeque arrayDeque;
        int length;
        int i2;
        Slot slotB;
        Character ch;
        char cCharValue;
        Slot slot;
        boolean z;
        int i3;
        Slot slotB2;
        boolean z2;
        Slot slot2;
        int i4;
        int i5;
        int i6;
        Slot slot3;
        Slot slot4;
        Slot slotB3;
        Slot slot5;
        bc9 bc9Var;
        char cCharValue2;
        b bVar;
        boolean zEquals;
        boolean z3 = this.b;
        SlotsList slotsList = this.h;
        if (slotsList.b != 0 && slotsList.a(i) && charSequence != null && charSequence.length() != 0) {
            boolean z4 = true;
            this.g = true;
            Slot slotB4 = slotsList.b(i);
            if (!this.e) {
                arrayDeque = new ArrayDeque(charSequence.length());
                for (length = charSequence.length() - 1; length >= 0; length--) {
                    arrayDeque.push(Character.valueOf(charSequence.charAt(length)));
                }
                while (!arrayDeque.isEmpty()) {
                    ch = (Character) arrayDeque.pop();
                    cCharValue = ch.charValue();
                    slot = slotB4;
                    z = false;
                    i3 = 0;
                    while (slot != null) {
                        bc9Var = slot.d;
                        if (bc9Var == null) {
                            cCharValue2 = cCharValue;
                        } else {
                            cCharValue2 = bc9Var.h().charValue();
                        }
                        if (slot.f()) {
                            zEquals = slot.c.equals(Character.valueOf(cCharValue2));
                        } else {
                            bVar = slot.f;
                            if (bVar != null || bVar.l(cCharValue2)) {
                                zEquals = true;
                            } else {
                                zEquals = false;
                            }
                        }
                        if (!zEquals) {
                            break;
                        }
                        if (z && !slot.f()) {
                            z = true;
                        }
                        slot = slot.g;
                        i3++;
                    }
                    if (!this.d || !z) {
                        i += i3;
                        slotB2 = slotsList.b(i);
                        if (slotB2 != null) {
                            continue;
                        } else {
                            if (i3 > 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            int iM = slotB2.m(0, ch, z2) + i;
                            Slot slotB5 = slotsList.b(iM);
                            if (!z3) {
                                i4 = 0;
                                for (slot2 = slotsList.d; slot2 != null && slot2.c == null; slot2 = slot2.h) {
                                    i4++;
                                }
                                if (i4 < 1 && !z3) {
                                    i5 = 1;
                                    while (true) {
                                        i5--;
                                        if (i5 >= 0) {
                                            break;
                                        }
                                        i6 = slotsList.b;
                                        slot3 = slotsList.d;
                                        if (i6 >= 0) {
                                            yq.d("New slot position should be inside the slots list. Or on the tail (position = size)");
                                            return 0;
                                        }
                                        slot4 = new Slot(slot3);
                                        slotB3 = slotsList.b(i6);
                                        if (slotB3 == null) {
                                            slot5 = slotsList.d;
                                            slotB3 = null;
                                        } else {
                                            slot5 = slotB3.h;
                                        }
                                        slot4.g = slotB3;
                                        slot4.h = slot5;
                                        if (slotB3 != null) {
                                            slotB3.h = slot4;
                                        }
                                        if (slot5 != null) {
                                            slot5.g = slot4;
                                        }
                                        if (i6 == 0) {
                                            slotsList.c = slot4;
                                        } else if (i6 == slotsList.b) {
                                            slotsList.d = slot4;
                                        }
                                        slotsList.b++;
                                        slot4.m(0, null, false);
                                        slot4.n(-149635);
                                    }
                                }
                            }
                            slotB4 = slotB5;
                            i = iM;
                        }
                    }
                }
                if (slotB4 != null) {
                    i2 = slotB4.i(0);
                } else {
                    i2 = 0;
                }
                if (i2 > 0) {
                    i += i2;
                }
                slotB = slotsList.b(i);
                if (slotB != null && slotB.d()) {
                    z4 = false;
                }
                this.g = z4;
                break;
            }
            if (slotB4 == null) {
                fg.c("first slot is null");
                return 0;
            }
            Slot slot6 = slotB4;
            do {
                if (!slot6.e.contains(-149635) && !slot6.f() && slot6.c == null) {
                    arrayDeque = new ArrayDeque(charSequence.length());
                    while (length >= 0) {
                        arrayDeque.push(Character.valueOf(charSequence.charAt(length)));
                    }
                    while (!arrayDeque.isEmpty()) {
                        ch = (Character) arrayDeque.pop();
                        cCharValue = ch.charValue();
                        slot = slotB4;
                        z = false;
                        i3 = 0;
                        while (slot != null) {
                            bc9Var = slot.d;
                            if (bc9Var == null) {
                                cCharValue2 = cCharValue;
                            } else {
                                cCharValue2 = bc9Var.h().charValue();
                            }
                            if (slot.f()) {
                                zEquals = slot.c.equals(Character.valueOf(cCharValue2));
                            } else {
                                bVar = slot.f;
                                if (bVar != null) {
                                    zEquals = true;
                                } else {
                                    zEquals = true;
                                }
                            }
                            if (!zEquals) {
                                break;
                                break;
                            }
                            if (z) {
                            }
                            slot = slot.g;
                            i3++;
                        }
                        if (!this.d) {
                        }
                        i += i3;
                        slotB2 = slotsList.b(i);
                        if (slotB2 != null) {
                            if (i3 > 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            int iM2 = slotB2.m(0, ch, z2) + i;
                            Slot slotB6 = slotsList.b(iM2);
                            if (!z3) {
                                i4 = 0;
                                while (slot2 != null) {
                                    i4++;
                                }
                                if (i4 < 1) {
                                    i5 = 1;
                                    while (true) {
                                        i5--;
                                        if (i5 >= 0) {
                                            break;
                                            break;
                                        }
                                        i6 = slotsList.b;
                                        slot3 = slotsList.d;
                                        if (i6 >= 0) {
                                            yq.d("New slot position should be inside the slots list. Or on the tail (position = size)");
                                            return 0;
                                        }
                                        slot4 = new Slot(slot3);
                                        slotB3 = slotsList.b(i6);
                                        if (slotB3 == null) {
                                            slot5 = slotsList.d;
                                            slotB3 = null;
                                        } else {
                                            slot5 = slotB3.h;
                                        }
                                        slot4.g = slotB3;
                                        slot4.h = slot5;
                                        if (slotB3 != null) {
                                            slotB3.h = slot4;
                                        }
                                        if (slot5 != null) {
                                            slot5.g = slot4;
                                        }
                                        if (i6 == 0) {
                                            slotsList.c = slot4;
                                        } else if (i6 == slotsList.b) {
                                            slotsList.d = slot4;
                                        }
                                        slotsList.b++;
                                        slot4.m(0, null, false);
                                        slot4.n(-149635);
                                    }
                                }
                            }
                            slotB4 = slotB6;
                            i = iM2;
                        } else {
                            continue;
                        }
                    }
                    if (slotB4 != null) {
                        i2 = slotB4.i(0);
                    } else {
                        i2 = 0;
                    }
                    if (i2 > 0) {
                        i += i2;
                    }
                    slotB = slotsList.b(i);
                    if (slotB != null) {
                        z4 = false;
                    }
                    this.g = z4;
                    break;
                }
                slot6 = slot6.g;
            } while (slot6 != null);
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int f(int i, int i2, boolean z) {
        int i3;
        Slot slotB;
        SlotsList slotsList = this.h;
        int iM = i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (slotsList.a(iM) && (slotB = slotsList.b(iM)) != null && (!slotB.f() || (z && i2 == 1))) {
                iM += slotB.m(0, null, false);
            }
            iM--;
        }
        int i5 = iM + 1;
        if (!this.b && slotsList.b != 0) {
            Slot slot = slotsList.d;
            Slot slot2 = slot.h;
            while (slot.e.contains(-149635) && slot2.e.contains(-149635) && slot.c == null && slot2.c == null) {
                int i6 = slotsList.b - 1;
                if (!slotsList.a(i6)) {
                    yq.d("Slot position should be inside the slots list");
                    return 0;
                }
                Slot slotB2 = slotsList.b(i6);
                if (slotB2 != null) {
                    Iterator<Slot> it = slotsList.iterator();
                    while (true) {
                        SlotsList.b bVar = (SlotsList.b) it;
                        if (!bVar.hasNext()) {
                            break;
                        }
                        if (((Slot) bVar.next()) == slotB2) {
                            Slot slot3 = slotB2.h;
                            Slot slot4 = slotB2.g;
                            if (slot3 != null) {
                                slot3.g = slot4;
                            } else {
                                slotsList.c = slot4;
                            }
                            if (slot4 != null) {
                                slot4.h = slot3;
                            } else {
                                slotsList.d = slot3;
                            }
                            slotsList.b--;
                            break;
                        }
                    }
                }
                Slot slot5 = slot2;
                slot2 = slot2.h;
                slot = slot5;
            }
        }
        int i7 = i5;
        while (true) {
            i3 = i7 - 1;
            Slot slotB3 = slotsList.b(i3);
            if (slotB3 == null || !slotB3.f() || i3 <= 0) {
                break;
            }
            i7 = i3;
        }
        this.g = i3 <= 0 && !this.f;
        if (i3 > 0) {
            i5 = (slotsList.a(i) && slotsList.b(i).f() && i2 == 1) ? i3 : i7;
        }
        if (i5 < 0 || i5 > slotsList.b) {
            return 0;
        }
        return i5;
    }

    @Override // java.lang.Iterable
    public final Iterator<Slot> iterator() {
        return this.h.iterator();
    }

    public final String toString() {
        SlotsList slotsList = this.h;
        if (slotsList.b == 0) {
            return "";
        }
        Slot slot = slotsList.c;
        boolean z = this.d;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (slot != null) {
            Character chValueOf = slot.c;
            boolean zD = slot.d();
            if (!zD && !z && (!this.g || !slotsList.a((slot.i(0) - 1) + i))) {
                break;
            }
            if (chValueOf == null && (z || zD)) {
                Character ch = this.c;
                chValueOf = Character.valueOf(ch != null ? ch.charValue() : '_');
            } else if (chValueOf == null) {
                break;
            }
            sb.append(chValueOf);
            slot = slot.g;
            i++;
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeSerializable(this.c);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.h, i);
    }
}
