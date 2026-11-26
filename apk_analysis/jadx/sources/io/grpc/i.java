package io.grpc;

import defpackage.od5;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i extends h.c {
    public static final l.b a = new l.b(new a());

    public static final class a {
        public final String toString() {
            return "service config is unused";
        }
    }

    public abstract String b();

    public l.b c(Map<String, ?> map) {
        return a;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(b(), "policy");
        aVarB.a(5, "priority");
        aVarB.c("available", true);
        return aVarB.toString();
    }
}
