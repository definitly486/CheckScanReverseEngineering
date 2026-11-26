package io.grpc;

import androidx.core.app.NotificationCompat;
import defpackage.ch8;
import defpackage.cx1;
import defpackage.dx1;
import defpackage.h88;
import defpackage.l86;
import defpackage.n91;
import defpackage.o8;
import defpackage.od5;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h {
    public static final io.grpc.a.b<Map<String, ?>> a = new io.grpc.a.b<>("internal:health-checking-config");
    public static final b.C0205b<l> b = new b.C0205b<>("internal:health-check-consumer-listener", null);
    public static final b.C0205b<Boolean> c = new b.C0205b<>("internal:disable-subchannel-reconnect", Boolean.FALSE);
    public static final io.grpc.a.b<Boolean> d = new io.grpc.a.b<>("internal:has-health-check-producer-listener");
    public static final io.grpc.a.b<Boolean> e = new io.grpc.a.b<>("io.grpc.IS_PETIOLE_POLICY");

    public class a extends k {
        @Override // io.grpc.h.k
        public final g a(l86 l86Var) {
            return g.e;
        }

        public final String toString() {
            return "EMPTY_PICKER";
        }
    }

    public static final class b {
        public final List<io.grpc.d> a;
        public final io.grpc.a b;
        public final Object[][] c;

        public static final class a {
            public static final Object[][] d = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
            public List<io.grpc.d> a;
            public io.grpc.a b;
            public Object[][] c;

            public final void a(C0205b c0205b, Object obj) {
                Object[][] objArr;
                int length = 0;
                while (true) {
                    objArr = this.c;
                    if (length >= objArr.length) {
                        length = -1;
                        break;
                    } else if (c0205b == objArr[length][0]) {
                        break;
                    } else {
                        length++;
                    }
                }
                if (length == -1) {
                    Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length + 1, 2);
                    Object[][] objArr3 = this.c;
                    System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
                    this.c = objArr2;
                    objArr = objArr2;
                    length = objArr2.length - 1;
                }
                objArr[length] = new Object[]{c0205b, obj};
            }

            public final void b(List list) {
                o8.f(!list.isEmpty(), "addrs is empty");
                this.a = Collections.unmodifiableList(new ArrayList(list));
            }
        }

        /* JADX INFO: renamed from: io.grpc.h$b$b, reason: collision with other inner class name */
        public static final class C0205b<T> {
            public final String a;
            public final T b;

            /* JADX WARN: Multi-variable type inference failed */
            public C0205b(String str, Boolean bool) {
                this.a = str;
                this.b = bool;
            }

            public final String toString() {
                return this.a;
            }
        }

        public b(List<io.grpc.d> list, io.grpc.a aVar, Object[][] objArr) {
            o8.l(list, "addresses are not set");
            this.a = list;
            o8.l(aVar, "attrs");
            this.b = aVar;
            o8.l(objArr, "customOptions");
            this.c = objArr;
        }

        public final <T> T a(C0205b<T> c0205b) {
            int i = 0;
            while (true) {
                Object[][] objArr = this.c;
                if (i >= objArr.length) {
                    return c0205b.b;
                }
                Object[] objArr2 = objArr[i];
                if (c0205b == objArr2[0]) {
                    return (T) objArr2[1];
                }
                i++;
            }
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "addrs");
            aVarB.d(this.b, "attrs");
            aVarB.d(Arrays.deepToString(this.c), "customOptions");
            return aVarB.toString();
        }
    }

    public static abstract class c {
        public abstract h a(e eVar);
    }

    public static final class d extends k {
        public final g a;

        public d(g gVar) {
            o8.l(gVar, "result");
            this.a = gVar;
        }

        @Override // io.grpc.h.k
        public final g a(l86 l86Var) {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "FixedResultPicker(" + this.a + ")";
        }
    }

    public static abstract class e {
        public abstract j a(b bVar);

        public abstract n91 b();

        public abstract ScheduledExecutorService c();

        public abstract ch8 d();

        public abstract void e();

        public abstract void f(cx1 cx1Var, k kVar);
    }

    public interface f {
    }

    /* JADX INFO: renamed from: io.grpc.h$h, reason: collision with other inner class name */
    public static abstract class AbstractC0206h {
    }

    public static final class i {
        public final List<io.grpc.d> a;
        public final io.grpc.a b;
        public final Object c;

        public static final class a {
            public List<io.grpc.d> a;
            public io.grpc.a b;
            public Object c;

            public final i a() {
                return new i(this.a, this.b, this.c);
            }
        }

        public i(List<io.grpc.d> list, io.grpc.a aVar, Object obj) {
            o8.l(list, "addresses");
            this.a = Collections.unmodifiableList(new ArrayList(list));
            o8.l(aVar, "attributes");
            this.b = aVar;
            this.c = obj;
        }

        public final a a() {
            a aVar = new a();
            io.grpc.a aVar2 = io.grpc.a.b;
            aVar.a = this.a;
            aVar.b = this.b;
            aVar.c = this.c;
            return aVar;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Objects.equals(this.a, iVar.a) && Objects.equals(this.b, iVar.b) && Objects.equals(this.c, iVar.c);
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b, this.c);
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "addresses");
            aVarB.d(this.c, "loadBalancingPolicyConfig");
            aVarB.d(this.b, "attributes");
            return aVarB.toString();
        }
    }

    public static abstract class j {
        /* JADX WARN: Code duplicated, block: B:7:0x000f  */
        public final io.grpc.d a() {
            boolean z;
            List<io.grpc.d> listB = b();
            if (listB != null) {
                z = listB.size() == 1;
            }
            o8.q("%s does not have exactly one group", z, listB);
            return listB.get(0);
        }

        public abstract List<io.grpc.d> b();

        public abstract io.grpc.a c();

        public abstract n91 d();

        public abstract Object e();

        public abstract void f();

        public abstract void g();

        public abstract void h(l lVar);

        public abstract void i(List<io.grpc.d> list);
    }

    public static abstract class k {
        public abstract g a(l86 l86Var);
    }

    public interface l {
        void a(dx1 dx1Var);
    }

    static {
        new a();
    }

    public abstract h88 a(i iVar);

    public abstract void b(h88 h88Var);

    public void c() {
    }

    public abstract void d();

    public static final class g {
        public static final g e = new g(null, h88.e, false);
        public final j a;
        public final io.grpc.c.a b;
        public final h88 c;
        public final boolean d;

        public g(j jVar, h88 h88Var, boolean z) {
            this.a = jVar;
            this.b = null;
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            this.c = h88Var;
            this.d = z;
        }

        public static g a(h88 h88Var) {
            o8.f(!h88Var.f(), "error status shouldn't be OK");
            return new g(null, h88Var, false);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return Objects.equals(this.a, gVar.a) && Objects.equals(this.c, gVar.c) && Objects.equals(this.b, gVar.b) && this.d == gVar.d;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.c, this.b, Boolean.valueOf(this.d));
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "subchannel");
            aVarB.d(this.b, "streamTracerFactory");
            aVarB.d(this.c, NotificationCompat.CATEGORY_STATUS);
            aVarB.c("drop", this.d);
            aVarB.d(null, "authority-override");
            return aVarB.toString();
        }

        public g(j jVar, io.grpc.c.a aVar, h88 h88Var, boolean z) {
            this.a = jVar;
            this.b = aVar;
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            this.c = h88Var;
            this.d = z;
        }
    }
}
