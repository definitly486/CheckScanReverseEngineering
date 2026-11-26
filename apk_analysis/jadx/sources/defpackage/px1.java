package defpackage;

import com.google.gson.JsonIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: loaded from: classes4.dex */
public final class px1 {
    public final Map<Type, c64<?>> a;
    public final List<y07> b;

    public static final class a<T> implements mq5<T> {
        public final c64<T> b;

        public a(c64<T> c64Var, Type type) {
            this.b = c64Var;
        }

        @Override // defpackage.mq5
        public final T c() {
            return (T) this.b.a();
        }
    }

    public static final class b<T> implements mq5<T> {
        public final String b;

        public b(String str) {
            this.b = str;
        }

        @Override // defpackage.mq5
        public final T c() {
            throw new JsonIOException(this.b);
        }
    }

    public px1(List list, Map map) {
        this.a = map;
        this.b = list;
    }

    public static String a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:71:0x0140  */
    /* JADX WARN: Code duplicated, block: B:73:0x0148  */
    /* JADX WARN: Code duplicated, block: B:74:0x014e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0156  */
    /* JADX WARN: Code duplicated, block: B:77:0x015c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0164  */
    /* JADX WARN: Code duplicated, block: B:80:0x016a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0172  */
    public final <T> mq5<T> b(x39<T> x39Var, boolean z) {
        mq5<T> kl0Var;
        mq5<T> f90Var;
        String str;
        Type type = x39Var.b;
        Class<? super T> cls = x39Var.a;
        Map<Type, c64<?>> map = this.a;
        c64<?> c64Var = map.get(type);
        if (c64Var != null) {
            return new a(c64Var, type);
        }
        c64<?> c64Var2 = map.get(cls);
        if (c64Var2 != null) {
            return new a(c64Var2, type);
        }
        int i = 3;
        int i2 = 2;
        mq5<T> xyVar = null;
        if (EnumSet.class.isAssignableFrom(cls)) {
            kl0Var = new jl0(type, i2);
        } else {
            kl0Var = cls == EnumMap.class ? new kl0(type, i) : null;
        }
        if (kl0Var != null) {
            return kl0Var;
        }
        y07.a aVarA = z07.a(this.b, cls);
        int i3 = 1;
        if (Modifier.isAbstract(cls.getModifiers())) {
            f90Var = null;
        } else {
            try {
                Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
                y07.a aVar = y07.a.ALLOW;
                if (aVarA != aVar && (!z07.a.a.a(null, declaredConstructor) || (aVarA == y07.a.BLOCK_ALL && !Modifier.isPublic(declaredConstructor.getModifiers())))) {
                    f90Var = new b<>("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
                } else if (aVarA == aVar) {
                    b17.a aVar2 = b17.a;
                    try {
                        declaredConstructor.setAccessible(true);
                        str = null;
                    } catch (Exception e) {
                        str = "Failed making constructor '" + b17.b(declaredConstructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e.getMessage() + b17.e(e);
                    }
                    if (str != null) {
                        f90Var = new b(str);
                    } else {
                        f90Var = new f90(declaredConstructor, i2);
                    }
                } else {
                    f90Var = new f90(declaredConstructor, i2);
                }
            } catch (NoSuchMethodException unused) {
                f90Var = null;
            }
        }
        if (f90Var != null) {
            return f90Var;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            if (cls.isAssignableFrom(ArrayList.class)) {
                xyVar = new o2(2);
            } else if (cls.isAssignableFrom(LinkedHashSet.class)) {
                xyVar = new bg();
            } else if (cls.isAssignableFrom(TreeSet.class)) {
                xyVar = new cg();
            } else if (cls.isAssignableFrom(ArrayDeque.class)) {
                xyVar = new c9();
            }
        } else if (Map.class.isAssignableFrom(cls)) {
            if (cls.isAssignableFrom(xq4.class)) {
                if (type instanceof ParameterizedType) {
                    Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                    if (actualTypeArguments.length == 0 || ot3.e(actualTypeArguments[0]) != String.class) {
                        if (cls.isAssignableFrom(LinkedHashMap.class)) {
                            xyVar = new hg(3);
                        } else if (cls.isAssignableFrom(TreeMap.class)) {
                            xyVar = new ig(i2);
                        } else if (cls.isAssignableFrom(ConcurrentHashMap.class)) {
                            xyVar = new p2(2);
                        } else if (cls.isAssignableFrom(ConcurrentSkipListMap.class)) {
                            xyVar = new xy(3);
                        }
                    }
                }
                xyVar = new gg();
            } else if (cls.isAssignableFrom(LinkedHashMap.class)) {
                xyVar = new hg(3);
            } else if (cls.isAssignableFrom(TreeMap.class)) {
                xyVar = new ig(i2);
            } else if (cls.isAssignableFrom(ConcurrentHashMap.class)) {
                xyVar = new p2(2);
            } else if (cls.isAssignableFrom(ConcurrentSkipListMap.class)) {
                xyVar = new xy(3);
            }
        }
        if (xyVar != null) {
            return xyVar;
        }
        String strA = a(cls);
        if (strA != null) {
            return new b(strA);
        }
        if (!z) {
            return new b("Unable to create instance of " + cls + "; Register an InstanceCreator or a TypeAdapter for this type.");
        }
        if (aVarA == y07.a.ALLOW) {
            return new v51(cls, i3);
        }
        return new b("Unable to create instance of " + cls + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
    }

    public final String toString() {
        return this.a.toString();
    }
}
