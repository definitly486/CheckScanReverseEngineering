package io.grpc;

import defpackage.la5;
import defpackage.o8;
import defpackage.od5;
import defpackage.y14;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends y14 {
    public static final io.grpc.b.C0204b<Long> o = new io.grpc.b.C0204b<>("io.grpc.ClientStreamTracer.NAME_RESOLUTION_DELAYED");

    public static abstract class a {
        public c a(b bVar, la5 la5Var) {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    public static final class b {
        public final io.grpc.b a;
        public final int b;
        public final boolean c;
        public final boolean d;

        public b(io.grpc.b bVar, int i, boolean z, boolean z2) {
            o8.l(bVar, "callOptions");
            this.a = bVar;
            this.b = i;
            this.c = z;
            this.d = z2;
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "callOptions");
            aVarB.a(this.b, "previousAttempts");
            aVarB.c("isTransparentRetry", this.c);
            aVarB.c("isHedging", this.d);
            return aVarB.toString();
        }
    }

    public void U() {
    }

    public void V() {
    }

    public void W(la5 la5Var) {
        V();
    }

    public void X(la5 la5Var) {
    }

    public void Y() {
    }

    public void Z(io.grpc.a aVar, la5 la5Var) {
    }
}
