package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.l;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class f86 extends i {
    public static final boolean b;

    static {
        Logger logger = vs3.a;
        b = l63.a("GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST", false);
    }

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return b ? new d86(eVar) : new e86(eVar);
    }

    @Override // io.grpc.i
    public final String b() {
        return "pick_first";
    }

    @Override // io.grpc.i
    public final l.b c(Map<String, ?> map) {
        try {
            Boolean boolC = pl2.c("shuffleAddressList", map);
            return new l.b(b ? new d86.f(boolC) : new e86.c(boolC));
        } catch (RuntimeException e) {
            return new l.b(h88.m.g(e).h("Failed parsing configuration for pick_first"));
        }
    }
}
