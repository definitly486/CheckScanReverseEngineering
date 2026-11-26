package defpackage;

import java.io.Serializable;
import java.lang.Enum;

/* JADX INFO: loaded from: classes5.dex */
public final class j03<E extends Enum<E>> implements Serializable {
    public final Class<E> b;

    public j03(E[] eArr) {
        eArr.getClass();
        Class<E> cls = (Class<E>) eArr.getClass().getComponentType();
        cls.getClass();
        this.b = cls;
    }

    private final Object readResolve() {
        E[] enumConstants = this.b.getEnumConstants();
        enumConstants.getClass();
        return new i03(enumConstants);
    }
}
