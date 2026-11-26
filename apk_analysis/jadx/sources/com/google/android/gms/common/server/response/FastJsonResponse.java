package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import defpackage.ag;
import defpackage.ah;
import defpackage.n1;
import defpackage.ti0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FastJsonResponse {

    public interface FieldConverter<I, O> {
        int zaa();

        int zab();

        Object zac(Object obj);

        Object zad(Object obj);
    }

    public static final void o(StringBuilder sb, Field field, Object obj) {
        int i = field.c;
        if (i == 11) {
            Class cls = field.i;
            Preconditions.checkNotNull(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append("\"");
        }
    }

    public static final void q(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
            sb.append("Output field (");
            sb.append(str);
            sb.append(") has a null value, but expected a primitive");
            Log.e("FastJsonResponse", sb.toString());
        }
    }

    public void A(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    public Object a(Field field) {
        String str = field.g;
        if (field.i == null) {
            return getValueObject(str);
        }
        Preconditions.checkState(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", str);
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String strSubstring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(upperCase).length() + 3 + strSubstring.length());
            sb.append("get");
            sb.append(upperCase);
            sb.append(strSubstring);
            return getClass().getMethod(sb.toString(), null).invoke(this, null);
        } catch (Exception e) {
            ti0.f(e);
            return null;
        }
    }

    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field field, String str, T t) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    public boolean b(Field field) {
        if (field.e != 11) {
            return isPrimitiveFieldSet(field.g);
        }
        if (field.f) {
            n1.e("Concrete type arrays not supported");
            return false;
        }
        n1.e("Concrete types not supported");
        return false;
    }

    public void c(Field field, boolean z) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    public void d(Field field, byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    public void e(Field field, int i) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    public void f(Field field, long j) {
        throw new UnsupportedOperationException("Long not supported");
    }

    public abstract Map<String, Field<?, ?>> getFieldMappings();

    public abstract Object getValueObject(String str);

    public void h(Field field, String str) {
        throw new UnsupportedOperationException("String not supported");
    }

    public void i(Field field, Map map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    public abstract boolean isPrimitiveFieldSet(String str);

    public void j(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    public void k(Field field, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public void l(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public void m(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final void n(Field field, Object obj) {
        int i = field.e;
        Object objZah = field.zah(obj);
        String str = field.g;
        switch (i) {
            case 0:
                if (objZah == null) {
                    q(str);
                } else {
                    e(field, ((Integer) objZah).intValue());
                }
                break;
            case 1:
                s(field, (BigInteger) objZah);
                break;
            case 2:
                if (objZah == null) {
                    q(str);
                } else {
                    f(field, ((Long) objZah).longValue());
                }
                break;
            case 3:
            default:
                ah.f(ag.d(new StringBuilder(String.valueOf(i).length() + 33), "Unsupported type for conversion: ", i));
                break;
            case 4:
                if (objZah == null) {
                    q(str);
                } else {
                    z(field, ((Double) objZah).doubleValue());
                }
                break;
            case 5:
                k(field, (BigDecimal) objZah);
                break;
            case 6:
                if (objZah == null) {
                    q(str);
                } else {
                    c(field, ((Boolean) objZah).booleanValue());
                }
                break;
            case 7:
                h(field, (String) objZah);
                break;
            case 8:
            case 9:
                if (objZah == null) {
                    q(str);
                } else {
                    d(field, (byte[]) objZah);
                }
                break;
        }
    }

    public void r(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public void s(Field field, BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public void t(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (b(field)) {
                Object objA = a(field);
                if (field.l != null) {
                    objA = field.zai(objA);
                }
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(StringUtils.COMMA);
                }
                n1.d(sb, "\"", str, "\":");
                if (objA != null) {
                    switch (field.e) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64Utils.encode((byte[]) objA));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) objA));
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) objA);
                            break;
                        default:
                            if (field.d) {
                                ArrayList arrayList = (ArrayList) objA;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(StringUtils.COMMA);
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        o(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                            } else {
                                o(sb, field, objA);
                            }
                            break;
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    public void u(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public void w(Field field, float f) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public void x(Field field, ArrayList arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public void z(Field field, double d) {
        throw new UnsupportedOperationException("Double not supported");
    }

    public final void zaa(Field field, int i) {
        if (field.l != null) {
            n(field, Integer.valueOf(i));
        } else {
            e(field, i);
        }
    }

    public final void zab(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            r(field, arrayList);
        }
    }

    public final void zac(Field field, BigInteger bigInteger) {
        if (field.l != null) {
            n(field, bigInteger);
        } else {
            s(field, bigInteger);
        }
    }

    public final void zad(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            t(field, arrayList);
        }
    }

    public final void zae(Field field, long j) {
        if (field.l != null) {
            n(field, Long.valueOf(j));
        } else {
            f(field, j);
        }
    }

    public final void zaf(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            u(field, arrayList);
        }
    }

    public final void zag(Field field, float f) {
        if (field.l != null) {
            n(field, Float.valueOf(f));
        } else {
            w(field, f);
        }
    }

    public final void zah(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            x(field, arrayList);
        }
    }

    public final void zai(Field field, double d) {
        if (field.l != null) {
            n(field, Double.valueOf(d));
        } else {
            z(field, d);
        }
    }

    public final void zaj(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            A(field, arrayList);
        }
    }

    public final void zak(Field field, BigDecimal bigDecimal) {
        if (field.l != null) {
            n(field, bigDecimal);
        } else {
            k(field, bigDecimal);
        }
    }

    public final void zal(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            l(field, arrayList);
        }
    }

    public final void zam(Field field, boolean z) {
        if (field.l != null) {
            n(field, Boolean.valueOf(z));
        } else {
            c(field, z);
        }
    }

    public final void zan(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            m(field, arrayList);
        }
    }

    public final void zao(Field field, String str) {
        if (field.l != null) {
            n(field, str);
        } else {
            h(field, str);
        }
    }

    public final void zap(Field field, ArrayList arrayList) {
        if (field.l != null) {
            n(field, arrayList);
        } else {
            j(field, arrayList);
        }
    }

    public final void zaq(Field field, byte[] bArr) {
        if (field.l != null) {
            n(field, bArr);
        } else {
            d(field, bArr);
        }
    }

    public final void zar(Field field, Map map) {
        if (field.l != null) {
            n(field, map);
        } else {
            i(field, map);
        }
    }

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();
        public final int b;
        public final int c;
        public final boolean d;
        public final int e;
        public final boolean f;
        public final String g;
        public final int h;
        public final Class i;
        public final String j;
        public zan k;
        public final FieldConverter l;

        public Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zaa zaaVar) {
            this.b = i;
            this.c = i2;
            this.d = z;
            this.e = i3;
            this.f = z2;
            this.g = str;
            this.h = i4;
            if (str2 == null) {
                this.i = null;
                this.j = null;
            } else {
                this.i = SafeParcelResponse.class;
                this.j = str2;
            }
            if (zaaVar == null) {
                this.l = null;
            } else {
                this.l = zaaVar.zab();
            }
        }

        public static Field<byte[], byte[]> forBase64(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Double, Double> forDouble(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        public static Field<Float, Float> forFloat(String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        public static Field<Integer, Integer> forInteger(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Long, Long> forLong(String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        public static Field<String, String> forString(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(String str, int i) {
            return new Field<>(10, false, 10, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            fieldConverter.zaa();
            fieldConverter.zab();
            return new Field(7, z, 0, false, str, i, null, fieldConverter);
        }

        public int getSafeParcelableFieldId() {
            return this.h;
        }

        public final String toString() {
            Objects.ToStringHelper toStringHelperAdd = Objects.toStringHelper(this).add("versionCode", Integer.valueOf(this.b)).add("typeIn", Integer.valueOf(this.c)).add("typeInArray", Boolean.valueOf(this.d)).add("typeOut", Integer.valueOf(this.e)).add("typeOutArray", Boolean.valueOf(this.f)).add("outputFieldName", this.g).add("safeParcelFieldId", Integer.valueOf(this.h));
            String str = this.j;
            if (str == null) {
                str = null;
            }
            Objects.ToStringHelper toStringHelperAdd2 = toStringHelperAdd.add("concreteTypeName", str);
            Class cls = this.i;
            if (cls != null) {
                toStringHelperAdd2.add("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter fieldConverter = this.l;
            if (fieldConverter != null) {
                toStringHelperAdd2.add("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return toStringHelperAdd2.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.b);
            SafeParcelWriter.writeInt(parcel, 2, this.c);
            SafeParcelWriter.writeBoolean(parcel, 3, this.d);
            SafeParcelWriter.writeInt(parcel, 4, this.e);
            SafeParcelWriter.writeBoolean(parcel, 5, this.f);
            SafeParcelWriter.writeString(parcel, 6, this.g, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            String str = this.j;
            if (str == null) {
                str = null;
            }
            SafeParcelWriter.writeString(parcel, 8, str, false);
            FieldConverter fieldConverter = this.l;
            SafeParcelWriter.writeParcelable(parcel, 9, fieldConverter != null ? zaa.zaa(fieldConverter) : null, i, false);
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }

        public final Field zaa() {
            FieldConverter fieldConverter = this.l;
            return new Field(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.j, fieldConverter == null ? null : zaa.zaa(fieldConverter));
        }

        public final boolean zac() {
            return this.l != null;
        }

        public final void zad(zan zanVar) {
            this.k = zanVar;
        }

        public final FastJsonResponse zaf() {
            Class cls = this.i;
            Preconditions.checkNotNull(cls);
            if (cls != SafeParcelResponse.class) {
                return (FastJsonResponse) cls.newInstance();
            }
            String str = this.j;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(this.k, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new SafeParcelResponse(this.k, str);
        }

        public final Map zag() {
            String str = this.j;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(this.k);
            return (Map) Preconditions.checkNotNull(this.k.zad(str));
        }

        public final Object zah(Object obj) {
            FieldConverter fieldConverter = this.l;
            Preconditions.checkNotNull(fieldConverter);
            return Preconditions.checkNotNull(fieldConverter.zad(obj));
        }

        public final Object zai(Object obj) {
            FieldConverter fieldConverter = this.l;
            Preconditions.checkNotNull(fieldConverter);
            return fieldConverter.zac(obj);
        }

        public Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class cls, FieldConverter fieldConverter) {
            this.b = 1;
            this.c = i;
            this.d = z;
            this.e = i2;
            this.f = z2;
            this.g = str;
            this.h = i3;
            this.i = cls;
            if (cls == null) {
                this.j = null;
            } else {
                this.j = cls.getCanonicalName();
            }
            this.l = fieldConverter;
        }
    }
}
