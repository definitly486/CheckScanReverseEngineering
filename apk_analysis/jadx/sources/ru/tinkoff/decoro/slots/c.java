package ru.tinkoff.decoro.slots;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Slot.b {
    public boolean equals(Object obj) {
        return obj != null && (obj instanceof c);
    }

    public int hashCode() {
        return -56329;
    }

    @Override // ru.tinkoff.decoro.slots.Slot.b
    public boolean l(char c) {
        return Character.isDigit(c);
    }
}
