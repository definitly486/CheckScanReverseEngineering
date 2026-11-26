package androidx.work;

import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bm3;
import defpackage.c9;
import defpackage.j2;
import defpackage.j59;
import defpackage.jh;
import defpackage.jh2;
import defpackage.m96;
import defpackage.me0;
import defpackage.mz0;
import defpackage.nl3;
import defpackage.o2;
import defpackage.qn1;
import defpackage.ti0;
import defpackage.ul2;
import defpackage.v71;
import defpackage.x07;
import defpackage.zk1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Data {
    public static final Companion Companion = new Companion(null);
    public static final Data EMPTY = new Builder().build();
    public static final int MAX_DATA_BYTES = 10240;
    private static final String NULL_STRING_V1 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
    private static final short STREAM_MAGIC = -21521;
    private static final short STREAM_VERSION = 1;
    private static final byte TYPE_BOOLEAN = 1;
    private static final byte TYPE_BOOLEAN_ARRAY = 8;
    private static final byte TYPE_BYTE = 2;
    private static final byte TYPE_BYTE_ARRAY = 9;
    private static final byte TYPE_DOUBLE = 6;
    private static final byte TYPE_DOUBLE_ARRAY = 13;
    private static final byte TYPE_FLOAT = 5;
    private static final byte TYPE_FLOAT_ARRAY = 12;
    private static final byte TYPE_INTEGER = 3;
    private static final byte TYPE_INTEGER_ARRAY = 10;
    private static final byte TYPE_LONG = 4;
    private static final byte TYPE_LONG_ARRAY = 11;
    private static final byte TYPE_NULL = 0;
    private static final byte TYPE_STRING = 7;
    private static final byte TYPE_STRING_ARRAY = 14;
    private final Map<String, Object> values;

    public Data(Data data) {
        data.getClass();
        this.values = new HashMap(data.values);
    }

    public static final Data fromByteArray(byte[] bArr) {
        return Companion.fromByteArray(bArr);
    }

    private final <T> T getOrDefault(String str, T t) {
        this.values.get(str);
        aa4.i();
        throw null;
    }

    private final <T, TArray> TArray getTypedArray(String str, bm3<? super Integer, ? super nl3<? super Integer, ? extends T>, ? extends TArray> bm3Var) {
        if (!(this.values.get(str) instanceof Object[])) {
            return null;
        }
        aa4.i();
        throw null;
    }

    @ul2
    public static final byte[] toByteArrayInternalV0(Data data) {
        return Companion.toByteArrayInternalV0(data);
    }

    public static final byte[] toByteArrayInternalV1(Data data) {
        return Companion.toByteArrayInternalV1(data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toString$lambda$7$lambda$6(Map.Entry entry) {
        entry.getClass();
        String str = (String) entry.getKey();
        Object value = entry.getValue();
        StringBuilder sbC = ti0.c(str, " : ");
        if (value instanceof Object[]) {
            value = Arrays.toString((Object[]) value);
            value.getClass();
        }
        sbC.append(value);
        return sbC.toString();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005c  */
    public boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        if (obj == null || !Data.class.equals(obj.getClass())) {
            return false;
        }
        Data data = (Data) obj;
        Set<String> setKeySet = this.values.keySet();
        if (!aa4.e(setKeySet, data.values.keySet())) {
            return false;
        }
        for (String str : setKeySet) {
            Object obj2 = this.values.get(str);
            Object obj3 = data.values.get(str);
            if (obj2 == null || obj3 == null) {
                zEquals = obj2 == obj3;
            } else if (obj2 instanceof Object[]) {
                Object[] objArr = (Object[]) obj2;
                if (obj3 instanceof Object[]) {
                    zEquals = aq5.d(objArr, (Object[]) obj3);
                } else {
                    zEquals = obj2.equals(obj3);
                }
            } else {
                zEquals = obj2.equals(obj3);
            }
            if (!zEquals) {
                return false;
            }
        }
        return true;
    }

    public final boolean getBoolean(String str, boolean z) {
        str.getClass();
        Object objValueOf = Boolean.valueOf(z);
        Object obj = this.values.get(str);
        if (obj instanceof Boolean) {
            objValueOf = obj;
        }
        return ((Boolean) objValueOf).booleanValue();
    }

    public final boolean[] getBooleanArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Boolean> nl3Var = new nl3<Integer, Boolean>() { // from class: androidx.work.Data$getBooleanArray$$inlined$getTypedArray$1
            public final Boolean invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Boolean) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Boolean");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Boolean, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = nl3Var.invoke(Integer.valueOf(i)).booleanValue();
        }
        return zArr;
    }

    public final byte getByte(String str, byte b) {
        str.getClass();
        Object objValueOf = Byte.valueOf(b);
        Object obj = this.values.get(str);
        if (obj instanceof Byte) {
            objValueOf = obj;
        }
        return ((Number) objValueOf).byteValue();
    }

    public final byte[] getByteArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Byte> nl3Var = new nl3<Integer, Byte>() { // from class: androidx.work.Data$getByteArray$$inlined$getTypedArray$1
            public final Byte invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Byte) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Byte");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Byte, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Byte invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = nl3Var.invoke(Integer.valueOf(i)).byteValue();
        }
        return bArr;
    }

    public final double getDouble(String str, double d) {
        str.getClass();
        Object objValueOf = Double.valueOf(d);
        Object obj = this.values.get(str);
        if (obj instanceof Double) {
            objValueOf = obj;
        }
        return ((Number) objValueOf).doubleValue();
    }

    public final double[] getDoubleArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Double> nl3Var = new nl3<Integer, Double>() { // from class: androidx.work.Data$getDoubleArray$$inlined$getTypedArray$1
            public final Double invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Double) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Double");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Double, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Double invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = nl3Var.invoke(Integer.valueOf(i)).doubleValue();
        }
        return dArr;
    }

    public final float getFloat(String str, float f) {
        str.getClass();
        Object objValueOf = Float.valueOf(f);
        Object obj = this.values.get(str);
        if (obj instanceof Float) {
            objValueOf = obj;
        }
        return ((Number) objValueOf).floatValue();
    }

    public final float[] getFloatArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Float> nl3Var = new nl3<Integer, Float>() { // from class: androidx.work.Data$getFloatArray$$inlined$getTypedArray$1
            public final Float invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Float) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Float");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Float, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Float invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        float[] fArr = new float[length];
        for (int i = 0; i < length; i++) {
            fArr[i] = nl3Var.invoke(Integer.valueOf(i)).floatValue();
        }
        return fArr;
    }

    public final int getInt(String str, int i) {
        str.getClass();
        Object objValueOf = Integer.valueOf(i);
        Object obj = this.values.get(str);
        if (obj instanceof Integer) {
            objValueOf = obj;
        }
        return ((Number) objValueOf).intValue();
    }

    public final int[] getIntArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Integer> nl3Var = new nl3<Integer, Integer>() { // from class: androidx.work.Data$getIntArray$$inlined$getTypedArray$1
            public final Integer invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Integer) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Int");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Integer, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = nl3Var.invoke(Integer.valueOf(i)).intValue();
        }
        return iArr;
    }

    public final Map<String, Object> getKeyValueMap() {
        Map<String, Object> mapUnmodifiableMap = Collections.unmodifiableMap(this.values);
        mapUnmodifiableMap.getClass();
        return mapUnmodifiableMap;
    }

    public final long getLong(String str, long j) {
        str.getClass();
        Object objValueOf = Long.valueOf(j);
        Object obj = this.values.get(str);
        if (obj instanceof Long) {
            objValueOf = obj;
        }
        return ((Number) objValueOf).longValue();
    }

    public final long[] getLongArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, Long> nl3Var = new nl3<Integer, Long>() { // from class: androidx.work.Data$getLongArray$$inlined$getTypedArray$1
            public final Long invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (Long) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.Long");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Long, java.lang.Object] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ Long invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = nl3Var.invoke(Integer.valueOf(i)).longValue();
        }
        return jArr;
    }

    public final String getString(String str) {
        str.getClass();
        Object obj = this.values.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final String[] getStringArray(String str) {
        str.getClass();
        final Object obj = this.values.get(str);
        if (!(obj instanceof Object[])) {
            return null;
        }
        int length = ((Object[]) obj).length;
        nl3<Integer, String> nl3Var = new nl3<Integer, String>() { // from class: androidx.work.Data$getStringArray$$inlined$getTypedArray$1
            public final String invoke(int i) {
                Object obj2 = ((Object[]) obj)[i];
                if (obj2 != null) {
                    return (String) obj2;
                }
                o2.d("null cannot be cast to non-null type kotlin.String");
                return null;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.String] */
            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ String invoke(Integer num) {
                return invoke(num.intValue());
            }
        };
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = nl3Var.invoke(Integer.valueOf(i));
        }
        return strArr;
    }

    public final <T> boolean hasKey$work_runtime_release(String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    public final <T> boolean hasKeyWithValueOfType(String str, Class<T> cls) {
        str.getClass();
        cls.getClass();
        Object obj = this.values.get(str);
        return obj != null && cls.isAssignableFrom(obj.getClass());
    }

    public int hashCode() {
        int iHashCode = 0;
        for (Map.Entry<String, Object> entry : this.values.entrySet()) {
            Object value = entry.getValue();
            iHashCode += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return iHashCode * 31;
    }

    public final int size() {
        return this.values.size();
    }

    public final byte[] toByteArray() {
        return Companion.toByteArrayInternalV1(this);
    }

    public String toString() {
        return me0.d(new StringBuilder("Data {"), qn1.a0(this.values.entrySet(), null, null, null, 0, new v71(1), 31), "}");
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private static final boolean fromByteArray$isObjectStream(ByteArrayInputStream byteArrayInputStream) throws IOException {
            byte[] bArr = new byte[2];
            byteArrayInputStream.read(bArr);
            boolean z = false;
            if (bArr[0] == -84 && bArr[1] == -19) {
                z = true;
            }
            byteArrayInputStream.reset();
            return z;
        }

        private static final void fromByteArray$readHeader(DataInputStream dataInputStream) throws IOException {
            short s = dataInputStream.readShort();
            if (s != -21521) {
                j2.d(jh.b(s, "Magic number doesn't match: "));
                return;
            }
            short s2 = dataInputStream.readShort();
            if (s2 == 1) {
                return;
            }
            j2.d(jh.b(s2, "Unsupported version number: "));
        }

        private static final Object fromByteArray$readValue(DataInputStream dataInputStream, byte b) throws IOException {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int i2 = dataInputStream.readInt();
                Boolean[] boolArr = new Boolean[i2];
                while (i < i2) {
                    boolArr[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return boolArr;
            }
            if (b == 9) {
                int i3 = dataInputStream.readInt();
                Byte[] bArr = new Byte[i3];
                while (i < i3) {
                    bArr[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return bArr;
            }
            if (b == 10) {
                int i4 = dataInputStream.readInt();
                Integer[] numArr = new Integer[i4];
                while (i < i4) {
                    numArr[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return numArr;
            }
            if (b == 11) {
                int i5 = dataInputStream.readInt();
                Long[] lArr = new Long[i5];
                while (i < i5) {
                    lArr[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return lArr;
            }
            if (b == 12) {
                int i6 = dataInputStream.readInt();
                Float[] fArr = new Float[i6];
                while (i < i6) {
                    fArr[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return fArr;
            }
            if (b == 13) {
                int i7 = dataInputStream.readInt();
                Double[] dArr = new Double[i7];
                while (i < i7) {
                    dArr[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return dArr;
            }
            if (b != 14) {
                ah.f(jh.b(b, "Unsupported type "));
                return null;
            }
            int i8 = dataInputStream.readInt();
            String[] strArr = new String[i8];
            while (i < i8) {
                String utf = dataInputStream.readUTF();
                if (aa4.e(utf, Data.NULL_STRING_V1)) {
                    utf = null;
                }
                strArr[i] = utf;
                i++;
            }
            return strArr;
        }

        private static final void toByteArrayInternalV1$writeArray(DataOutputStream dataOutputStream, Object[] objArr) throws IOException {
            int i;
            zk1 zk1VarA = x07.a(objArr.getClass());
            if (zk1VarA.equals(x07.a(Boolean[].class))) {
                i = 8;
            } else if (zk1VarA.equals(x07.a(Byte[].class))) {
                i = 9;
            } else if (zk1VarA.equals(x07.a(Integer[].class))) {
                i = 10;
            } else if (zk1VarA.equals(x07.a(Long[].class))) {
                i = 11;
            } else if (zk1VarA.equals(x07.a(Float[].class))) {
                i = 12;
            } else if (zk1VarA.equals(x07.a(Double[].class))) {
                i = 13;
            } else {
                if (!zk1VarA.equals(x07.a(String[].class))) {
                    mz0.c(x07.a(objArr.getClass()).a(), "Unsupported value type ");
                    return;
                }
                i = 14;
            }
            dataOutputStream.writeByte(i);
            dataOutputStream.writeInt(objArr.length);
            for (Object obj : objArr) {
                if (i == 8) {
                    Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                    dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                } else if (i == 9) {
                    Byte b = obj instanceof Byte ? (Byte) obj : null;
                    dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                } else if (i == 10) {
                    Integer num = obj instanceof Integer ? (Integer) obj : null;
                    dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                } else if (i == 11) {
                    Long l = obj instanceof Long ? (Long) obj : null;
                    dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                } else if (i == 12) {
                    Float f = obj instanceof Float ? (Float) obj : null;
                    dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                } else if (i == 13) {
                    Double d = obj instanceof Double ? (Double) obj : null;
                    dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                } else if (i == 14) {
                    String str = obj instanceof String ? (String) obj : null;
                    if (str == null) {
                        str = Data.NULL_STRING_V1;
                    }
                    dataOutputStream.writeUTF(str);
                }
            }
        }

        private static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else {
                if (!(obj instanceof Object[])) {
                    mz0.c(x07.a(obj.getClass()).f(), "Unsupported value type ");
                    return;
                }
                toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
            }
            dataOutputStream.writeUTF(str);
        }

        private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeShort(-21521);
            dataOutputStream.writeShort(1);
        }

        public final Data fromByteArray(byte[] bArr) {
            bArr.getClass();
            if (bArr.length > 10240) {
                ah.f("Data cannot occupy more than 10240 bytes when serialized");
                return null;
            }
            if (bArr.length == 0) {
                return Data.EMPTY;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                int i = 0;
                if (fromByteArray$isObjectStream(byteArrayInputStream)) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int i2 = objectInputStream.readInt();
                        while (i < i2) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i++;
                        }
                        objectInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            m96.c(objectInputStream, th);
                            throw th2;
                        }
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        fromByteArray$readHeader(dataInputStream);
                        int i3 = dataInputStream.readInt();
                        while (i < i3) {
                            linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                            i++;
                        }
                        dataInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            m96.c(dataInputStream, th3);
                            throw th4;
                        }
                    }
                }
            } catch (IOException e) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e);
            } catch (ClassNotFoundException e2) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e2);
            }
            return new Data(linkedHashMap);
        }

        @ul2
        public final byte[] toByteArrayInternalV0(Data data) {
            data.getClass();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        objectOutputStream.writeInt(data.size());
                        for (Map.Entry entry : data.values.entrySet()) {
                            String str = (String) entry.getKey();
                            Object value = entry.getValue();
                            objectOutputStream.writeUTF(str);
                            objectOutputStream.writeObject(value);
                        }
                        j59 j59Var = j59.a;
                        objectOutputStream.close();
                        byteArrayOutputStream.close();
                        if (byteArrayOutputStream.size() > 10240) {
                            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArray.getClass();
                        return byteArray;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            m96.c(objectOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        m96.c(byteArrayOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (IOException e) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        public final byte[] toByteArrayInternalV1(Data data) {
            data.getClass();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    toByteArrayInternalV1$writeHeader(dataOutputStream);
                    dataOutputStream.writeInt(data.size());
                    for (Map.Entry entry : data.values.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    dataOutputStream.close();
                    byteArray.getClass();
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(dataOutputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException e) {
                Logger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.work.Data$getTypedArray$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements nl3<Integer, T> {
        final /* synthetic */ Object $value;

        public AnonymousClass1(Object obj) {
            this.$value = obj;
        }

        public final T invoke(int i) {
            Object obj = ((Object[]) this.$value)[i];
            aa4.i();
            throw null;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    public Data(Map<String, ?> map) {
        map.getClass();
        this.values = new HashMap(map);
    }

    public static final class Builder {
        private final Map<String, Object> values = new LinkedHashMap();

        private final Builder putDirect(String str, Object obj) {
            this.values.put(str, obj);
            return this;
        }

        public final Data build() {
            Data data = new Data((Map<String, ?>) this.values);
            Data.Companion.toByteArrayInternalV1(data);
            return data;
        }

        public final Builder put(String str, Object obj) {
            str.getClass();
            Map<String, Object> map = this.values;
            if (obj == null) {
                obj = null;
            } else {
                zk1 zk1VarA = x07.a(obj.getClass());
                if (!zk1VarA.equals(x07.a(Boolean.TYPE)) && !zk1VarA.equals(x07.a(Byte.TYPE)) && !zk1VarA.equals(x07.a(Integer.TYPE)) && !zk1VarA.equals(x07.a(Long.TYPE)) && !zk1VarA.equals(x07.a(Float.TYPE)) && !zk1VarA.equals(x07.a(Double.TYPE)) && !zk1VarA.equals(x07.a(String.class)) && !zk1VarA.equals(x07.a(Boolean[].class)) && !zk1VarA.equals(x07.a(Byte[].class)) && !zk1VarA.equals(x07.a(Integer[].class)) && !zk1VarA.equals(x07.a(Long[].class)) && !zk1VarA.equals(x07.a(Float[].class)) && !zk1VarA.equals(x07.a(Double[].class)) && !zk1VarA.equals(x07.a(String[].class))) {
                    if (zk1VarA.equals(x07.a(boolean[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((boolean[]) obj);
                    } else if (zk1VarA.equals(x07.a(byte[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((byte[]) obj);
                    } else if (zk1VarA.equals(x07.a(int[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((int[]) obj);
                    } else if (zk1VarA.equals(x07.a(long[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((long[]) obj);
                    } else if (zk1VarA.equals(x07.a(float[].class))) {
                        obj = Data_Kt.convertPrimitiveArray((float[]) obj);
                    } else {
                        if (!zk1VarA.equals(x07.a(double[].class))) {
                            c9.h("Key ", str, " has invalid type ", zk1VarA);
                            return null;
                        }
                        obj = Data_Kt.convertPrimitiveArray((double[]) obj);
                    }
                }
            }
            map.put(str, obj);
            return this;
        }

        public final Builder putAll(Map<String, ? extends Object> map) {
            map.getClass();
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public final Builder putBoolean(String str, boolean z) {
            str.getClass();
            return putDirect(str, Boolean.valueOf(z));
        }

        public final Builder putBooleanArray(String str, boolean[] zArr) {
            str.getClass();
            zArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(zArr));
            return this;
        }

        public final Builder putByte(String str, byte b) {
            str.getClass();
            return putDirect(str, Byte.valueOf(b));
        }

        public final Builder putByteArray(String str, byte[] bArr) {
            str.getClass();
            bArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(bArr));
            return this;
        }

        public final Builder putDouble(String str, double d) {
            str.getClass();
            return putDirect(str, Double.valueOf(d));
        }

        public final Builder putDoubleArray(String str, double[] dArr) {
            str.getClass();
            dArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(dArr));
            return this;
        }

        public final Builder putFloat(String str, float f) {
            str.getClass();
            return putDirect(str, Float.valueOf(f));
        }

        public final Builder putFloatArray(String str, float[] fArr) {
            str.getClass();
            fArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(fArr));
            return this;
        }

        public final Builder putInt(String str, int i) {
            str.getClass();
            return putDirect(str, Integer.valueOf(i));
        }

        public final Builder putIntArray(String str, int[] iArr) {
            str.getClass();
            iArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(iArr));
            return this;
        }

        public final Builder putLong(String str, long j) {
            str.getClass();
            return putDirect(str, Long.valueOf(j));
        }

        public final Builder putLongArray(String str, long[] jArr) {
            str.getClass();
            jArr.getClass();
            this.values.put(str, Data_Kt.convertPrimitiveArray(jArr));
            return this;
        }

        public final Builder putString(String str, String str2) {
            str.getClass();
            return putDirect(str, str2);
        }

        public final Builder putStringArray(String str, String[] strArr) {
            str.getClass();
            strArr.getClass();
            return putDirect(str, strArr);
        }

        public final Builder putAll(Data data) {
            data.getClass();
            putAll(data.values);
            return this;
        }
    }
}
