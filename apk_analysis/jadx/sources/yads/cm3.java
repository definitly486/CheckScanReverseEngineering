package yads;

import android.util.Property;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cm3 extends Property {
    public cm3() {
        super(Integer.TYPE, "value");
    }

    public abstract void a(int i, Object obj);

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        a(((Number) obj2).intValue(), obj);
    }
}
