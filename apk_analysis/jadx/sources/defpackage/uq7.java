package defpackage;

import com.google.firebase.perf.FirebasePerformance;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.net.URI;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.a;

/* JADX INFO: loaded from: classes5.dex */
public abstract class uq7<T> {
    /* JADX WARN: Code duplicated, block: B:386:0x08d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:387:0x08db  */
    /* JADX WARN: Code duplicated, block: B:588:0x08f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x08dd A[SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static dz3 b(n67 n67Var, Class cls, Method method) {
        Type genericReturnType;
        boolean z;
        boolean z2;
        boolean z3;
        h36<?> h36Var;
        int i;
        int i2;
        h36<?>[] h36VarArr;
        int i3;
        int i4;
        h36<?> oVar;
        h36<?> gVar;
        h36<?> g36Var;
        h36<?> g36Var2;
        m37.a aVar = new m37.a(n67Var, cls, method);
        Annotation[] annotationArr = aVar.d;
        int length = annotationArr.length;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            String str = FirebasePerformance.HttpMethod.HEAD;
            boolean z4 = true;
            h36<?> h36Var2 = null;
            if (i6 >= length) {
                if (aVar.o == null) {
                    throw kb9.i(method, null, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
                }
                if (!aVar.p) {
                    if (aVar.r) {
                        throw kb9.i(method, null, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                    if (aVar.q) {
                        throw kb9.i(method, null, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                Annotation[][] annotationArr2 = aVar.e;
                int length2 = annotationArr2.length;
                aVar.w = new h36[length2];
                int i7 = length2 - 1;
                int i8 = 0;
                while (i8 < length2) {
                    h36<?>[] h36VarArr2 = aVar.w;
                    Type type = aVar.f[i8];
                    Annotation[] annotationArr3 = annotationArr2[i8];
                    int i9 = i8 == i7 ? 1 : i5;
                    if (annotationArr3 != null) {
                        int length3 = annotationArr3.length;
                        h36Var = h36Var2;
                        int i10 = i5;
                        while (i10 < length3) {
                            Annotation annotation = annotationArr3[i10];
                            Annotation[][] annotationArr4 = annotationArr2;
                            int i11 = length2;
                            if (annotation instanceof g99) {
                                aVar.c(i8, type);
                                if (aVar.n) {
                                    throw kb9.j(method, i8, "Multiple @Url method annotations found.", new Object[0]);
                                }
                                if (aVar.j) {
                                    throw kb9.j(method, i8, "@Path parameters may not be used with @Url.", new Object[0]);
                                }
                                if (aVar.k) {
                                    throw kb9.j(method, i8, "A @Url parameter must not come after a @Query.", new Object[0]);
                                }
                                if (aVar.l) {
                                    throw kb9.j(method, i8, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                                }
                                if (aVar.m) {
                                    throw kb9.j(method, i8, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                                }
                                if (aVar.s != null) {
                                    throw kb9.j(method, i8, "@Url cannot be used with @%s URL", aVar.o);
                                }
                                aVar.n = true;
                                if (type != fz3.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                    throw kb9.j(method, i8, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                }
                                oVar = new h36.n(i8, method);
                                i = i7;
                            } else {
                                i = i7;
                                boolean z5 = annotation instanceof k46;
                                n67 n67Var2 = aVar.a;
                                if (z5) {
                                    aVar.c(i8, type);
                                    if (aVar.k) {
                                        throw kb9.j(method, i8, "A @Path parameter must not come after a @Query.", new Object[0]);
                                    }
                                    if (aVar.l) {
                                        throw kb9.j(method, i8, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                                    }
                                    if (aVar.m) {
                                        throw kb9.j(method, i8, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                                    }
                                    if (aVar.n) {
                                        throw kb9.j(method, i8, "@Path parameters may not be used with @Url.", new Object[0]);
                                    }
                                    if (aVar.s == null) {
                                        throw kb9.j(method, i8, "@Path can only be used with relative url on @%s", aVar.o);
                                    }
                                    aVar.j = true;
                                    k46 k46Var = (k46) annotation;
                                    String strValue = k46Var.value();
                                    if (!m37.a.z.matcher(strValue).matches()) {
                                        throw kb9.j(method, i8, "@Path parameter name must match %s. Found: %s", m37.a.y.pattern(), strValue);
                                    }
                                    if (!aVar.v.contains(strValue)) {
                                        throw kb9.j(method, i8, "URL \"%s\" does not contain \"{%s}\".", aVar.s, strValue);
                                    }
                                    n67Var2.e(type, annotationArr3);
                                    oVar = new h36.i(aVar.c, i8, strValue, k46Var.encoded());
                                } else {
                                    i2 = i10;
                                    h36VarArr = h36VarArr2;
                                    if (annotation instanceof lv6) {
                                        aVar.c(i8, type);
                                        lv6 lv6Var = (lv6) annotation;
                                        String strValue2 = lv6Var.value();
                                        boolean zEncoded = lv6Var.encoded();
                                        i3 = i9;
                                        Class<?> clsE = kb9.e(type);
                                        i4 = length3;
                                        aVar.k = true;
                                        if (!Iterable.class.isAssignableFrom(clsE)) {
                                            if (clsE.isArray()) {
                                                n67Var2.e(m37.a.a(clsE.getComponentType()), annotationArr3);
                                                g36Var2 = new g36(new h36.j(strValue2, zEncoded));
                                            } else {
                                                n67Var2.e(type, annotationArr3);
                                                oVar = new h36.j<>(strValue2, zEncoded);
                                            }
                                            str = str;
                                        } else {
                                            if (!(type instanceof ParameterizedType)) {
                                                throw kb9.j(method, i8, clsE.getSimpleName() + " must include generic type (e.g., " + clsE.getSimpleName() + "<String>)", new Object[0]);
                                            }
                                            n67Var2.e(kb9.d(0, (ParameterizedType) type), annotationArr3);
                                            g36Var2 = new f36(new h36.j(strValue2, zEncoded));
                                        }
                                        oVar = g36Var2;
                                        str = str;
                                    } else {
                                        i3 = i9;
                                        i4 = length3;
                                        if (annotation instanceof nv6) {
                                            aVar.c(i8, type);
                                            boolean zEncoded2 = ((nv6) annotation).encoded();
                                            Class<?> clsE2 = kb9.e(type);
                                            aVar.l = true;
                                            if (Iterable.class.isAssignableFrom(clsE2)) {
                                                if (!(type instanceof ParameterizedType)) {
                                                    throw kb9.j(method, i8, clsE2.getSimpleName() + " must include generic type (e.g., " + clsE2.getSimpleName() + "<String>)", new Object[0]);
                                                }
                                                n67Var2.e(kb9.d(0, (ParameterizedType) type), annotationArr3);
                                                g36Var2 = new f36(new h36.l(zEncoded2));
                                            } else if (clsE2.isArray()) {
                                                n67Var2.e(m37.a.a(clsE2.getComponentType()), annotationArr3);
                                                g36Var2 = new g36(new h36.l(zEncoded2));
                                            } else {
                                                n67Var2.e(type, annotationArr3);
                                                oVar = new h36.l<>(zEncoded2);
                                            }
                                            oVar = g36Var2;
                                        } else if (annotation instanceof mv6) {
                                            aVar.c(i8, type);
                                            Class<?> clsE3 = kb9.e(type);
                                            aVar.m = true;
                                            if (!Map.class.isAssignableFrom(clsE3)) {
                                                throw kb9.j(method, i8, "@QueryMap parameter type must be Map.", new Object[0]);
                                            }
                                            Type typeF = kb9.f(type, clsE3);
                                            if (!(typeF instanceof ParameterizedType)) {
                                                throw kb9.j(method, i8, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                            }
                                            ParameterizedType parameterizedType = (ParameterizedType) typeF;
                                            Type typeD = kb9.d(0, parameterizedType);
                                            if (String.class != typeD) {
                                                throw kb9.j(method, i8, "@QueryMap keys must be of type String: " + typeD, new Object[0]);
                                            }
                                            n67Var2.e(kb9.d(1, parameterizedType), annotationArr3);
                                            oVar = new h36.k<>(method, i8, ((mv6) annotation).encoded());
                                        } else {
                                            str = str;
                                            if (annotation instanceof bv3) {
                                                aVar.c(i8, type);
                                                bv3 bv3Var = (bv3) annotation;
                                                String strValue3 = bv3Var.value();
                                                Class<?> clsE4 = kb9.e(type);
                                                if (Iterable.class.isAssignableFrom(clsE4)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw kb9.j(method, i8, clsE4.getSimpleName() + " must include generic type (e.g., " + clsE4.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    n67Var2.e(kb9.d(0, (ParameterizedType) type), annotationArr3);
                                                    gVar = new f36(new h36.d(strValue3, bv3Var.allowUnsafeNonAsciiValues()));
                                                } else if (clsE4.isArray()) {
                                                    n67Var2.e(m37.a.a(clsE4.getComponentType()), annotationArr3);
                                                    gVar = new g36(new h36.d(strValue3, bv3Var.allowUnsafeNonAsciiValues()));
                                                } else {
                                                    n67Var2.e(type, annotationArr3);
                                                    oVar = new h36.d<>(strValue3, bv3Var.allowUnsafeNonAsciiValues());
                                                }
                                                oVar = gVar;
                                            } else if (annotation instanceof fv3) {
                                                if (type == jv3.class) {
                                                    oVar = new h36.f(i8, method);
                                                } else {
                                                    aVar.c(i8, type);
                                                    Class<?> clsE5 = kb9.e(type);
                                                    if (!Map.class.isAssignableFrom(clsE5)) {
                                                        throw kb9.j(method, i8, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                                                    }
                                                    Type typeF2 = kb9.f(type, clsE5);
                                                    if (!(typeF2 instanceof ParameterizedType)) {
                                                        throw kb9.j(method, i8, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                    ParameterizedType parameterizedType2 = (ParameterizedType) typeF2;
                                                    Type typeD2 = kb9.d(0, parameterizedType2);
                                                    if (String.class != typeD2) {
                                                        throw kb9.j(method, i8, "@HeaderMap keys must be of type String: " + typeD2, new Object[0]);
                                                    }
                                                    n67Var2.e(kb9.d(1, parameterizedType2), annotationArr3);
                                                    oVar = new h36.e<>(method, i8, ((fv3) annotation).allowUnsafeNonAsciiValues());
                                                }
                                            } else if (annotation instanceof w83) {
                                                aVar.c(i8, type);
                                                if (!aVar.q) {
                                                    throw kb9.j(method, i8, "@Field parameters can only be used with form encoding.", new Object[0]);
                                                }
                                                w83 w83Var = (w83) annotation;
                                                String strValue4 = w83Var.value();
                                                boolean zEncoded3 = w83Var.encoded();
                                                aVar.g = true;
                                                Class<?> clsE6 = kb9.e(type);
                                                if (Iterable.class.isAssignableFrom(clsE6)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw kb9.j(method, i8, clsE6.getSimpleName() + " must include generic type (e.g., " + clsE6.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    n67Var2.e(kb9.d(0, (ParameterizedType) type), annotationArr3);
                                                    gVar = new f36(new h36.b(strValue4, zEncoded3));
                                                } else if (clsE6.isArray()) {
                                                    n67Var2.e(m37.a.a(clsE6.getComponentType()), annotationArr3);
                                                    gVar = new g36(new h36.b(strValue4, zEncoded3));
                                                } else {
                                                    n67Var2.e(type, annotationArr3);
                                                    oVar = new h36.b<>(strValue4, zEncoded3);
                                                }
                                                oVar = gVar;
                                            } else if (annotation instanceof z83) {
                                                aVar.c(i8, type);
                                                if (!aVar.q) {
                                                    throw kb9.j(method, i8, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                                                }
                                                Class<?> clsE7 = kb9.e(type);
                                                if (!Map.class.isAssignableFrom(clsE7)) {
                                                    throw kb9.j(method, i8, "@FieldMap parameter type must be Map.", new Object[0]);
                                                }
                                                Type typeF3 = kb9.f(type, clsE7);
                                                if (!(typeF3 instanceof ParameterizedType)) {
                                                    throw kb9.j(method, i8, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                }
                                                ParameterizedType parameterizedType3 = (ParameterizedType) typeF3;
                                                Type typeD3 = kb9.d(0, parameterizedType3);
                                                if (String.class != typeD3) {
                                                    throw kb9.j(method, i8, "@FieldMap keys must be of type String: " + typeD3, new Object[0]);
                                                }
                                                n67Var2.e(kb9.d(1, parameterizedType3), annotationArr3);
                                                aVar.g = true;
                                                oVar = new h36.c<>(method, i8, ((z83) annotation).encoded());
                                            } else if (annotation instanceof b46) {
                                                aVar.c(i8, type);
                                                if (!aVar.r) {
                                                    throw kb9.j(method, i8, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                                                }
                                                b46 b46Var = (b46) annotation;
                                                aVar.h = true;
                                                String strValue5 = b46Var.value();
                                                Class<?> clsE8 = kb9.e(type);
                                                if (strValue5.isEmpty()) {
                                                    boolean zIsAssignableFrom = Iterable.class.isAssignableFrom(clsE8);
                                                    h36.m mVar = h36.m.a;
                                                    if (zIsAssignableFrom) {
                                                        if (!(type instanceof ParameterizedType)) {
                                                            throw kb9.j(method, i8, clsE8.getSimpleName() + " must include generic type (e.g., " + clsE8.getSimpleName() + "<String>)", new Object[0]);
                                                        }
                                                        if (!lg5.c.class.isAssignableFrom(kb9.e(kb9.d(0, (ParameterizedType) type)))) {
                                                            throw kb9.j(method, i8, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        oVar = new f36(mVar);
                                                    } else if (clsE8.isArray()) {
                                                        if (!lg5.c.class.isAssignableFrom(clsE8.getComponentType())) {
                                                            throw kb9.j(method, i8, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        oVar = new g36(mVar);
                                                    } else {
                                                        if (!lg5.c.class.isAssignableFrom(clsE8)) {
                                                            throw kb9.j(method, i8, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        oVar = mVar;
                                                    }
                                                } else {
                                                    jv3 jv3VarC = jv3.b.c("Content-Disposition", me0.c("form-data; name=\"", strValue5, "\""), "Content-Transfer-Encoding", b46Var.encoding());
                                                    if (Iterable.class.isAssignableFrom(clsE8)) {
                                                        if (!(type instanceof ParameterizedType)) {
                                                            throw kb9.j(method, i8, clsE8.getSimpleName() + " must include generic type (e.g., " + clsE8.getSimpleName() + "<String>)", new Object[0]);
                                                        }
                                                        Type typeD4 = kb9.d(0, (ParameterizedType) type);
                                                        if (lg5.c.class.isAssignableFrom(kb9.e(typeD4))) {
                                                            throw kb9.j(method, i8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        g36Var = new f36(new h36.g(method, i8, jv3VarC, n67Var2.c(typeD4, annotationArr3, annotationArr)));
                                                    } else if (clsE8.isArray()) {
                                                        Class<?> clsA = m37.a.a(clsE8.getComponentType());
                                                        if (lg5.c.class.isAssignableFrom(clsA)) {
                                                            throw kb9.j(method, i8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        g36Var = new g36(new h36.g(method, i8, jv3VarC, n67Var2.c(clsA, annotationArr3, annotationArr)));
                                                    } else {
                                                        if (lg5.c.class.isAssignableFrom(clsE8)) {
                                                            throw kb9.j(method, i8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        gVar = new h36.g<>(method, i8, jv3VarC, n67Var2.c(type, annotationArr3, annotationArr));
                                                        oVar = gVar;
                                                    }
                                                    oVar = g36Var;
                                                }
                                            } else if (annotation instanceof c46) {
                                                aVar.c(i8, type);
                                                if (!aVar.r) {
                                                    throw kb9.j(method, i8, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                                                }
                                                aVar.h = true;
                                                Class<?> clsE9 = kb9.e(type);
                                                if (!Map.class.isAssignableFrom(clsE9)) {
                                                    throw kb9.j(method, i8, "@PartMap parameter type must be Map.", new Object[0]);
                                                }
                                                Type typeF4 = kb9.f(type, clsE9);
                                                if (!(typeF4 instanceof ParameterizedType)) {
                                                    throw kb9.j(method, i8, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                }
                                                ParameterizedType parameterizedType4 = (ParameterizedType) typeF4;
                                                Type typeD5 = kb9.d(0, parameterizedType4);
                                                if (String.class != typeD5) {
                                                    throw kb9.j(method, i8, "@PartMap keys must be of type String: " + typeD5, new Object[0]);
                                                }
                                                Type typeD6 = kb9.d(1, parameterizedType4);
                                                if (lg5.c.class.isAssignableFrom(kb9.e(typeD6))) {
                                                    throw kb9.j(method, i8, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                                                }
                                                oVar = new h36.h<>(method, i8, n67Var2.c(typeD6, annotationArr3, annotationArr), ((c46) annotation).encoding());
                                            } else if (annotation instanceof lk0) {
                                                aVar.c(i8, type);
                                                if (aVar.q || aVar.r) {
                                                    throw kb9.j(method, i8, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                                                }
                                                if (aVar.i) {
                                                    throw kb9.j(method, i8, "Multiple @Body method annotations found.", new Object[0]);
                                                }
                                                try {
                                                    i02<T, g37> i02VarC = n67Var2.c(type, annotationArr3, annotationArr);
                                                    aVar.i = true;
                                                    oVar = new h36.a<>(method, i8, i02VarC);
                                                } catch (RuntimeException e) {
                                                    throw kb9.k(method, e, i8, "Unable to create @Body converter for %s", type);
                                                }
                                            } else if (annotation instanceof kj8) {
                                                aVar.c(i8, type);
                                                Class<?> clsA2 = m37.a.a(kb9.e(type));
                                                for (int i12 = i8 - 1; i12 >= 0; i12--) {
                                                    h36<?> h36Var3 = aVar.w[i12];
                                                    if ((h36Var3 instanceof h36.o) && ((h36.o) h36Var3).a.equals(clsA2)) {
                                                        throw kb9.j(method, i8, "@Tag type " + clsA2.getName() + " is duplicate of " + a96.b.a(i12, method) + " and would always overwrite its value.", new Object[0]);
                                                    }
                                                }
                                                oVar = new h36.o<>(clsA2);
                                            } else {
                                                oVar = null;
                                            }
                                        }
                                        str = str;
                                    }
                                }
                                if (oVar != null) {
                                    if (h36Var == null) {
                                        throw kb9.j(method, i8, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                                    }
                                    h36Var = oVar;
                                }
                                i10 = i2 + 1;
                                annotationArr2 = annotationArr4;
                                i7 = i;
                                length2 = i11;
                                i9 = i3;
                                h36VarArr2 = h36VarArr;
                                length3 = i4;
                                str = str;
                            }
                            i2 = i10;
                            h36VarArr = h36VarArr2;
                            i3 = i9;
                            i4 = length3;
                            if (oVar != null) {
                                if (h36Var == null) {
                                    throw kb9.j(method, i8, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                                }
                                h36Var = oVar;
                            }
                            i10 = i2 + 1;
                            annotationArr2 = annotationArr4;
                            i7 = i;
                            length2 = i11;
                            i9 = i3;
                            h36VarArr2 = h36VarArr;
                            length3 = i4;
                            str = str;
                        }
                    } else {
                        h36Var = null;
                    }
                    Annotation[][] annotationArr5 = annotationArr2;
                    int i13 = length2;
                    String str2 = str;
                    int i14 = i7;
                    h36<?>[] h36VarArr3 = h36VarArr2;
                    int i15 = i9;
                    if (h36Var == null) {
                        if (i15 != 0) {
                            try {
                                if (kb9.e(type) == e02.class) {
                                    aVar.x = true;
                                    h36Var = null;
                                }
                            } catch (NoClassDefFoundError unused) {
                            }
                        }
                        throw kb9.j(method, i8, "No Retrofit annotation found.", new Object[0]);
                    }
                    h36VarArr3[i8] = h36Var;
                    i8++;
                    annotationArr2 = annotationArr5;
                    i7 = i14;
                    length2 = i13;
                    str = str2;
                    i5 = 0;
                    h36Var2 = null;
                }
                String str3 = str;
                if (aVar.s == null && !aVar.n) {
                    throw kb9.i(method, null, "Missing either @%s URL or @Url parameter.", aVar.o);
                }
                boolean z6 = aVar.q;
                if (!z6 && !aVar.r && !aVar.p && aVar.i) {
                    throw kb9.i(method, null, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z6 && !aVar.g) {
                    throw kb9.i(method, null, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (aVar.r && !aVar.h) {
                    throw kb9.i(method, null, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                m37 m37Var = new m37(aVar);
                Type genericReturnType2 = method.getGenericReturnType();
                if (kb9.g(genericReturnType2)) {
                    throw kb9.i(method, null, "Method return type must not include a type variable or wildcard: %s", genericReturnType2);
                }
                if (genericReturnType2 == Void.TYPE) {
                    throw kb9.i(method, null, "Service methods cannot return void.", new Object[0]);
                }
                Annotation[] annotations = method.getAnnotations();
                boolean z7 = m37Var.l;
                if (z7) {
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    Type typeD7 = ((ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]).getActualTypeArguments()[0];
                    if (typeD7 instanceof WildcardType) {
                        typeD7 = ((WildcardType) typeD7).getLowerBounds()[0];
                    }
                    if (kb9.e(typeD7) == a57.class && (typeD7 instanceof ParameterizedType)) {
                        typeD7 = kb9.d(0, (ParameterizedType) typeD7);
                        z2 = true;
                        z3 = false;
                    } else {
                        if (kb9.e(typeD7) == fy0.class) {
                            throw kb9.i(method, null, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", kb9.d(0, (ParameterizedType) typeD7));
                        }
                        z3 = kb9.b && typeD7 == j59.class;
                        z2 = false;
                    }
                    genericReturnType = new kb9.b(null, fy0.class, typeD7);
                    if (!kb9.h(annotations, y18.class)) {
                        Annotation[] annotationArr6 = new Annotation[annotations.length + 1];
                        annotationArr6[0] = z18.b;
                        System.arraycopy(annotations, 0, annotationArr6, 1, annotations.length);
                        annotations = annotationArr6;
                    }
                    z = z3;
                } else {
                    genericReturnType = method.getGenericReturnType();
                    z = false;
                    z2 = false;
                }
                try {
                    gy0<?, ?> gy0VarA = n67Var.a(genericReturnType, annotations);
                    Type typeA = gy0VarA.a();
                    if (typeA == z47.class) {
                        throw kb9.i(method, null, "'" + kb9.e(typeA).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
                    }
                    if (typeA == a57.class) {
                        throw kb9.i(method, null, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                    }
                    if (m37Var.d.equals(str3) && !Void.class.equals(typeA) && (!kb9.b || typeA != j59.class)) {
                        throw kb9.i(method, null, "HEAD method must use Void or Unit as response type.", new Object[0]);
                    }
                    try {
                        i02<b57, T> i02VarD = n67Var.d(typeA, method.getAnnotations());
                        a.InterfaceC0310a interfaceC0310a = n67Var.b;
                        if (z7) {
                            return z2 ? new dz3.c(m37Var, interfaceC0310a, i02VarD, gy0VarA) : new dz3.b(m37Var, interfaceC0310a, i02VarD, gy0VarA, z);
                        }
                        return new dz3.a(m37Var, interfaceC0310a, i02VarD, gy0VarA);
                    } catch (RuntimeException e2) {
                        throw kb9.i(method, e2, "Unable to create converter for %s", typeA);
                    }
                } catch (RuntimeException e3) {
                    throw kb9.i(method, e3, "Unable to create call adapter for %s", genericReturnType);
                }
            }
            Annotation annotation2 = annotationArr[i6];
            if (annotation2 instanceof o72) {
                aVar.b(FirebasePerformance.HttpMethod.DELETE, ((o72) annotation2).value(), false);
            } else if (annotation2 instanceof gn3) {
                aVar.b("GET", ((gn3) annotation2).value(), false);
            } else if (annotation2 instanceof zt3) {
                aVar.b(FirebasePerformance.HttpMethod.HEAD, ((zt3) annotation2).value(), false);
            } else if (annotation2 instanceof y06) {
                aVar.b(FirebasePerformance.HttpMethod.PATCH, ((y06) annotation2).value(), true);
            } else if (annotation2 instanceof z06) {
                aVar.b("POST", ((z06) annotation2).value(), true);
            } else if (annotation2 instanceof a16) {
                aVar.b(FirebasePerformance.HttpMethod.PUT, ((a16) annotation2).value(), true);
            } else if (annotation2 instanceof lq5) {
                aVar.b(FirebasePerformance.HttpMethod.OPTIONS, ((lq5) annotation2).value(), false);
            } else if (annotation2 instanceof au3) {
                au3 au3Var = (au3) annotation2;
                aVar.b(au3Var.method(), au3Var.path(), au3Var.hasBody());
            } else if (annotation2 instanceof kv3) {
                kv3 kv3Var = (kv3) annotation2;
                String[] strArrValue = kv3Var.value();
                if (strArrValue.length == 0) {
                    throw kb9.i(method, null, "@Headers annotation is empty.", new Object[0]);
                }
                boolean zAllowUnsafeNonAsciiValues = kv3Var.allowUnsafeNonAsciiValues();
                jv3.a aVar2 = new jv3.a();
                int length4 = strArrValue.length;
                int i16 = 0;
                while (i16 < length4) {
                    String str4 = strArrValue[i16];
                    int iIndexOf = str4.indexOf(58);
                    boolean z8 = z4;
                    if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str4.length() - 1) {
                        throw kb9.i(method, null, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str4);
                    }
                    String strSubstring = str4.substring(0, iIndexOf);
                    String strTrim = str4.substring(iIndexOf + 1).trim();
                    if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                        try {
                            Pattern pattern = j95.e;
                            aVar.u = j95.a.a(strTrim);
                        } catch (IllegalArgumentException e4) {
                            throw kb9.i(method, e4, "Malformed content type: %s", strTrim);
                        }
                    } else if (zAllowUnsafeNonAsciiValues) {
                        aVar2.d(strSubstring, strTrim);
                    } else {
                        aVar2.a(strSubstring, strTrim);
                    }
                    i16++;
                    z4 = z8;
                }
                aVar.t = aVar2.e();
            } else if (annotation2 instanceof kg5) {
                if (aVar.q) {
                    throw kb9.i(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                aVar.r = true;
            } else if (!(annotation2 instanceof oi3)) {
                continue;
            } else {
                if (aVar.r) {
                    throw kb9.i(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                aVar.q = true;
            }
            i6++;
        }
    }

    public abstract T a(Object obj, Object[] objArr);
}
