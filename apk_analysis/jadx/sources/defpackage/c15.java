package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class c15 {
    public final Map<Class<? extends zn5>, e58> a;

    public static class a {
        public final HashMap a = new HashMap(3);

        public final a a(Class cls, e58 e58Var) {
            this.a.put(cls, e58Var);
            return this;
        }
    }

    public c15(Map<Class<? extends zn5>, e58> map) {
        this.a = map;
    }
}
