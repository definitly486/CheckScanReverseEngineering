package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import defpackage.aa4;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.n7;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.u96;
import defpackage.xp;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class InternalAndroidNavType {
    public static final InternalAndroidNavType INSTANCE = new InternalAndroidNavType();

    public static final class EnumNullableType<D extends Enum<?>> extends SerializableNullableType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumNullableType(Class<D> cls) {
            super(cls);
            cls.getClass();
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                xp.i(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.serialization.InternalAndroidNavType.SerializableNullableType, androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.serialization.InternalAndroidNavType.SerializableNullableType, androidx.navigation.NavType
        public D parseValue(String str) {
            str.getClass();
            D d = null;
            if (str.equals("null")) {
                return null;
            }
            D[] enumConstants = this.type.getEnumConstants();
            enumConstants.getClass();
            for (D d2 : enumConstants) {
                D d3 = d2;
                d3.getClass();
                if (ra8.v(d3.name(), str, true)) {
                    d = d2;
                    break;
                }
            }
            D d4 = d;
            if (d4 != null) {
                return d4;
            }
            StringBuilder sbD = n7.d("Enum value ", str, " not found for type ");
            sbD.append(this.type.getName());
            sbD.append('.');
            throw new IllegalArgumentException(sbD.toString());
        }
    }

    public static class SerializableNullableType<D extends Serializable> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableNullableType(Class<D> cls) {
            super(true);
            cls.getClass();
            this.type = cls;
            if (Serializable.class.isAssignableFrom(cls)) {
                return;
            }
            xp.i(cls, " does not implement Serializable.");
            throw null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SerializableNullableType) {
                return aa4.e(this.type, ((SerializableNullableType) obj).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            Object obj = bundle.get(str);
            if (obj instanceof Serializable) {
                return (D) obj;
            }
            return null;
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
            bundle.putSerializable(str, this.type.cast(d));
        }
    }

    private InternalAndroidNavType() {
    }

    public static final class EnumListType<D extends Enum<?>> extends CollectionNavType<List<? extends D>> {
        private final NavType.EnumType<D> enumNavType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumListType(Class<D> cls) {
            super(true);
            cls.getClass();
            this.enumNavType = new NavType.EnumType<>(cls);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EnumListType) {
                return aa4.e(this.enumNavType, ((EnumListType) obj).enumNavType);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public List<D> get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            Object obj = bundle.get(str);
            if (obj instanceof List) {
                return (List) obj;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<" + this.enumNavType.getName() + "}>";
        }

        public int hashCode() {
            return this.enumNavType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public List<D> parseValue(String str, List<? extends D> list) {
            str.getClass();
            if (list == null) {
                return parseValue(str);
            }
            return qn1.h0(parseValue(str), list);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, List<? extends D> list) {
            bundle.getClass();
            str.getClass();
            bundle.putSerializable(str, list != null ? new ArrayList(list) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(List<? extends D> list) {
            if (list == null) {
                return kx2.b;
            }
            List<? extends D> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((Enum) it.next()).toString());
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<? extends D> list, List<? extends D> list2) {
            return aa4.e(list != null ? new ArrayList(list) : null, list2 != null ? new ArrayList(list2) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<D> emptyCollection() {
            return kx2.b;
        }

        @Override // androidx.navigation.NavType
        public List<D> parseValue(String str) {
            str.getClass();
            return u96.h(this.enumNavType.parseValue(str));
        }
    }
}
