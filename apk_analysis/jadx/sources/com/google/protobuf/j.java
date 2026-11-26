package com.google.protobuf;

import defpackage.u43;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class j {
    public static volatile j b;
    public static final j c = new j(0);
    public final Map<a, o.e<?, ?>> a;

    public static final class a {
        public final Object a;
        public final int b;

        public a(int i, a0 a0Var) {
            this.a = a0Var;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.a) * 65535) + this.b;
        }
    }

    public j() {
        this.a = new HashMap();
    }

    public static j a() {
        j jVar;
        j jVar2 = b;
        if (jVar2 != null) {
            return jVar2;
        }
        synchronized (j.class) {
            try {
                jVar = b;
                if (jVar == null) {
                    Class<?> cls = u43.a;
                    j jVar3 = null;
                    if (cls != null) {
                        try {
                            jVar3 = (j) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                        } catch (Exception unused) {
                        }
                    }
                    jVar = jVar3 != null ? jVar3 : c;
                    b = jVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jVar;
    }

    public j(int i) {
        this.a = Collections.EMPTY_MAP;
    }
}
