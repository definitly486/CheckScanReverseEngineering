package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class m47 {
    public final ArrayList a = new ArrayList();

    public static final class a<T> {
        public final Class<T> a;
        public final l47<T> b;

        public a(Class<T> cls, l47<T> l47Var) {
            this.a = cls;
            this.b = l47Var;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final synchronized <Z> l47<Z> a(Class<Z> cls) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.a.get(i);
            if (aVar.a.isAssignableFrom((Class<?>) cls)) {
                return aVar.b;
            }
        }
        return null;
    }
}
