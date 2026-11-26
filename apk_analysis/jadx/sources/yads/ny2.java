package yads;

import android.util.Property;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ny2 extends Property {
    public ny2() {
        super(Float.TYPE, "value");
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        wo4.a((q66) obj, ((Number) obj2).floatValue());
    }
}
