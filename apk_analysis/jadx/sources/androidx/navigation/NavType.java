package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.bg;
import defpackage.ga1;
import defpackage.jh2;
import defpackage.n7;
import defpackage.ra8;
import defpackage.ti0;
import defpackage.xp;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NavType<T> {
    private final boolean isNullableAllowed;
    private final String name = "nav_type";
    public static final Companion Companion = new Companion(null);
    public static final NavType<Integer> IntType = new IntNavType();
    public static final NavType<Integer> ReferenceType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$ReferenceType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return Integer.valueOf(SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(bundle), str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_REFERENCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String str) {
            int i;
            str.getClass();
            if (ra8.C(str, "0x", false)) {
                String strSubstring = str.substring(2);
                ga1.b(16);
                i = Integer.parseInt(strSubstring, 16);
            } else {
                i = Integer.parseInt(str);
            }
            return Integer.valueOf(i);
        }

        public void put(Bundle bundle, String str, int i) {
            bundle.getClass();
            str.getClass();
            SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(bundle), str, i);
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }
    };
    public static final NavType<int[]> IntArrayType = new IntArrayNavType();
    public static final NavType<List<Integer>> IntListType = new IntListNavType();
    public static final NavType<Long> LongType = new LongNavType();
    public static final NavType<long[]> LongArrayType = new LongArrayNavType();
    public static final NavType<List<Long>> LongListType = new LongListNavType();
    public static final NavType<Float> FloatType = new FloatNavType();
    public static final NavType<float[]> FloatArrayType = new FloatArrayNavType();
    public static final NavType<List<Float>> FloatListType = new FloatListNavType();
    public static final NavType<Boolean> BoolType = new BoolNavType();
    public static final NavType<boolean[]> BoolArrayType = new BoolArrayNavType();
    public static final NavType<List<Boolean>> BoolListType = new BoolListNavType();
    public static final NavType<String> StringType = new StringNavType();
    public static final NavType<String[]> StringArrayType = new StringArrayNavType();
    public static final NavType<List<String>> StringListType = new StringListNavType();

    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(Class<D> cls) {
            super(false, cls);
            cls.getClass();
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                xp.i(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public D parseValue(String str) {
            D d;
            str.getClass();
            D[] enumConstants = this.type.getEnumConstants();
            enumConstants.getClass();
            int length = enumConstants.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    d = null;
                    break;
                }
                d = enumConstants[i];
                if (ra8.v(d.name(), str, true)) {
                    break;
                }
                i++;
            }
            D d2 = d;
            if (d2 != null) {
                return d2;
            }
            StringBuilder sbD = n7.d("Enum value ", str, " not found for type ");
            sbD.append(this.type.getName());
            sbD.append('.');
            throw new IllegalArgumentException(sbD.toString());
        }
    }

    public static final class ParcelableType<D> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                xp.i(cls, " does not implement Parcelable or Serializable.");
                throw null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableType.class.equals(obj.getClass())) {
                return false;
            }
            return aa4.e(this.type, ((ParcelableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return (D) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, D d) {
            bundle.getClass();
            str.getClass();
            this.type.cast(d);
            if (d == null || (d instanceof Parcelable)) {
                bundle.putParcelable(str, (Parcelable) d);
            } else if (d instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) d);
            }
        }
    }

    public NavType(boolean z) {
        this.isNullableAllowed = z;
    }

    public static NavType<?> fromArgType(String str, String str2) {
        Companion companion = Companion;
        if (str == null || !str.startsWith("java")) {
            return companion.fromArgType(str, str2);
        }
        try {
            return companion.fromArgType("j$".concat(str.substring(4)), str2);
        } catch (RuntimeException e) {
            if (e.getCause() instanceof ClassNotFoundException) {
                return companion.fromArgType(str, str2);
            }
            throw e;
        }
    }

    public static final NavType<Object> inferFromValue(String str) {
        return Companion.inferFromValue(str);
    }

    public static final NavType<Object> inferFromValueType(Object obj) {
        return Companion.inferFromValueType(obj);
    }

    public abstract T get(Bundle bundle, String str);

    public String getName() {
        return this.name;
    }

    public boolean isNullableAllowed() {
        return this.isNullableAllowed;
    }

    public final T parseAndPut(Bundle bundle, String str, String str2) {
        bundle.getClass();
        str.getClass();
        str2.getClass();
        return (T) NavTypeKt.navTypeParseAndPut(this, bundle, str, str2);
    }

    public abstract T parseValue(String str);

    public T parseValue(String str, T t) {
        str.getClass();
        return parseValue(str);
    }

    public abstract void put(Bundle bundle, String str, T t);

    public String serializeAsValue(T t) {
        return String.valueOf(t);
    }

    public String toString() {
        return getName();
    }

    public boolean valueEquals(T t, T t2) {
        return aa4.e(t, t2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public NavType<?> fromArgType(String str, String str2) {
            NavType<?> navTypeNavTypeFromArgType = NavTypeKt.navTypeFromArgType(str);
            if (navTypeNavTypeFromArgType != null) {
                return navTypeNavTypeFromArgType;
            }
            NavType<Integer> navType = NavType.ReferenceType;
            if (aa4.e(navType.getName(), str)) {
                return navType;
            }
            if (str == null || str.length() == 0) {
                return NavType.StringType;
            }
            try {
                String strConcat = (!ra8.C(str, ".", false) || str2 == null) ? str : str2.concat(str);
                boolean zU = ra8.u(str, "[]", false);
                if (zU) {
                    strConcat = strConcat.substring(0, strConcat.length() - 2);
                }
                NavType<?> serializableOrParcelableType$navigation_common_release = parseSerializableOrParcelableType$navigation_common_release(Class.forName(strConcat), zU);
                if (serializableOrParcelableType$navigation_common_release != null) {
                    return serializableOrParcelableType$navigation_common_release;
                }
                throw new IllegalArgumentException(strConcat.concat(" is not Serializable or Parcelable.").toString());
            } catch (ClassNotFoundException e) {
                ti0.f(e);
                return null;
            }
        }

        public final NavType<Object> inferFromValue(String str) {
            str.getClass();
            return NavTypeKt.navTypeInferFromValue(str);
        }

        public final NavType<Object> inferFromValueType(Object obj) {
            NavType<Object> navTypeNavTypeInferFromValueType = NavTypeKt.navTypeInferFromValueType(obj);
            if (navTypeNavTypeInferFromValueType != null) {
                return navTypeNavTypeInferFromValueType;
            }
            if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                NavType<String[]> navType = NavType.StringArrayType;
                navType.getClass();
                return navType;
            }
            obj.getClass();
            if (obj.getClass().isArray()) {
                Class<?> componentType = obj.getClass().getComponentType();
                componentType.getClass();
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    Class<?> componentType2 = obj.getClass().getComponentType();
                    componentType2.getClass();
                    return new ParcelableArrayType(componentType2);
                }
            }
            if (obj.getClass().isArray()) {
                Class<?> componentType3 = obj.getClass().getComponentType();
                componentType3.getClass();
                if (Serializable.class.isAssignableFrom(componentType3)) {
                    Class<?> componentType4 = obj.getClass().getComponentType();
                    componentType4.getClass();
                    return new SerializableArrayType(componentType4);
                }
            }
            if (obj instanceof Parcelable) {
                return new ParcelableType(obj.getClass());
            }
            if (obj instanceof Enum) {
                return new EnumType(obj.getClass());
            }
            if (obj instanceof Serializable) {
                return new SerializableType(obj.getClass());
            }
            bg.h(obj.getClass().getName(), "Object of type ", " is not supported for navigation arguments.");
            return null;
        }

        public final NavType<?> parseSerializableOrParcelableType$navigation_common_release(Class<?> cls, boolean z) {
            cls.getClass();
            if (Parcelable.class.isAssignableFrom(cls)) {
                return z ? new ParcelableArrayType(cls) : new ParcelableType(cls);
            }
            if (Enum.class.isAssignableFrom(cls) && !z) {
                return new EnumType(cls);
            }
            if (Serializable.class.isAssignableFrom(cls)) {
                return z ? new SerializableArrayType(cls) : new SerializableType(cls);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Parcelable.class.isAssignableFrom(cls)) {
                xp.i(cls, " does not implement Parcelable.");
                throw null;
            }
            try {
                this.arrayType = (Class<D[]>) Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                ti0.f(e);
                throw null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return aa4.e(this.arrayType, ((ParcelableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return (D[]) ((Parcelable[]) bundle.get(str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.arrayType.getName();
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, D[] dArr) {
            bundle.getClass();
            str.getClass();
            this.arrayType.cast(dArr);
            bundle.putParcelableArray(str, dArr);
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(D[] dArr, D[] dArr2) {
            return aq5.d(dArr, dArr2);
        }
    }

    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                xp.i(cls, " does not implement Serializable.");
                throw null;
            }
            try {
                this.arrayType = (Class<D[]>) Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                ti0.f(e);
                throw null;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !SerializableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return aa4.e(this.arrayType, ((SerializableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return (D[]) ((Serializable[]) bundle.get(str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.arrayType.getName();
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, D[] dArr) {
            bundle.getClass();
            str.getClass();
            this.arrayType.cast(dArr);
            bundle.putSerializable(str, dArr);
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(D[] dArr, D[] dArr2) {
            return aq5.d(dArr, dArr2);
        }
    }

    public final T parseAndPut(Bundle bundle, String str, String str2, T t) {
        bundle.getClass();
        str.getClass();
        return (T) NavTypeKt.navTypeParseAndPut(this, bundle, str, str2, t);
    }

    public static class SerializableType<D extends Serializable> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                xp.i(cls, " does not implement Serializable.");
                throw null;
            }
            if (cls.isEnum()) {
                xp.i(cls, " is an Enum. You should use EnumType instead.");
                throw null;
            }
            this.type = cls;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SerializableType) {
                return aa4.e(this.type, ((SerializableType) obj).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return (D) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, D d) {
            bundle.getClass();
            str.getClass();
            d.getClass();
            this.type.cast(d);
            bundle.putSerializable(str, d);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z, Class<D> cls) {
            super(z);
            cls.getClass();
            if (Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                xp.i(cls, " does not implement Serializable.");
                throw null;
            }
        }
    }
}
