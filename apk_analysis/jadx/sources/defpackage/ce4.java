package defpackage;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.Reader;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ce4 extends JsonReader {
    public static final a f = new a();
    public static final Object g = new Object();
    public Object[] b;
    public int c;
    public String[] d;
    public int[] e;

    public class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            a = iArr;
            try {
                iArr[JsonToken.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[JsonToken.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public final void a(JsonToken jsonToken) {
        if (peek() == jsonToken) {
            return;
        }
        StringBuilder sb = new StringBuilder("Expected ");
        sb.append(jsonToken);
        sb.append(" but was ");
        sb.append(peek());
        eq.e(m(), sb);
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginArray() {
        a(JsonToken.BEGIN_ARRAY);
        v(((ac4) o()).b.iterator());
        this.e[this.c - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginObject() {
        a(JsonToken.BEGIN_OBJECT);
        v(((xq4.b) ((kd4) o()).b.entrySet()).iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b = new Object[]{g};
        this.c = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endArray() {
        a(JsonToken.END_ARRAY);
        p();
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endObject() {
        a(JsonToken.END_OBJECT);
        this.d[this.c - 1] = null;
        p();
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public final String getPath(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.c;
            if (i >= i2) {
                return sb.toString();
            }
            Object[] objArr = this.b;
            Object obj = objArr[i];
            if (obj instanceof ac4) {
                i++;
                if (i < i2 && (objArr[i] instanceof Iterator)) {
                    int i3 = this.e[i];
                    if (z && i3 > 0 && (i == i2 - 1 || i == i2 - 2)) {
                        i3--;
                    }
                    sb.append('[');
                    sb.append(i3);
                    sb.append(']');
                }
            } else if ((obj instanceof kd4) && (i = i + 1) < i2 && (objArr[i] instanceof Iterator)) {
                sb.append('.');
                String str = this.d[i];
                if (str != null) {
                    sb.append(str);
                }
            }
            i++;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String getPreviousPath() {
        return getPath(true);
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean hasNext() {
        JsonToken jsonTokenPeek = peek();
        return (jsonTokenPeek == JsonToken.END_OBJECT || jsonTokenPeek == JsonToken.END_ARRAY || jsonTokenPeek == JsonToken.END_DOCUMENT) ? false : true;
    }

    public final String m() {
        return " at path ".concat(getPath(false));
    }

    public final String n(boolean z) {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) o()).next();
        String str = (String) entry.getKey();
        this.d[this.c - 1] = z ? "<skipped>" : str;
        v(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean nextBoolean() {
        a(JsonToken.BOOLEAN);
        boolean zA = ((qd4) p()).a();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return zA;
    }

    @Override // com.google.gson.stream.JsonReader
    public final double nextDouble() throws MalformedJsonException {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(jsonToken);
            sb.append(" but was ");
            sb.append(jsonTokenPeek);
            eq.e(m(), sb);
            return 0.0d;
        }
        double dI = ((qd4) o()).i();
        if (!isLenient() && (Double.isNaN(dI) || Double.isInfinite(dI))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + dI);
        }
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return dI;
    }

    @Override // com.google.gson.stream.JsonReader
    public final int nextInt() {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(jsonToken);
            sb.append(" but was ");
            sb.append(jsonTokenPeek);
            eq.e(m(), sb);
            return 0;
        }
        int iB = ((qd4) o()).b();
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iB;
    }

    @Override // com.google.gson.stream.JsonReader
    public final long nextLong() {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.STRING) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(jsonToken);
            sb.append(" but was ");
            sb.append(jsonTokenPeek);
            eq.e(m(), sb);
            return 0L;
        }
        qd4 qd4Var = (qd4) o();
        long jLongValue = qd4Var.b instanceof Number ? qd4Var.j().longValue() : Long.parseLong(qd4Var.g());
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return jLongValue;
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextName() {
        return n(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public final void nextNull() {
        a(JsonToken.NULL);
        p();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextString() {
        JsonToken jsonTokenPeek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (jsonTokenPeek != jsonToken && jsonTokenPeek != JsonToken.NUMBER) {
            StringBuilder sb = new StringBuilder("Expected ");
            sb.append(jsonToken);
            sb.append(" but was ");
            sb.append(jsonTokenPeek);
            eq.e(m(), sb);
            return null;
        }
        String strG = ((qd4) p()).g();
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.e;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return strG;
    }

    public final Object o() {
        return this.b[this.c - 1];
    }

    public final Object p() {
        Object[] objArr = this.b;
        int i = this.c - 1;
        this.c = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public final JsonToken peek() {
        if (this.c == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object objO = o();
        if (objO instanceof Iterator) {
            boolean z = this.b[this.c - 2] instanceof kd4;
            Iterator it = (Iterator) objO;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            v(it.next());
            return peek();
        }
        if (objO instanceof kd4) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (objO instanceof ac4) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (objO instanceof qd4) {
            Serializable serializable = ((qd4) objO).b;
            if (serializable instanceof String) {
                return JsonToken.STRING;
            }
            if (serializable instanceof Boolean) {
                return JsonToken.BOOLEAN;
            }
            if (serializable instanceof Number) {
                return JsonToken.NUMBER;
            }
            xp.g();
            return null;
        }
        if (objO instanceof hd4) {
            return JsonToken.NULL;
        }
        if (objO == g) {
            ah.f("JsonReader is closed");
            return null;
        }
        throw new MalformedJsonException("Custom JsonElement subclass " + objO.getClass().getName() + " is not supported");
    }

    @Override // com.google.gson.stream.JsonReader
    public final void skipValue() {
        int i = b.a[peek().ordinal()];
        if (i == 1) {
            n(true);
            return;
        }
        if (i == 2) {
            endArray();
            return;
        }
        if (i == 3) {
            endObject();
            return;
        }
        if (i != 4) {
            p();
            int i2 = this.c;
            if (i2 > 0) {
                int[] iArr = this.e;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String toString() {
        return ce4.class.getSimpleName().concat(m());
    }

    public final void v(Object obj) {
        int i = this.c;
        Object[] objArr = this.b;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.b = Arrays.copyOf(objArr, i2);
            this.e = Arrays.copyOf(this.e, i2);
            this.d = (String[]) Arrays.copyOf(this.d, i2);
        }
        Object[] objArr2 = this.b;
        int i3 = this.c;
        this.c = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public final String getPath() {
        return getPath(false);
    }
}
