package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.grpc.h;
import io.grpc.i;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class ic3 extends i {
    public final cx1 b;
    public final h.d c;
    public final h88 d;

    public final class a extends h {
        public final h.e f;

        public a(h.e eVar) {
            Objects.requireNonNull(eVar, "helper");
            this.f = eVar;
        }

        @Override // io.grpc.h
        public final h88 a(h.i iVar) {
            ic3 ic3Var = ic3.this;
            this.f.f(ic3Var.b, ic3Var.c);
            return ic3Var.d;
        }

        @Override // io.grpc.h
        public final void b(h88 h88Var) {
            ic3 ic3Var = ic3.this;
            this.f.f(ic3Var.b, ic3Var.c);
        }

        @Override // io.grpc.h
        public final void d() {
        }
    }

    public ic3(cx1 cx1Var, h.d dVar, h88 h88Var) {
        Objects.requireNonNull(cx1Var, RemoteConfigConstants.ResponseFieldKey.STATE);
        this.b = cx1Var;
        this.c = dVar;
        this.d = h88Var;
    }

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return new a(eVar);
    }

    @Override // io.grpc.i
    public final String b() {
        return "fixed_picker_lb_internal";
    }
}
