package defpackage;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class gh2 extends gy0.a {
    public final Executor a;

    public static final class a<T> implements fy0<T> {
        public final Executor b;
        public final fy0<T> c;

        /* JADX INFO: renamed from: gh2$a$a, reason: collision with other inner class name */
        public class C0190a implements sy0<T> {
            public final /* synthetic */ sy0 a;

            public C0190a(sy0 sy0Var) {
                this.a = sy0Var;
            }

            @Override // defpackage.sy0
            public final void a(fy0<T> fy0Var, final Throwable th) {
                Executor executor = a.this.b;
                final sy0 sy0Var = this.a;
                executor.execute(new Runnable() { // from class: fh2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Throwable th2 = th;
                        sy0Var.a(gh2.a.this, th2);
                    }
                });
            }

            @Override // defpackage.sy0
            public final void b(fy0<T> fy0Var, final a57<T> a57Var) {
                Executor executor = a.this.b;
                final sy0 sy0Var = this.a;
                executor.execute(new Runnable() { // from class: eh2
                    @Override // java.lang.Runnable
                    public final void run() {
                        gh2.a aVar = gh2.a.this;
                        boolean zN = aVar.c.n();
                        sy0 sy0Var2 = sy0Var;
                        if (zN) {
                            sy0Var2.a(aVar, new IOException("Canceled"));
                        } else {
                            sy0Var2.b(aVar, a57Var);
                        }
                    }
                });
            }
        }

        public a(Executor executor, fy0<T> fy0Var) {
            this.b = executor;
            this.c = fy0Var;
        }

        @Override // defpackage.fy0
        public final void cancel() {
            this.c.cancel();
        }

        @Override // defpackage.fy0
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public final fy0<T> m9526clone() {
            return new a(this.b, this.c.m9526clone());
        }

        @Override // defpackage.fy0
        public final b37 m() {
            return this.c.m();
        }

        @Override // defpackage.fy0
        public final boolean n() {
            return this.c.n();
        }

        @Override // defpackage.fy0
        public final void o(sy0<T> sy0Var) {
            this.c.o(new C0190a(sy0Var));
        }
    }

    public gh2(Executor executor) {
        this.a = executor;
    }

    @Override // gy0.a
    public final gy0 a(Type type, Annotation[] annotationArr) {
        if (kb9.e(type) != fy0.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new dh2(kb9.d(0, (ParameterizedType) type), kb9.h(annotationArr, y18.class) ? null : this.a);
        }
        fg.c("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        return null;
    }
}
