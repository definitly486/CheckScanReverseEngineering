package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class cv0 extends i02.a {

    public static final class a implements i02<b57, b57> {
        public static final a a = new a();

        @Override // defpackage.i02
        public final b57 convert(b57 b57Var) {
            b57 b57Var2 = b57Var;
            try {
                bu0 bu0Var = new bu0();
                b57Var2.L().o0(bu0Var);
                return new c57(b57Var2.p(), b57Var2.o(), bu0Var);
            } finally {
                b57Var2.close();
            }
        }
    }

    public static final class b implements i02<g37, g37> {
        public static final b a = new b();

        @Override // defpackage.i02
        public final g37 convert(g37 g37Var) {
            return g37Var;
        }
    }

    public static final class c implements i02<b57, b57> {
        public static final c a = new c();

        @Override // defpackage.i02
        public final b57 convert(b57 b57Var) {
            return b57Var;
        }
    }

    public static final class d implements i02<Object, String> {
    }

    public static final class e implements i02<b57, j59> {
        public static final e a = new e();

        @Override // defpackage.i02
        public final j59 convert(b57 b57Var) {
            b57Var.close();
            return j59.a;
        }
    }

    public static final class f implements i02<b57, Void> {
        public static final f a = new f();

        @Override // defpackage.i02
        public final Void convert(b57 b57Var) {
            b57Var.close();
            return null;
        }
    }

    @Override // i02.a
    public final i02 a(Type type) {
        if (g37.class.isAssignableFrom(kb9.e(type))) {
            return b.a;
        }
        return null;
    }

    @Override // i02.a
    public final i02<b57, ?> b(Type type, Annotation[] annotationArr, n67 n67Var) {
        if (type == b57.class) {
            return kb9.h(annotationArr, m98.class) ? c.a : a.a;
        }
        if (type == Void.class) {
            return f.a;
        }
        if (kb9.b && type == j59.class) {
            return e.a;
        }
        return null;
    }
}
