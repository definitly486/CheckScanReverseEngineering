package defpackage;

import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ge4 extends JsonWriter {
    public static final a e = new a();
    public static final qd4 f = new qd4("closed");
    public final ArrayList b;
    public String c;
    public pc4 d;

    public class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public ge4() {
        super(e);
        this.b = new ArrayList();
        this.d = hd4.b;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter beginArray() {
        ac4 ac4Var = new ac4();
        o(ac4Var);
        this.b.add(ac4Var);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter beginObject() {
        kd4 kd4Var = new kd4();
        o(kd4Var);
        this.b.add(kd4Var);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty()) {
            arrayList.add(f);
        } else {
            ki0.d("Incomplete document");
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter endArray() {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty() || this.c != null) {
            ud.g();
            return null;
        }
        if (n() instanceof ac4) {
            arrayList.remove(arrayList.size() - 1);
            return this;
        }
        ud.g();
        return null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter endObject() {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty() || this.c != null) {
            ud.g();
            return null;
        }
        if (n() instanceof kd4) {
            arrayList.remove(arrayList.size() - 1);
            return this;
        }
        ud.g();
        return null;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public final void flush() {
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter jsonValue(String str) {
        throw new UnsupportedOperationException();
    }

    public final pc4 m() {
        ArrayList arrayList = this.b;
        if (arrayList.isEmpty()) {
            return this.d;
        }
        qz0.i(arrayList, "Expected one JSON element but was ");
        return null;
    }

    public final pc4 n() {
        return (pc4) dd2.b(1, this.b);
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter name(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.b.isEmpty() || this.c != null) {
            ah.f("Did not expect a name");
            return null;
        }
        if (n() instanceof kd4) {
            this.c = str;
            return this;
        }
        ah.f("Please begin an object before writing a name.");
        return null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter nullValue() {
        o(hd4.b);
        return this;
    }

    public final void o(pc4 pc4Var) {
        if (this.c != null) {
            pc4Var.getClass();
            if (!(pc4Var instanceof hd4) || getSerializeNulls()) {
                kd4 kd4Var = (kd4) n();
                kd4Var.b.put(this.c, pc4Var);
            }
            this.c = null;
            return;
        }
        if (this.b.isEmpty()) {
            this.d = pc4Var;
            return;
        }
        pc4 pc4VarN = n();
        if (!(pc4VarN instanceof ac4)) {
            ud.g();
            return;
        }
        ac4 ac4Var = (ac4) pc4VarN;
        if (pc4Var == null) {
            pc4Var = hd4.b;
        }
        ac4Var.b.add(pc4Var);
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(Number number) {
        if (number == null) {
            o(hd4.b);
            return this;
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                r01.e(number, "JSON forbids NaN and infinities: ");
                return null;
            }
        }
        o(new qd4(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(float f2) {
        if (!isLenient() && (Float.isNaN(f2) || Float.isInfinite(f2))) {
            vh.f("JSON forbids NaN and infinities: ", f2);
            return null;
        }
        o(new qd4(Float.valueOf(f2)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(double d) {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            av.d("JSON forbids NaN and infinities: ", d);
            return null;
        }
        o(new qd4(Double.valueOf(d)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(long j) {
        o(new qd4(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(Boolean bool) {
        if (bool == null) {
            o(hd4.b);
            return this;
        }
        o(new qd4(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(boolean z) {
        o(new qd4(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter value(String str) {
        if (str == null) {
            o(hd4.b);
            return this;
        }
        o(new qd4(str));
        return this;
    }
}
