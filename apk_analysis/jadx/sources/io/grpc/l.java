package io.grpc;

import androidx.core.app.NotificationCompat;
import defpackage.a99;
import defpackage.ch8;
import defpackage.ez4;
import defpackage.gd7;
import defpackage.h88;
import defpackage.n88;
import defpackage.o8;
import defpackage.o91;
import defpackage.od5;
import defpackage.ua5;
import defpackage.va5;
import defpackage.zs6;
import java.net.URI;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public abstract class l {
    public static final io.grpc.a.b<String> a = new io.grpc.a.b<>("io.grpc.NameResolver.ATTR_BACKEND_SERVICE");

    public static final class a {
        public final int a;
        public final zs6 b;
        public final ch8 c;
        public final gd7 d;
        public final ez4.o e;
        public final o91 f;
        public final ez4.h g;
        public final ua5 h;
        public final n i;
        public final IdentityHashMap<Object, Object> j;

        /* JADX INFO: renamed from: io.grpc.l$a$a, reason: collision with other inner class name */
        public class C0207a implements ua5 {
        }

        public static final class b {
            public Integer a;
            public zs6 b;
            public ch8 c;
            public gd7 d;
            public ez4.o e;
            public o91 f;
            public ez4.h g;
            public va5 h;
            public n i;
        }

        public a(b bVar) {
            Integer num = bVar.a;
            o8.l(num, "defaultPort not set");
            this.a = num.intValue();
            zs6 zs6Var = bVar.b;
            o8.l(zs6Var, "proxyDetector not set");
            this.b = zs6Var;
            ch8 ch8Var = bVar.c;
            o8.l(ch8Var, "syncContext not set");
            this.c = ch8Var;
            gd7 gd7Var = bVar.d;
            o8.l(gd7Var, "serviceConfigParser not set");
            this.d = gd7Var;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            ua5 ua5Var = bVar.h;
            this.h = ua5Var == null ? new C0207a() : ua5Var;
            this.i = bVar.i;
            this.j = null;
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.a(this.a, "defaultPort");
            aVarB.d(this.b, "proxyDetector");
            aVarB.d(this.c, "syncContext");
            aVarB.d(this.d, "serviceConfigParser");
            aVarB.d(this.j, "customArgs");
            aVarB.d(this.e, "scheduledExecutorService");
            aVarB.d(this.f, "channelLogger");
            aVarB.d(this.g, "executor");
            aVarB.d(null, "overrideAuthority");
            aVarB.d(this.h, "metricRecorder");
            aVarB.d(this.i, "nameResolverRegistry");
            return aVarB.toString();
        }
    }

    public static abstract class c {
        public l a(a99 a99Var, a aVar) {
            return b(URI.create(a99Var.toString()), aVar);
        }

        public abstract l b(URI uri, a aVar);
    }

    public static abstract class d {
        public abstract h88 a(e eVar);
    }

    public static final class e {
        public final n88<List<io.grpc.d>> a;
        public final io.grpc.a b;
        public final b c;

        public static final class a {
            public n88<List<io.grpc.d>> a;
            public io.grpc.a b;
            public b c;
        }

        public e(n88<List<io.grpc.d>> n88Var, io.grpc.a aVar, b bVar) {
            this.a = n88Var;
            o8.l(aVar, "attributes");
            this.b = aVar;
            this.c = bVar;
        }

        public static a a() {
            a aVar = new a();
            aVar.a = new n88<>(null, Collections.EMPTY_LIST);
            aVar.b = io.grpc.a.b;
            return aVar;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return Objects.equals(this.a, eVar.a) && this.b.equals(eVar.b) && Objects.equals(this.c, eVar.c);
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b, this.c);
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a.toString(), "addressesOrError");
            aVarB.d(this.b, "attributes");
            aVarB.d(this.c, "serviceConfigOrError");
            return aVarB.toString();
        }
    }

    public static abstract class f {
    }

    public abstract String a();

    public abstract void b();

    public abstract void c();

    public abstract void d(d dVar);

    public static final class b {
        public final h88 a;
        public final Object b;

        public b(h88 h88Var) {
            this.b = null;
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            this.a = h88Var;
            o8.h(!h88Var.f(), "cannot use OK status: %s", h88Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && b.class == obj.getClass()) {
                b bVar = (b) obj;
                if (Objects.equals(this.a, bVar.a) && Objects.equals(this.b, bVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }

        public final String toString() {
            Object obj = this.b;
            if (obj != null) {
                od5.a aVarB = od5.b(this);
                aVarB.d(obj, "config");
                return aVarB.toString();
            }
            od5.a aVarB2 = od5.b(this);
            aVarB2.d(this.a, "error");
            return aVarB2.toString();
        }

        public b(Object obj) {
            this.b = obj;
            this.a = null;
        }
    }
}
