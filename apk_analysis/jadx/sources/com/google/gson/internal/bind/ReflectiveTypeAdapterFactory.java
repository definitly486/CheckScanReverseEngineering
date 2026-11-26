package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.b17;
import defpackage.b93;
import defpackage.bq7;
import defpackage.me0;
import defpackage.mg;
import defpackage.mq5;
import defpackage.ot3;
import defpackage.px1;
import defpackage.q13;
import defpackage.t39;
import defpackage.x39;
import defpackage.xu;
import defpackage.y07;
import defpackage.yb4;
import defpackage.z07;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ReflectiveTypeAdapterFactory implements t39 {
    public final px1 b;
    public final b93 c;
    public final Excluder d;
    public final JsonAdapterAnnotationTypeAdapterFactory e;
    public final List<y07> f;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$1, reason: invalid class name */
    public class AnonymousClass1<T> extends TypeAdapter<T> {
        @Override // com.google.gson.TypeAdapter
        public final T b(JsonReader jsonReader) throws IOException {
            jsonReader.skipValue();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.nullValue();
        }

        public final String toString() {
            return "AnonymousOrNonStaticLocalClassAdapter";
        }
    }

    public static abstract class Adapter<T, A> extends TypeAdapter<T> {
        public final b a;

        public Adapter(b bVar) {
            this.a = bVar;
        }

        @Override // com.google.gson.TypeAdapter
        public final T b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            A aD = d();
            Map<String, a> map = this.a.a;
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    a aVar = map.get(jsonReader.nextName());
                    if (aVar == null) {
                        jsonReader.skipValue();
                    } else {
                        f(aD, jsonReader, aVar);
                    }
                }
                jsonReader.endObject();
                return e(aD);
            } catch (IllegalAccessException e) {
                b17.a aVar2 = b17.a;
                mg.e("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
                return null;
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<a> it = this.a.b.iterator();
                while (it.hasNext()) {
                    it.next().c(jsonWriter, t);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                b17.a aVar = b17.a;
                mg.e("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            }
        }

        public abstract A d();

        public abstract T e(A a);

        public abstract void f(A a, JsonReader jsonReader, a aVar);
    }

    public static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        public final mq5<T> b;

        public FieldReflectionAdapter(mq5<T> mq5Var, b bVar) {
            super(bVar);
            this.b = mq5Var;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final T d() {
            return this.b.c();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final T e(T t) {
            return t;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void f(T t, JsonReader jsonReader, a aVar) {
            aVar.b(jsonReader, t);
        }
    }

    public static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        public static final HashMap e;
        public final Constructor<T> b;
        public final Object[] c;
        public final HashMap d;

        static {
            HashMap map = new HashMap();
            map.put(Byte.TYPE, (byte) 0);
            map.put(Short.TYPE, (short) 0);
            map.put(Integer.TYPE, 0);
            map.put(Long.TYPE, 0L);
            map.put(Float.TYPE, Float.valueOf(0.0f));
            map.put(Double.TYPE, Double.valueOf(0.0d));
            map.put(Character.TYPE, (char) 0);
            map.put(Boolean.TYPE, Boolean.FALSE);
            e = map;
        }

        public RecordAdapter(Class<T> cls, b bVar, boolean z) {
            super(bVar);
            this.d = new HashMap();
            b17.a aVar = b17.a;
            Constructor<T> constructorB = aVar.b(cls);
            this.b = constructorB;
            if (z) {
                ReflectiveTypeAdapterFactory.a(null, constructorB);
            } else {
                b17.f(constructorB);
            }
            String[] strArrC = aVar.c(cls);
            for (int i = 0; i < strArrC.length; i++) {
                this.d.put(strArrC[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.b.getParameterTypes();
            this.c = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.c[i2] = e.get(parameterTypes[i2]);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object[] d() {
            return (Object[]) this.c.clone();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object e(Object[] objArr) {
            Object[] objArr2 = objArr;
            Constructor<T> constructor = this.b;
            try {
                return constructor.newInstance(objArr2);
            } catch (IllegalAccessException e2) {
                b17.a aVar = b17.a;
                mg.e("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
                return null;
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Failed to invoke constructor '" + b17.b(constructor) + "' with args " + Arrays.toString(objArr2), e);
            } catch (InstantiationException e4) {
                e = e4;
                throw new RuntimeException("Failed to invoke constructor '" + b17.b(constructor) + "' with args " + Arrays.toString(objArr2), e);
            } catch (InvocationTargetException e5) {
                mg.e("Failed to invoke constructor '" + b17.b(constructor) + "' with args " + Arrays.toString(objArr2), e5.getCause());
                return null;
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void f(Object[] objArr, JsonReader jsonReader, a aVar) {
            Object[] objArr2 = objArr;
            String str = aVar.c;
            Integer num = (Integer) this.d.get(str);
            if (num != null) {
                aVar.a(jsonReader, num.intValue(), objArr2);
            } else {
                xu.b("Could not find the index in the constructor '", b17.b(this.b), "' for field with name '", str, "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
            }
        }
    }

    public static abstract class a {
        public final String a;
        public final Field b;
        public final String c;

        public a(String str, Field field) {
            this.a = str;
            this.b = field;
            this.c = field.getName();
        }

        public abstract void a(JsonReader jsonReader, int i, Object[] objArr);

        public abstract void b(JsonReader jsonReader, Object obj);

        public abstract void c(JsonWriter jsonWriter, Object obj);
    }

    public static class b {
        public static final b c = new b(Collections.EMPTY_LIST, Collections.EMPTY_MAP);
        public final Map<String, a> a;
        public final List<a> b;

        public b(List list, Map map) {
            this.a = map;
            this.b = list;
        }
    }

    public ReflectiveTypeAdapterFactory(px1 px1Var, b93 b93Var, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<y07> list) {
        this.b = px1Var;
        this.c = b93Var;
        this.d = excluder;
        this.e = jsonAdapterAnnotationTypeAdapterFactory;
        this.f = list;
    }

    public static <M extends AccessibleObject & Member> void a(Object obj, M m) {
        if (Modifier.isStatic(m.getModifiers())) {
            obj = null;
        }
        if (!z07.a.a.a(obj, m)) {
            throw new JsonIOException(b17.d(m, true).concat(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    public static void c(Class cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + b17.c(field) + " and " + b17.c(field2) + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("duplicate-fields"));
    }

    @Override // defpackage.t39
    public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
        Class<? super T> cls = x39Var.a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        b17.a aVar = b17.a;
        if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return new AnonymousClass1();
        }
        y07.a aVarA = z07.a(this.f, cls);
        if (aVarA != y07.a.BLOCK_ALL) {
            boolean z = aVarA == y07.a.BLOCK_INACCESSIBLE;
            return b17.a.d(cls) ? new RecordAdapter(cls, d(gson, x39Var, cls, z, true), z) : new FieldReflectionAdapter(this.b.b(x39Var, true), d(gson, x39Var, cls, z, false));
        }
        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + cls + ". Register a TypeAdapter for this type or adjust the access filter.");
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:? A[LOOP:2: B:88:0x01a2->B:115:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:55:0x0100  */
    /* JADX WARN: Code duplicated, block: B:56:0x0108  */
    /* JADX WARN: Code duplicated, block: B:62:0x0136  */
    /* JADX WARN: Code duplicated, block: B:68:0x014b  */
    /* JADX WARN: Code duplicated, block: B:71:0x0158  */
    /* JADX WARN: Code duplicated, block: B:72:0x0169  */
    /* JADX WARN: Code duplicated, block: B:74:0x0173  */
    /* JADX WARN: Code duplicated, block: B:75:0x0176  */
    /* JADX WARN: Code duplicated, block: B:77:0x0179  */
    /* JADX WARN: Code duplicated, block: B:79:0x017f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0181  */
    /* JADX WARN: Code duplicated, block: B:81:0x0183  */
    /* JADX WARN: Code duplicated, block: B:84:0x018e  */
    /* JADX WARN: Code duplicated, block: B:87:0x019e  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a8  */
    public final b d(Gson gson, x39<?> x39Var, Class<?> cls, boolean z, boolean z2) {
        boolean z3;
        Method method;
        bq7 bq7Var;
        List listAsList;
        String strA;
        List<String> listSingletonList;
        x39<?> x39Var2;
        Class<? super Object> cls2;
        boolean z4;
        int modifiers;
        boolean z5;
        yb4 yb4Var;
        Gson gson2;
        int i;
        TypeAdapter<?> typeAdapterG;
        boolean z6;
        TypeAdapter<?> typeAdapter;
        int i2;
        com.google.gson.internal.bind.a aVar;
        a aVar2;
        a aVar3;
        TypeAdapter<?> typeAdapterRuntimeTypeWrapper;
        if (cls.isInterface()) {
            return b.c;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        x39<?> x39Var3 = x39Var;
        boolean z7 = z;
        Class<?> cls3 = cls;
        while (cls3 != Object.class) {
            Field[] declaredFields = cls3.getDeclaredFields();
            boolean z8 = true;
            if (cls3 != cls && declaredFields.length > 0) {
                y07.a aVarA = z07.a(this.f, cls3);
                if (aVarA == y07.a.BLOCK_ALL) {
                    throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + cls3 + " (supertype of " + cls + "). Register a TypeAdapter for this type or adjust the access filter.");
                }
                z7 = aVarA == y07.a.BLOCK_INACCESSIBLE;
            }
            boolean z9 = z7;
            int length = declaredFields.length;
            int i3 = 0;
            while (i3 < length) {
                Field field = declaredFields[i3];
                boolean zE = e(field, z8);
                boolean zE2 = e(field, false);
                if (zE || zE2) {
                    if (z2) {
                        if (Modifier.isStatic(field.getModifiers())) {
                            z3 = false;
                        } else {
                            Method methodA = b17.a.a(cls3, field);
                            if (!z9) {
                                b17.f(methodA);
                            }
                            if (methodA.getAnnotation(bq7.class) != null && field.getAnnotation(bq7.class) == null) {
                                throw new JsonIOException(me0.c("@SerializedName on ", b17.d(methodA, false), " is not supported"));
                            }
                            z3 = zE2;
                            method = methodA;
                        }
                        if (!z9 && method == null) {
                            b17.f(field);
                        }
                        Type typeG = ot3.g(x39Var3.b, cls3, field.getGenericType(), new HashMap());
                        bq7Var = (bq7) field.getAnnotation(bq7.class);
                        if (bq7Var == null) {
                            strA = this.c.a(field);
                            listAsList = Collections.EMPTY_LIST;
                        } else {
                            String strValue = bq7Var.value();
                            listAsList = Arrays.asList(bq7Var.alternate());
                            strA = strValue;
                        }
                        if (listAsList.isEmpty()) {
                            listSingletonList = Collections.singletonList(strA);
                        } else {
                            ArrayList arrayList = new ArrayList(listAsList.size() + 1);
                            arrayList.add(strA);
                            arrayList.addAll(listAsList);
                            listSingletonList = arrayList;
                        }
                        String str = (String) listSingletonList.get(0);
                        x39Var2 = new x39<>(typeG);
                        cls2 = x39Var2.a;
                        if (cls2 == null && cls2.isPrimitive()) {
                            z4 = z8;
                        } else {
                            z4 = false;
                        }
                        modifiers = field.getModifiers();
                        if (Modifier.isStatic(modifiers) || !Modifier.isFinal(modifiers)) {
                            z5 = false;
                        } else {
                            z5 = z8;
                        }
                        yb4Var = (yb4) field.getAnnotation(yb4.class);
                        if (yb4Var != null) {
                            i = i3;
                            gson2 = gson;
                            typeAdapterG = this.e.a(this.b, gson2, x39Var2, yb4Var, false);
                        } else {
                            gson2 = gson;
                            i = i3;
                            typeAdapterG = null;
                        }
                        if (typeAdapterG != null) {
                            z6 = z8;
                        } else {
                            z6 = false;
                        }
                        if (typeAdapterG == null) {
                            typeAdapterG = gson2.g(x39Var2);
                        }
                        if (zE) {
                            if (z6) {
                                typeAdapterRuntimeTypeWrapper = typeAdapterG;
                            } else {
                                typeAdapterRuntimeTypeWrapper = new TypeAdapterRuntimeTypeWrapper<>(gson2, typeAdapterG, x39Var2.b);
                            }
                            typeAdapter = typeAdapterRuntimeTypeWrapper;
                        } else {
                            typeAdapter = typeAdapterG;
                        }
                        i2 = length;
                        aVar = new com.google.gson.internal.bind.a(str, field, z9, method, typeAdapter, typeAdapterG, z4, z5);
                        if (z3) {
                            for (String str2 : listSingletonList) {
                                aVar3 = (a) linkedHashMap.put(str2, aVar);
                                if (aVar3 == null) {
                                    c(cls, str2, aVar3.b, field);
                                    throw null;
                                }
                            }
                        }
                        if (zE && (aVar2 = (a) linkedHashMap2.put(str, aVar)) != null) {
                            c(cls, str, aVar2.b, field);
                            throw null;
                        }
                    } else {
                        z3 = zE2;
                    }
                    method = null;
                    if (!z9) {
                        b17.f(field);
                    }
                    Type typeG2 = ot3.g(x39Var3.b, cls3, field.getGenericType(), new HashMap());
                    bq7Var = (bq7) field.getAnnotation(bq7.class);
                    if (bq7Var == null) {
                        strA = this.c.a(field);
                        listAsList = Collections.EMPTY_LIST;
                    } else {
                        String strValue2 = bq7Var.value();
                        listAsList = Arrays.asList(bq7Var.alternate());
                        strA = strValue2;
                    }
                    if (listAsList.isEmpty()) {
                        listSingletonList = Collections.singletonList(strA);
                    } else {
                        ArrayList arrayList2 = new ArrayList(listAsList.size() + 1);
                        arrayList2.add(strA);
                        arrayList2.addAll(listAsList);
                        listSingletonList = arrayList2;
                    }
                    String str3 = (String) listSingletonList.get(0);
                    x39Var2 = new x39<>(typeG2);
                    cls2 = x39Var2.a;
                    if (cls2 == null) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    modifiers = field.getModifiers();
                    if (Modifier.isStatic(modifiers)) {
                        z5 = false;
                    } else {
                        z5 = false;
                    }
                    yb4Var = (yb4) field.getAnnotation(yb4.class);
                    if (yb4Var != null) {
                        i = i3;
                        gson2 = gson;
                        typeAdapterG = this.e.a(this.b, gson2, x39Var2, yb4Var, false);
                    } else {
                        gson2 = gson;
                        i = i3;
                        typeAdapterG = null;
                    }
                    if (typeAdapterG != null) {
                        z6 = z8;
                    } else {
                        z6 = false;
                    }
                    if (typeAdapterG == null) {
                        typeAdapterG = gson2.g(x39Var2);
                    }
                    if (zE) {
                        if (z6) {
                            typeAdapterRuntimeTypeWrapper = typeAdapterG;
                        } else {
                            typeAdapterRuntimeTypeWrapper = new TypeAdapterRuntimeTypeWrapper<>(gson2, typeAdapterG, x39Var2.b);
                        }
                        typeAdapter = typeAdapterRuntimeTypeWrapper;
                    } else {
                        typeAdapter = typeAdapterG;
                    }
                    i2 = length;
                    aVar = new com.google.gson.internal.bind.a(str3, field, z9, method, typeAdapter, typeAdapterG, z4, z5);
                    if (z3) {
                        while (r5.hasNext()) {
                            aVar3 = (a) linkedHashMap.put(str2, aVar);
                            if (aVar3 == null) {
                                c(cls, str2, aVar3.b, field);
                                throw null;
                            }
                        }
                    }
                    if (zE) {
                        continue;
                    }
                } else {
                    i = i3;
                    z8 = z8;
                    i2 = length;
                }
                i3 = i + 1;
                z8 = z8;
                length = i2;
            }
            x39Var3 = new x39<>(ot3.g(x39Var3.b, cls3, cls3.getGenericSuperclass(), new HashMap()));
            cls3 = x39Var3.a;
            z7 = z9;
        }
        return new b(new ArrayList(linkedHashMap2.values()), linkedHashMap);
    }

    public final boolean e(Field field, boolean z) {
        boolean z2;
        Excluder excluder = this.d;
        excluder.getClass();
        if ((136 & field.getModifiers()) != 0 || field.isSynthetic() || excluder.c(field.getType(), z)) {
            z2 = true;
        } else {
            List<q13> list = z ? excluder.b : excluder.c;
            if (!list.isEmpty()) {
                Iterator<q13> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().b()) {
                            z2 = true;
                        }
                    }
                }
            }
            z2 = false;
        }
        return !z2;
    }
}
