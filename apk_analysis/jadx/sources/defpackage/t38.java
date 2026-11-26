package defpackage;

import java.util.Arrays;
import ru.tinkoff.decoro.slots.c;

/* JADX INFO: loaded from: classes2.dex */
public final class t38 extends c {
    public static final char[] c = {'X', 'x', '*'};
    public final char[] b = c;

    @Override // ru.tinkoff.decoro.slots.c
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t38.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((t38) obj).b);
    }

    @Override // ru.tinkoff.decoro.slots.c
    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    @Override // ru.tinkoff.decoro.slots.c, ru.tinkoff.decoro.slots.Slot.b
    public final boolean l(char c2) {
        if (Character.isDigit(c2)) {
            return true;
        }
        for (char c3 : this.b) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }
}
