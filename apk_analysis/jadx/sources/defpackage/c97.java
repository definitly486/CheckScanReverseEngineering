package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class c97 extends gy0.a {
    @Override // gy0.a
    public final gy0 a(Type type, Annotation[] annotationArr) {
        Type typeD;
        boolean z;
        boolean z2;
        String str;
        Class<?> clsE = kb9.e(type);
        if (clsE == qp1.class) {
            return new b97(Void.class, false, true, false, false, false, true);
        }
        boolean z3 = clsE == gg3.class;
        boolean z4 = clsE == mz7.class;
        boolean z5 = clsE == a75.class;
        if (clsE != tq5.class && !z3 && !z4 && !z5) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            if (z3) {
                str = "Flowable";
            } else if (z4) {
                str = "Single";
            } else {
                str = z5 ? "Maybe" : "Observable";
            }
            eq.e("<? extends Foo>", ad2.d(str, " return type must be parameterized as ", str, "<Foo> or ", str));
            return null;
        }
        Type typeD2 = kb9.d(0, (ParameterizedType) type);
        Class<?> clsE2 = kb9.e(typeD2);
        if (clsE2 == a57.class) {
            if (!(typeD2 instanceof ParameterizedType)) {
                ah.f("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
                return null;
            }
            typeD = kb9.d(0, (ParameterizedType) typeD2);
            z2 = false;
            z = false;
        } else if (clsE2 != m57.class) {
            typeD = typeD2;
            z = true;
            z2 = false;
        } else {
            if (!(typeD2 instanceof ParameterizedType)) {
                ah.f("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                return null;
            }
            typeD = kb9.d(0, (ParameterizedType) typeD2);
            z2 = true;
            z = false;
        }
        return new b97(typeD, z2, z, z3, z4, z5, false);
    }
}
