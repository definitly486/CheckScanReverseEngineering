package defpackage;

import com.google.protobuf.c0;
import com.google.protobuf.d0;
import com.google.protobuf.f0;
import com.google.protobuf.g0;
import com.google.protobuf.j0;
import com.google.protobuf.k;
import com.google.protobuf.o;
import com.google.protobuf.q;
import com.google.protobuf.u;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class rs6 {
    public static final rs6 c = new rs6();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final tz4 a = new tz4();

    public final <T> f0<T> a(Class<T> cls) {
        f0<T> f0VarX;
        Class<?> cls2;
        q.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.b;
        f0<T> f0Var = (f0) concurrentHashMap.get(cls);
        if (f0Var != null) {
            return f0Var;
        }
        Class<?> cls3 = g0.a;
        if (!o.class.isAssignableFrom(cls) && (cls2 = g0.a) != null && !cls2.isAssignableFrom(cls)) {
            fg.c("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            return null;
        }
        fa5 fa5VarMessageInfoFor = this.a.a.messageInfoFor(cls);
        if (fa5VarMessageInfoFor.isMessageSetWireFormat()) {
            if (o.class.isAssignableFrom(cls)) {
                f0VarX = new d0<>(g0.c, v43.a, fa5VarMessageInfoFor.getDefaultInstance());
            } else {
                j0<?, ?> j0Var = g0.b;
                k<?> kVar = v43.b;
                if (kVar == null) {
                    ah.f("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                f0VarX = new d0<>(j0Var, kVar, fa5VarMessageInfoFor.getDefaultInstance());
            }
        } else if (o.class.isAssignableFrom(cls)) {
            f0VarX = tz4.b.a[fa5VarMessageInfoFor.getSyntax().ordinal()] != 1 ? c0.x(fa5VarMessageInfoFor, cn5.b, u.b, g0.c, v43.a, zz4.b) : c0.x(fa5VarMessageInfoFor, cn5.b, u.b, g0.c, null, zz4.b);
        } else if (tz4.b.a[fa5VarMessageInfoFor.getSyntax().ordinal()] != 1) {
            an5 an5Var = cn5.a;
            u.a aVar = u.a;
            j0<?, ?> j0Var2 = g0.b;
            k<?> kVar2 = v43.b;
            if (kVar2 == null) {
                ah.f("Protobuf runtime is not correctly loaded.");
                return null;
            }
            f0VarX = c0.x(fa5VarMessageInfoFor, an5Var, aVar, j0Var2, kVar2, zz4.a);
        } else {
            f0VarX = c0.x(fa5VarMessageInfoFor, cn5.a, u.a, g0.b, null, zz4.a);
        }
        f0<T> f0Var2 = (f0) concurrentHashMap.putIfAbsent(cls, f0VarX);
        return f0Var2 != null ? f0Var2 : f0VarX;
    }
}
