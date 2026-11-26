package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import defpackage.bl4;
import defpackage.fg;
import defpackage.n7;
import defpackage.pc4;
import defpackage.r01;
import defpackage.s39;
import defpackage.t39;
import defpackage.x39;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeAdapters {
    public static final t39 A;
    public static final t39 B;
    public static final t39 C;
    public static final t39 D;
    public static final t39 a = new AnonymousClass30(Class.class, new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
        @Override // com.google.gson.TypeAdapter
        public final Class b(JsonReader jsonReader) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?\nSee ".concat("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported")));
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Class cls) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported"));
        }
    }.a());
    public static final t39 b = new AnonymousClass30(BitSet.class, new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
        @Override // com.google.gson.TypeAdapter
        public final BitSet b(JsonReader jsonReader) throws IOException {
            BitSet bitSet = new BitSet();
            jsonReader.beginArray();
            JsonToken jsonTokenPeek = jsonReader.peek();
            int i2 = 0;
            while (jsonTokenPeek != JsonToken.END_ARRAY) {
                int i3 = a.a[jsonTokenPeek.ordinal()];
                boolean zNextBoolean = true;
                if (i3 == 1 || i3 == 2) {
                    int iNextInt = jsonReader.nextInt();
                    if (iNextInt == 0) {
                        zNextBoolean = false;
                    } else if (iNextInt != 1) {
                        StringBuilder sbC = n7.c(iNextInt, "Invalid bitset value ", ", expected 0 or 1; at path ");
                        sbC.append(jsonReader.getPreviousPath());
                        throw new JsonSyntaxException(sbC.toString());
                    }
                } else {
                    if (i3 != 3) {
                        StringBuilder sb = new StringBuilder("Invalid bitset value type: ");
                        sb.append(jsonTokenPeek);
                        String path = jsonReader.getPath();
                        sb.append("; at path ");
                        sb.append(path);
                        throw new JsonSyntaxException(sb.toString());
                    }
                    zNextBoolean = jsonReader.nextBoolean();
                }
                if (zNextBoolean) {
                    bitSet.set(i2);
                }
                i2++;
                jsonTokenPeek = jsonReader.peek();
            }
            jsonReader.endArray();
            return bitSet;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            jsonWriter.beginArray();
            int length = bitSet2.length();
            for (int i2 = 0; i2 < length; i2++) {
                jsonWriter.value(bitSet2.get(i2) ? 1L : 0L);
            }
            jsonWriter.endArray();
        }
    }.a());
    public static final TypeAdapter<Boolean> c;
    public static final t39 d;
    public static final t39 e;
    public static final t39 f;
    public static final t39 g;
    public static final t39 h;
    public static final t39 i;
    public static final t39 j;
    public static final TypeAdapter<Number> k;
    public static final TypeAdapter<Number> l;
    public static final TypeAdapter<Number> m;
    public static final TypeAdapter<Number> n;
    public static final t39 o;
    public static final t39 p;
    public static final t39 q;
    public static final t39 r;
    public static final t39 s;
    public static final t39 t;
    public static final t39 u;
    public static final t39 v;
    public static final t39 w;
    public static final t39 x;
    public static final t39 y;
    public static final t39 z;

    /* JADX INFO: renamed from: com.google.gson.internal.bind.TypeAdapters$27, reason: invalid class name */
    public class AnonymousClass27 extends IntegerFieldsTypeAdapter<Calendar> {
        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final Calendar d(long[] jArr) {
            return new GregorianCalendar(TypeAdapters.g(jArr[0]), TypeAdapters.g(jArr[1]), TypeAdapters.g(jArr[2]), TypeAdapters.g(jArr[3]), TypeAdapters.g(jArr[4]), TypeAdapters.g(jArr[5]));
        }

        @Override // com.google.gson.internal.bind.TypeAdapters.IntegerFieldsTypeAdapter
        public final long[] e(Calendar calendar) {
            Calendar calendar2 = calendar;
            return new long[]{calendar2.get(1), calendar2.get(2), calendar2.get(5), calendar2.get(11), calendar2.get(12), calendar2.get(13)};
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.TypeAdapters$30, reason: invalid class name */
    public class AnonymousClass30 implements t39 {
        public final /* synthetic */ Class b;
        public final /* synthetic */ TypeAdapter c;

        public AnonymousClass30(Class cls, TypeAdapter typeAdapter) {
            this.b = cls;
            this.c = typeAdapter;
        }

        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            if (x39Var.a == this.b) {
                return this.c;
            }
            return null;
        }

        public final String toString() {
            return "Factory[type=" + this.b.getName() + ",adapter=" + this.c + "]";
        }
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.TypeAdapters$31, reason: invalid class name */
    public class AnonymousClass31 implements t39 {
        public final /* synthetic */ Class b;
        public final /* synthetic */ Class c;
        public final /* synthetic */ TypeAdapter d;

        public AnonymousClass31(Class cls, Class cls2, TypeAdapter typeAdapter) {
            this.b = cls;
            this.c = cls2;
            this.d = typeAdapter;
        }

        @Override // defpackage.t39
        public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
            Class<? super T> cls = x39Var.a;
            if (cls == this.b || cls == this.c) {
                return this.d;
            }
            return null;
        }

        public final String toString() {
            return "Factory[type=" + this.c.getName() + "+" + this.b.getName() + ",adapter=" + this.d + "]";
        }
    }

    public static class DoubleAdapter extends TypeAdapter<Number> {
        public final boolean a;

        public DoubleAdapter(boolean z) {
            this.a = z;
        }

        @Override // com.google.gson.TypeAdapter
        public final Number b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Number number) throws IOException {
            Number number2 = number;
            if (number2 == null) {
                jsonWriter.nullValue();
                return;
            }
            double dDoubleValue = number2.doubleValue();
            if (this.a) {
                TypeAdapters.c(dDoubleValue);
            }
            jsonWriter.value(dDoubleValue);
        }
    }

    public static class FloatAdapter extends TypeAdapter<Number> {
        public final boolean a;

        public FloatAdapter(boolean z) {
            this.a = z;
        }

        @Override // com.google.gson.TypeAdapter
        public final Number b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Number number) throws IOException {
            Number numberValueOf = number;
            if (numberValueOf == null) {
                jsonWriter.nullValue();
                return;
            }
            float fFloatValue = numberValueOf.floatValue();
            if (this.a) {
                TypeAdapters.c(fFloatValue);
            }
            if (!(numberValueOf instanceof Float)) {
                numberValueOf = Float.valueOf(fFloatValue);
            }
            jsonWriter.value(numberValueOf);
        }
    }

    public static abstract class IntegerFieldsTypeAdapter<T> extends TypeAdapter<T> {
        public final List<String> a;

        public IntegerFieldsTypeAdapter(String... strArr) {
            this.a = Arrays.asList(strArr);
        }

        @Override // com.google.gson.TypeAdapter
        public final T b(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            List<String> list = this.a;
            long[] jArr = new long[list.size()];
            while (jsonReader.peek() != JsonToken.END_OBJECT) {
                int iIndexOf = list.indexOf(jsonReader.nextName());
                if (iIndexOf >= 0) {
                    jArr[iIndexOf] = jsonReader.nextLong();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            return d(jArr);
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            long[] jArrE = e(t);
            int i = 0;
            while (true) {
                List<String> list = this.a;
                if (i >= list.size()) {
                    jsonWriter.endObject();
                    return;
                } else {
                    jsonWriter.name(list.get(i));
                    jsonWriter.value(jArrE[i]);
                    i++;
                }
            }
        }

        public abstract T d(long[] jArr);

        public abstract long[] e(T t);
    }

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface b {
        t39 get();
    }

    static {
        TypeAdapter<Boolean> typeAdapter = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
            @Override // com.google.gson.TypeAdapter
            public final Boolean b(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                if (jsonTokenPeek != JsonToken.NULL) {
                    return jsonTokenPeek == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool);
            }
        };
        c = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
            @Override // com.google.gson.TypeAdapter
            public final Boolean b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Boolean.valueOf(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Boolean bool) throws IOException {
                Boolean bool2 = bool;
                jsonWriter.value(bool2 == null ? "null" : bool2.toString());
            }
        };
        d = new AnonymousClass31(Boolean.TYPE, Boolean.class, typeAdapter);
        e = new AnonymousClass31(Byte.TYPE, Byte.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
            @Override // com.google.gson.TypeAdapter
            public final Number b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    int iNextInt = jsonReader.nextInt();
                    if (iNextInt <= 255 && iNextInt >= -128) {
                        return Byte.valueOf((byte) iNextInt);
                    }
                    StringBuilder sbC = n7.c(iNextInt, "Lossy conversion from ", " to byte; at path ");
                    sbC.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbC.toString());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.byteValue());
                }
            }
        });
        f = new AnonymousClass31(Short.TYPE, Short.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
            @Override // com.google.gson.TypeAdapter
            public final Number b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    int iNextInt = jsonReader.nextInt();
                    if (iNextInt <= 65535 && iNextInt >= -32768) {
                        return Short.valueOf((short) iNextInt);
                    }
                    StringBuilder sbC = n7.c(iNextInt, "Lossy conversion from ", " to short; at path ");
                    sbC.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbC.toString());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.shortValue());
                }
            }
        });
        g = new AnonymousClass31(Integer.TYPE, Integer.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
            @Override // com.google.gson.TypeAdapter
            public final Number b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.intValue());
                }
            }
        });
        h = new AnonymousClass30(AtomicInteger.class, new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
            @Override // com.google.gson.TypeAdapter
            public final AtomicInteger b(JsonReader jsonReader) {
                try {
                    return new AtomicInteger(jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
                jsonWriter.value(atomicInteger.get());
            }
        }.a());
        i = new AnonymousClass30(AtomicBoolean.class, new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
            @Override // com.google.gson.TypeAdapter
            public final AtomicBoolean b(JsonReader jsonReader) {
                return new AtomicBoolean(jsonReader.nextBoolean());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
                jsonWriter.value(atomicBoolean.get());
            }
        }.a());
        j = new AnonymousClass30(AtomicIntegerArray.class, new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
            @Override // com.google.gson.TypeAdapter
            public final AtomicIntegerArray b(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                    } catch (NumberFormatException e2) {
                        throw new JsonSyntaxException(e2);
                    }
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
                AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
                jsonWriter.beginArray();
                int length = atomicIntegerArray2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    jsonWriter.value(atomicIntegerArray2.get(i2));
                }
                jsonWriter.endArray();
            }
        }.a());
        k = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
            @Override // com.google.gson.TypeAdapter
            public final Number b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Long.valueOf(jsonReader.nextLong());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.longValue());
                }
            }
        };
        l = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
            @Override // com.google.gson.TypeAdapter
            public final Number b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Long.valueOf(jsonReader.nextLong());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.toString());
                }
            }
        };
        new FloatAdapter(false);
        m = new FloatAdapter(true);
        new DoubleAdapter(false);
        n = new DoubleAdapter(true);
        o = new AnonymousClass31(Character.TYPE, Character.class, new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
            @Override // com.google.gson.TypeAdapter
            public final Character b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if (strNextString.length() == 1) {
                    return Character.valueOf(strNextString.charAt(0));
                }
                StringBuilder sbD = n7.d("Expecting character, got: ", strNextString, "; at ");
                sbD.append(jsonReader.getPreviousPath());
                throw new JsonSyntaxException(sbD.toString());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Character ch) throws IOException {
                Character ch2 = ch;
                jsonWriter.value(ch2 == null ? null : String.valueOf(ch2));
            }
        });
        TypeAdapter<String> typeAdapter2 = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
            @Override // com.google.gson.TypeAdapter
            public final String b(JsonReader jsonReader) throws IOException {
                JsonToken jsonTokenPeek = jsonReader.peek();
                if (jsonTokenPeek != JsonToken.NULL) {
                    return jsonTokenPeek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        p = new AnonymousClass30(BigDecimal.class, new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
            @Override // com.google.gson.TypeAdapter
            public final BigDecimal b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                try {
                    return s39.c(strNextString);
                } catch (NumberFormatException e2) {
                    StringBuilder sbD = n7.d("Failed parsing '", strNextString, "' as BigDecimal; at path ");
                    sbD.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbD.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
                jsonWriter.value(bigDecimal);
            }
        });
        q = new AnonymousClass30(BigInteger.class, new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
            @Override // com.google.gson.TypeAdapter
            public final BigInteger b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                try {
                    s39.a(strNextString);
                    return new BigInteger(strNextString);
                } catch (NumberFormatException e2) {
                    StringBuilder sbD = n7.d("Failed parsing '", strNextString, "' as BigInteger; at path ");
                    sbD.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbD.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
                jsonWriter.value(bigInteger);
            }
        });
        r = new AnonymousClass30(bl4.class, new TypeAdapter<bl4>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
            @Override // com.google.gson.TypeAdapter
            public final bl4 b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new bl4(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, bl4 bl4Var) throws IOException {
                jsonWriter.value(bl4Var);
            }
        });
        s = new AnonymousClass30(String.class, typeAdapter2);
        t = new AnonymousClass30(StringBuilder.class, new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
            @Override // com.google.gson.TypeAdapter
            public final StringBuilder b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                StringBuilder sb2 = sb;
                jsonWriter.value(sb2 == null ? null : sb2.toString());
            }
        });
        u = new AnonymousClass30(StringBuffer.class, new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
            @Override // com.google.gson.TypeAdapter
            public final StringBuffer b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                jsonWriter.value(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        });
        v = new AnonymousClass30(URL.class, new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
            @Override // com.google.gson.TypeAdapter
            public final URL b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                if (strNextString.equals("null")) {
                    return null;
                }
                return new URL(strNextString);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, URL url) throws IOException {
                URL url2 = url;
                jsonWriter.value(url2 == null ? null : url2.toExternalForm());
            }
        });
        w = new AnonymousClass30(URI.class, new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
            @Override // com.google.gson.TypeAdapter
            public final URI b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String strNextString = jsonReader.nextString();
                    if (strNextString.equals("null")) {
                        return null;
                    }
                    return new URI(strNextString);
                } catch (URISyntaxException e2) {
                    throw new JsonIOException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, URI uri) throws IOException {
                URI uri2 = uri;
                jsonWriter.value(uri2 == null ? null : uri2.toASCIIString());
            }
        });
        final TypeAdapter<InetAddress> typeAdapter3 = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
            @Override // com.google.gson.TypeAdapter
            public final InetAddress b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                jsonWriter.value(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        final Class<InetAddress> cls = InetAddress.class;
        x = new t39() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // defpackage.t39
            public final <T2> TypeAdapter<T2> b(Gson gson, x39<T2> x39Var) {
                final Class<? super T2> cls2 = x39Var.a;
                if (cls.isAssignableFrom(cls2)) {
                    return (TypeAdapter<T2>) new TypeAdapter<Object>() { // from class: com.google.gson.internal.bind.TypeAdapters.33.1
                        @Override // com.google.gson.TypeAdapter
                        public final Object b(JsonReader jsonReader) {
                            Object objB = typeAdapter3.b(jsonReader);
                            if (objB != null) {
                                Class cls3 = cls2;
                                if (!cls3.isInstance(objB)) {
                                    throw new JsonSyntaxException("Expected a " + cls3.getName() + " but was " + objB.getClass().getName() + "; at path " + jsonReader.getPreviousPath());
                                }
                            }
                            return objB;
                        }

                        @Override // com.google.gson.TypeAdapter
                        public final void c(JsonWriter jsonWriter, Object obj) {
                            typeAdapter3.c(jsonWriter, obj);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter3 + "]";
            }
        };
        y = new AnonymousClass30(UUID.class, new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
            @Override // com.google.gson.TypeAdapter
            public final UUID b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String strNextString = jsonReader.nextString();
                try {
                    return UUID.fromString(strNextString);
                } catch (IllegalArgumentException e2) {
                    StringBuilder sbD = n7.d("Failed parsing '", strNextString, "' as UUID; at path ");
                    sbD.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbD.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                jsonWriter.value(uuid2 == null ? null : uuid2.toString());
            }
        });
        z = new AnonymousClass30(Currency.class, new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.26
            @Override // com.google.gson.TypeAdapter
            public final Currency b(JsonReader jsonReader) throws IOException {
                String strNextString = jsonReader.nextString();
                try {
                    return Currency.getInstance(strNextString);
                } catch (IllegalArgumentException e2) {
                    StringBuilder sbD = n7.d("Failed parsing '", strNextString, "' as Currency; at path ");
                    sbD.append(jsonReader.getPreviousPath());
                    throw new JsonSyntaxException(sbD.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Currency currency) throws IOException {
                jsonWriter.value(currency.getCurrencyCode());
            }
        }.a());
        final AnonymousClass27 anonymousClass27 = new AnonymousClass27("year", "month", "dayOfMonth", "hourOfDay", "minute", "second");
        A = new t39() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // defpackage.t39
            public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var) {
                Class<? super T> cls2 = x39Var.a;
                if (cls2 == Calendar.class || cls2 == GregorianCalendar.class) {
                    return anonymousClass27;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + anonymousClass27 + "]";
            }
        };
        B = new AnonymousClass30(Locale.class, new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.28
            @Override // com.google.gson.TypeAdapter
            public final Locale b(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Locale locale) throws IOException {
                Locale locale2 = locale;
                jsonWriter.value(locale2 == null ? null : locale2.toString());
            }
        });
        final JsonElementTypeAdapter jsonElementTypeAdapter = JsonElementTypeAdapter.a;
        final Class<pc4> cls2 = pc4.class;
        C = new t39() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // defpackage.t39
            public final <T2> TypeAdapter<T2> b(Gson gson, x39<T2> x39Var) {
                final Class cls3 = x39Var.a;
                if (cls2.isAssignableFrom(cls3)) {
                    return (TypeAdapter<T2>) new TypeAdapter<Object>() { // from class: com.google.gson.internal.bind.TypeAdapters.33.1
                        @Override // com.google.gson.TypeAdapter
                        public final Object b(JsonReader jsonReader) {
                            Object objB = jsonElementTypeAdapter.b(jsonReader);
                            if (objB != null) {
                                Class cls4 = cls3;
                                if (!cls4.isInstance(objB)) {
                                    throw new JsonSyntaxException("Expected a " + cls4.getName() + " but was " + objB.getClass().getName() + "; at path " + jsonReader.getPreviousPath());
                                }
                            }
                            return objB;
                        }

                        @Override // com.google.gson.TypeAdapter
                        public final void c(JsonWriter jsonWriter, Object obj) {
                            jsonElementTypeAdapter.c(jsonWriter, obj);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls2.getName() + ",adapter=" + jsonElementTypeAdapter + "]";
            }
        };
        D = EnumTypeAdapter.d;
    }

    public static TypeAdapter<AtomicLong> a(final TypeAdapter<Number> typeAdapter) {
        Objects.requireNonNull(typeAdapter);
        return new TypeAdapter<AtomicLong>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            public final AtomicLong b(JsonReader jsonReader) {
                return new AtomicLong(((Number) typeAdapter.b(jsonReader)).longValue());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, AtomicLong atomicLong) {
                typeAdapter.c(jsonWriter, Long.valueOf(atomicLong.get()));
            }
        }.a();
    }

    public static TypeAdapter<AtomicLongArray> b(final TypeAdapter<Number> typeAdapter) {
        return new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
            @Override // com.google.gson.TypeAdapter
            public final AtomicLongArray b(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(Long.valueOf(((Number) typeAdapter.b(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                jsonWriter.beginArray();
                int length = atomicLongArray2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    typeAdapter.c(jsonWriter, Long.valueOf(atomicLongArray2.get(i2)));
                }
                jsonWriter.endArray();
            }
        }.a();
    }

    public static void c(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static <TT> t39 d(final x39<TT> x39Var, final TypeAdapter<TT> typeAdapter) {
        return new t39() { // from class: com.google.gson.internal.bind.TypeAdapters.29
            @Override // defpackage.t39
            public final <T> TypeAdapter<T> b(Gson gson, x39<T> x39Var2) {
                if (x39Var2.equals(x39Var)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> t39 e(Class<TT> cls, TypeAdapter<TT> typeAdapter) {
        return new AnonymousClass30(cls, typeAdapter);
    }

    public static <TT> t39 f(Class<TT> cls, Class<TT> cls2, TypeAdapter<? super TT> typeAdapter) {
        return new AnonymousClass31(cls, cls2, typeAdapter);
    }

    public static int g(long j2) {
        int i2 = (int) j2;
        if (i2 == j2) {
            return i2;
        }
        fg.c(r01.c(j2, "Too big for an int: "));
        return 0;
    }
}
