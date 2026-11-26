package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import defpackage.ag;
import defpackage.ah;
import defpackage.fg;
import defpackage.h2;
import defpackage.n1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();
    public final int b;
    public final Parcel c;
    public final int d;
    public final zan e;
    public final String f;
    public int g;
    public int h;

    public SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.b = 1;
        Parcel parcelObtain = Parcel.obtain();
        this.c = parcelObtain;
        safeParcelable.writeToParcel(parcelObtain, 0);
        this.d = 1;
        this.e = (zan) Preconditions.checkNotNull(zanVar);
        this.f = (String) Preconditions.checkNotNull(str);
        this.g = 2;
    }

    public static void B(zan zanVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (zanVar.zae(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        zanVar.zac(cls, fieldMappings);
        Iterator<String> it = fieldMappings.keySet().iterator();
        while (it.hasNext()) {
            Class cls2 = fieldMappings.get(it.next()).i;
            if (cls2 != null) {
                try {
                    B(zanVar, (FastJsonResponse) cls2.newInstance());
                } catch (IllegalAccessException e) {
                    h2.e("Could not access object of type ".concat(String.valueOf(((Class) Preconditions.checkNotNull(cls2)).getCanonicalName())), e);
                    return;
                } catch (InstantiationException e2) {
                    h2.e("Could not instantiate an object of type ".concat(String.valueOf(((Class) Preconditions.checkNotNull(cls2)).getCanonicalName())), e2);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object] */
    public static void D(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.getFieldId(header));
            if (entry2 != null) {
                if (z) {
                    sb.append(StringUtils.COMMA);
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                boolean zZac = field.zac();
                int i = field.e;
                FastJsonResponse.FieldConverter fieldConverter = field.l;
                if (zZac) {
                    switch (i) {
                        case 0:
                            Object objValueOf = Integer.valueOf(SafeParcelReader.readInt(parcel, header));
                            if (fieldConverter != null) {
                                objValueOf = field.zai(objValueOf);
                            }
                            G(sb, field, objValueOf);
                            break;
                        case 1:
                            Object objCreateBigInteger = SafeParcelReader.createBigInteger(parcel, header);
                            if (fieldConverter != null) {
                                objCreateBigInteger = field.zai(objCreateBigInteger);
                            }
                            G(sb, field, objCreateBigInteger);
                            break;
                        case 2:
                            Object objValueOf2 = Long.valueOf(SafeParcelReader.readLong(parcel, header));
                            if (fieldConverter != null) {
                                objValueOf2 = field.zai(objValueOf2);
                            }
                            G(sb, field, objValueOf2);
                            break;
                        case 3:
                            Object objValueOf3 = Float.valueOf(SafeParcelReader.readFloat(parcel, header));
                            if (fieldConverter != null) {
                                objValueOf3 = field.zai(objValueOf3);
                            }
                            G(sb, field, objValueOf3);
                            break;
                        case 4:
                            Object objValueOf4 = Double.valueOf(SafeParcelReader.readDouble(parcel, header));
                            if (fieldConverter != null) {
                                objValueOf4 = field.zai(objValueOf4);
                            }
                            G(sb, field, objValueOf4);
                            break;
                        case 5:
                            Object objCreateBigDecimal = SafeParcelReader.createBigDecimal(parcel, header);
                            if (fieldConverter != null) {
                                objCreateBigDecimal = field.zai(objCreateBigDecimal);
                            }
                            G(sb, field, objCreateBigDecimal);
                            break;
                        case 6:
                            Object objValueOf5 = Boolean.valueOf(SafeParcelReader.readBoolean(parcel, header));
                            if (fieldConverter != null) {
                                objValueOf5 = field.zai(objValueOf5);
                            }
                            G(sb, field, objValueOf5);
                            break;
                        case 7:
                            Object objCreateString = SafeParcelReader.createString(parcel, header);
                            if (fieldConverter != null) {
                                objCreateString = field.zai(objCreateString);
                            }
                            G(sb, field, objCreateString);
                            break;
                        case 8:
                        case 9:
                            Object objCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                            if (fieldConverter != null) {
                                objCreateByteArray = field.zai(objCreateByteArray);
                            }
                            G(sb, field, objCreateByteArray);
                            break;
                        case 10:
                            Bundle bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                            Object map2 = new HashMap();
                            for (String str2 : bundleCreateBundle.keySet()) {
                                map2.put(str2, (String) Preconditions.checkNotNull(bundleCreateBundle.getString(str2)));
                            }
                            if (fieldConverter != null) {
                                map2 = field.zai(map2);
                            }
                            G(sb, field, map2);
                            break;
                        case 11:
                            fg.c("Method does not accept concrete type.");
                            return;
                        default:
                            fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 25), "Unknown field out type = ", i));
                            return;
                    }
                } else if (field.f) {
                    sb.append("[");
                    switch (i) {
                        case 0:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createIntArray(parcel, header));
                            break;
                        case 1:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigIntegerArray(parcel, header));
                            break;
                        case 2:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createLongArray(parcel, header));
                            break;
                        case 3:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createFloatArray(parcel, header));
                            break;
                        case 4:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createDoubleArray(parcel, header));
                            break;
                        case 5:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigDecimalArray(parcel, header));
                            break;
                        case 6:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBooleanArray(parcel, header));
                            break;
                        case 7:
                            ArrayUtils.writeStringArray(sb, SafeParcelReader.createStringArray(parcel, header));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            n1.e("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                            return;
                        case 11:
                            Parcel[] parcelArrCreateParcelArray = SafeParcelReader.createParcelArray(parcel, header);
                            int length = parcelArrCreateParcelArray.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(StringUtils.COMMA);
                                }
                                parcelArrCreateParcelArray[i2].setDataPosition(0);
                                D(sb, field.zag(), parcelArrCreateParcelArray[i2]);
                            }
                            break;
                        default:
                            ah.f("Unknown field type out.");
                            return;
                    }
                    sb.append("]");
                } else {
                    switch (i) {
                        case 0:
                            sb.append(SafeParcelReader.readInt(parcel, header));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.createBigInteger(parcel, header));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.readLong(parcel, header));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.readFloat(parcel, header));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.readDouble(parcel, header));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.createBigDecimal(parcel, header));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.readBoolean(parcel, header));
                            break;
                        case 7:
                            String strCreateString = SafeParcelReader.createString(parcel, header);
                            sb.append("\"");
                            sb.append(JsonUtils.escapeString(strCreateString));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                            sb.append("\"");
                            sb.append(Base64Utils.encode(bArrCreateByteArray));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
                            sb.append("\"");
                            sb.append(Base64Utils.encodeUrlSafe(bArrCreateByteArray2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header);
                            Set<String> setKeySet = bundleCreateBundle2.keySet();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : setKeySet) {
                                if (!z2) {
                                    sb.append(StringUtils.COMMA);
                                }
                                n1.d(sb, "\"", str3, "\":\"");
                                sb.append(JsonUtils.escapeString(bundleCreateBundle2.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel parcelCreateParcel = SafeParcelReader.createParcel(parcel, header);
                            parcelCreateParcel.setDataPosition(0);
                            D(sb, field.zag(), parcelCreateParcel);
                            break;
                        default:
                            ah.f("Unknown field type out");
                            return;
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() != iValidateObjectHeader) {
            throw new SafeParcelReader.ParseException(ag.d(new StringBuilder(String.valueOf(iValidateObjectHeader).length() + 26), "Overread allowed size end=", iValidateObjectHeader), parcel);
        }
        sb.append('}');
    }

    public static final void F(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                break;
            case 7:
                sb.append("\"");
                sb.append(JsonUtils.escapeString(Preconditions.checkNotNull(obj).toString()));
                sb.append("\"");
                break;
            case 8:
                sb.append("\"");
                sb.append(Base64Utils.encode((byte[]) obj));
                sb.append("\"");
                break;
            case 9:
                sb.append("\"");
                sb.append(Base64Utils.encodeUrlSafe((byte[]) obj));
                sb.append("\"");
                break;
            case 10:
                MapUtils.writeStringMapToJson(sb, (HashMap) Preconditions.checkNotNull(obj));
                break;
            case 11:
                fg.c("Method does not accept concrete type.");
                break;
            default:
                fg.c(ag.d(new StringBuilder(String.valueOf(i).length() + 15), "Unknown type = ", i));
                break;
        }
    }

    public static final void G(StringBuilder sb, FastJsonResponse.Field field, Object obj) {
        boolean z = field.d;
        int i = field.c;
        if (!z) {
            F(sb, i, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 != 0) {
                sb.append(StringUtils.COMMA);
            }
            F(sb, i, arrayList.get(i2));
        }
        sb.append("]");
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(T t) {
        String str = (String) Preconditions.checkNotNull(t.getClass().getCanonicalName());
        zan zanVar = new zan(t.getClass());
        B(zanVar, t);
        zanVar.zab();
        zanVar.zaa();
        return new SafeParcelResponse(t, zanVar, str);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void A(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        SafeParcelWriter.writeDoubleArray(this.c, field.getSafeParcelableFieldId(), dArr, true);
    }

    public final void C(FastJsonResponse.Field field) {
        if (field.h == -1) {
            ah.f("Field does not have a valid safe parcelable field id.");
            return;
        }
        Parcel parcel = this.c;
        if (parcel == null) {
            ah.f("Internal Parcel object is null.");
            return;
        }
        int i = this.g;
        if (i == 0) {
            this.h = SafeParcelWriter.beginObjectHeader(parcel);
            this.g = 1;
        } else {
            if (i == 1) {
                return;
            }
            ah.f("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList<T> arrayList) {
        C(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        SafeParcelWriter.writeParcelList(this.c, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field field, String str, T t) {
        C(field);
        Parcel parcelZaE = ((SafeParcelResponse) t).zaE();
        SafeParcelWriter.writeParcel(this.c, field.getSafeParcelableFieldId(), parcelZaE, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void c(FastJsonResponse.Field field, boolean z) {
        C(field);
        SafeParcelWriter.writeBoolean(this.c, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void d(FastJsonResponse.Field field, byte[] bArr) {
        C(field);
        SafeParcelWriter.writeByteArray(this.c, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void e(FastJsonResponse.Field field, int i) {
        C(field);
        SafeParcelWriter.writeInt(this.c, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void f(FastJsonResponse.Field field, long j) {
        C(field);
        SafeParcelWriter.writeLong(this.c, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.e;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zad((String) Preconditions.checkNotNull(this.f));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getValueObject(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void h(FastJsonResponse.Field field, String str) {
        C(field);
        SafeParcelWriter.writeString(this.c, field.getSafeParcelableFieldId(), str, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void i(FastJsonResponse.Field field, Map map) {
        C(field);
        Bundle bundle = new Bundle();
        for (String str : ((Map) Preconditions.checkNotNull(map)).keySet()) {
            bundle.putString(str, (String) map.get(str));
        }
        SafeParcelWriter.writeBundle(this.c, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void j(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = (String) arrayList.get(i);
        }
        SafeParcelWriter.writeStringArray(this.c, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void k(FastJsonResponse.Field field, BigDecimal bigDecimal) {
        C(field);
        SafeParcelWriter.writeBigDecimal(this.c, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void l(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = (BigDecimal) arrayList.get(i);
        }
        SafeParcelWriter.writeBigDecimalArray(this.c, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void m(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = ((Boolean) arrayList.get(i)).booleanValue();
        }
        SafeParcelWriter.writeBooleanArray(this.c, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void r(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        SafeParcelWriter.writeIntArray(this.c, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void s(FastJsonResponse.Field field, BigInteger bigInteger) {
        C(field);
        SafeParcelWriter.writeBigInteger(this.c, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void t(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = (BigInteger) arrayList.get(i);
        }
        SafeParcelWriter.writeBigIntegerArray(this.c, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        zan zanVar = this.e;
        Preconditions.checkNotNull(zanVar, "Cannot convert to JSON on client side.");
        Parcel parcelZaE = zaE();
        parcelZaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        D(sb, (Map) Preconditions.checkNotNull(zanVar.zad((String) Preconditions.checkNotNull(this.f))), parcelZaE);
        return sb.toString();
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void u(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((Long) arrayList.get(i)).longValue();
        }
        SafeParcelWriter.writeLongArray(this.c, field.getSafeParcelableFieldId(), jArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void w(FastJsonResponse.Field field, float f) {
        C(field);
        SafeParcelWriter.writeFloat(this.c, field.getSafeParcelableFieldId(), f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcel(parcel, 2, zaE(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.d != 0 ? this.e : null, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void x(FastJsonResponse.Field field, ArrayList arrayList) {
        C(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = ((Float) arrayList.get(i)).floatValue();
        }
        SafeParcelWriter.writeFloatArray(this.c, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void z(FastJsonResponse.Field field, double d) {
        C(field);
        SafeParcelWriter.writeDouble(this.c, field.getSafeParcelableFieldId(), d);
    }

    public final Parcel zaE() {
        int i = this.g;
        Parcel parcel = this.c;
        if (i != 0) {
            if (i != 1) {
                return parcel;
            }
            SafeParcelWriter.finishObjectHeader(parcel, this.h);
            this.g = 2;
            return parcel;
        }
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        this.h = iBeginObjectHeader;
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        this.g = 2;
        return parcel;
    }

    public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.b = i;
        this.c = (Parcel) Preconditions.checkNotNull(parcel);
        this.d = 2;
        this.e = zanVar;
        this.f = zanVar == null ? null : zanVar.zaf();
        this.g = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.b = 1;
        this.c = Parcel.obtain();
        this.d = 0;
        this.e = (zan) Preconditions.checkNotNull(zanVar);
        this.f = (String) Preconditions.checkNotNull(str);
        this.g = 0;
    }
}
