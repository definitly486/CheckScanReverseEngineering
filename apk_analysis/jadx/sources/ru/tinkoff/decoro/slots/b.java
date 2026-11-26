package ru.tinkoff.decoro.slots;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends HashSet<Slot.b> implements Slot.b {
    @Override // ru.tinkoff.decoro.slots.Slot.b
    public final boolean l(char c) {
        Iterator<Slot.b> it = iterator();
        while (it.hasNext()) {
            if (it.next().l(c)) {
                return true;
            }
        }
        return false;
    }
}
