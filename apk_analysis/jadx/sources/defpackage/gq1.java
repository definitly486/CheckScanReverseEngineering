package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes5.dex */
public final class gq1 extends gy0.a {

    public static final class a<R> implements gy0<R, CompletableFuture<R>> {
        public final Type a;

        /* JADX INFO: renamed from: gq1$a$a, reason: collision with other inner class name */
        public class C0191a implements sy0<R> {
            public final b a;

            public C0191a(b bVar) {
                this.a = bVar;
            }

            @Override // defpackage.sy0
            public final void a(fy0<R> fy0Var, Throwable th) {
                this.a.completeExceptionally(th);
            }

            @Override // defpackage.sy0
            public final void b(fy0<R> fy0Var, a57<R> a57Var) {
                boolean zO = a57Var.a.o();
                b bVar = this.a;
                if (zO) {
                    bVar.complete(a57Var.b);
                } else {
                    bVar.completeExceptionally(new HttpException(a57Var));
                }
            }
        }

        public a(Type type) {
            this.a = type;
        }

        @Override // defpackage.gy0
        public final Type a() {
            return this.a;
        }

        @Override // defpackage.gy0
        public final Object b(gv5 gv5Var) {
            b bVar = new b(gv5Var);
            gv5Var.o(new C0191a(bVar));
            return bVar;
        }
    }

    public static final class b<T> extends CompletableFuture<T> {
        public final gv5 b;

        public b(gv5 gv5Var) {
            this.b = gv5Var;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (z) {
                this.b.cancel();
            }
            return super.cancel(z);
        }
    }

    public static final class c<R> implements gy0<R, CompletableFuture<a57<R>>> {
        public final Type a;

        public class a implements sy0<R> {
            public final b a;

            public a(b bVar) {
                this.a = bVar;
            }

            @Override // defpackage.sy0
            public final void a(fy0<R> fy0Var, Throwable th) {
                this.a.completeExceptionally(th);
            }

            @Override // defpackage.sy0
            public final void b(fy0<R> fy0Var, a57<R> a57Var) {
                this.a.complete(a57Var);
            }
        }

        public c(Type type) {
            this.a = type;
        }

        @Override // defpackage.gy0
        public final Type a() {
            return this.a;
        }

        @Override // defpackage.gy0
        public final Object b(gv5 gv5Var) {
            b bVar = new b(gv5Var);
            gv5Var.o(new a(bVar));
            return bVar;
        }
    }

    @Override // gy0.a
    public final gy0 a(Type type, Annotation[] annotationArr) {
        if (kb9.e(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            ah.f("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
            return null;
        }
        Type typeD = kb9.d(0, (ParameterizedType) type);
        if (kb9.e(typeD) != a57.class) {
            return new a(typeD);
        }
        if (typeD instanceof ParameterizedType) {
            return new c(kb9.d(0, (ParameterizedType) typeD));
        }
        ah.f("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        return null;
    }
}
