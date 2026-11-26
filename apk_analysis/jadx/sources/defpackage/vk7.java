package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.l;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class vk7 extends i {
    public static final /* synthetic */ int b = 0;

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return new b87(eVar);
    }

    @Override // io.grpc.i
    public final String b() {
        return "round_robin";
    }

    @Override // io.grpc.i
    public final l.b c(Map<String, ?> map) {
        return new l.b("no service config");
    }
}
