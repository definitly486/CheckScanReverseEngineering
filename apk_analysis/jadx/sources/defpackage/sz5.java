package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class sz5 extends i02.a {

    public static final class a<T> implements i02<b57, Optional<T>> {
        public final i02<b57, T> a;

        public a(i02<b57, T> i02Var) {
            this.a = i02Var;
        }

        @Override // defpackage.i02
        public final Object convert(b57 b57Var) {
            return Optional.ofNullable(this.a.convert(b57Var));
        }
    }

    @Override // i02.a
    public final i02<b57, ?> b(Type type, Annotation[] annotationArr, n67 n67Var) {
        if (kb9.e(type) != Optional.class) {
            return null;
        }
        return new a(n67Var.d(kb9.d(0, (ParameterizedType) type), annotationArr));
    }
}
