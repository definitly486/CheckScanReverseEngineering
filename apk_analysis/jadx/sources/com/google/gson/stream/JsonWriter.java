package com.google.gson.stream;

import com.tapjoy.TJAdUnitConstants;
import defpackage.ah;
import defpackage.av;
import defpackage.c9;
import defpackage.fg;
import defpackage.ki0;
import defpackage.qz0;
import defpackage.u98;
import defpackage.vh;
import defpackage.wi3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private String deferredName;
    private String formattedColon;
    private String formattedComma;
    private wi3 formattingStyle;
    private boolean htmlSafe;
    private final Writer out;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;
    private u98 strictness;
    private boolean usesEmptyNewlineAndIndent;
    private static final Pattern VALID_JSON_NUMBER_PATTERN = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    private static final String[] REPLACEMENT_CHARS = new String[128];

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.strictness = u98.LEGACY_STRICT;
        this.serializeNulls = true;
        Objects.requireNonNull(writer, "out == null");
        this.out = writer;
        setFormattingStyle(wi3.d);
    }

    private static boolean alwaysCreatesValidJsonNumber(Class<? extends Number> cls) {
        return cls == Integer.class || cls == Long.class || cls == Byte.class || cls == Short.class || cls == BigDecimal.class || cls == BigInteger.class || cls == AtomicInteger.class || cls == AtomicLong.class;
    }

    private void beforeName() throws IOException {
        int iPeek = peek();
        if (iPeek == 5) {
            this.out.write(this.formattedComma);
        } else if (iPeek != 3) {
            ah.f("Nesting problem.");
            return;
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() throws IOException {
        int iPeek = peek();
        if (iPeek == 1) {
            replaceTop(2);
            newline();
            return;
        }
        if (iPeek == 2) {
            this.out.append((CharSequence) this.formattedComma);
            newline();
            return;
        }
        if (iPeek == 4) {
            this.out.append((CharSequence) this.formattedColon);
            replaceTop(5);
            return;
        }
        if (iPeek != 6) {
            if (iPeek != 7) {
                ah.f("Nesting problem.");
                return;
            } else if (this.strictness != u98.LENIENT) {
                ah.f("JSON must have only one top-level value.");
                return;
            }
        }
        replaceTop(7);
    }

    private JsonWriter closeScope(int i, int i2, char c) throws IOException {
        int iPeek = peek();
        if (iPeek != i2 && iPeek != i) {
            ah.f("Nesting problem.");
            return null;
        }
        if (this.deferredName != null) {
            qz0.g(this.deferredName, "Dangling name: ");
            return null;
        }
        this.stackSize--;
        if (iPeek == i2) {
            newline();
        }
        this.out.write(c);
        return this;
    }

    private void newline() throws IOException {
        if (this.usesEmptyNewlineAndIndent) {
            return;
        }
        this.out.write(this.formattingStyle.a);
        int i = this.stackSize;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.formattingStyle.b);
        }
    }

    private JsonWriter openScope(int i, char c) throws IOException {
        beforeValue();
        push(i);
        this.out.write(c);
        return this;
    }

    private int peek() {
        int i = this.stackSize;
        if (i != 0) {
            return this.stack[i - 1];
        }
        ah.f("JsonWriter is closed.");
        return 0;
    }

    private void push(int i) {
        int i2 = this.stackSize;
        int[] iArrCopyOf = this.stack;
        if (i2 == iArrCopyOf.length) {
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i2 * 2);
            this.stack = iArrCopyOf;
        }
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArrCopyOf[i3] = i;
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    private void string(String str) throws IOException {
        String str2;
        String[] strArr = this.htmlSafe ? HTML_SAFE_REPLACEMENT_CHARS : REPLACEMENT_CHARS;
        this.out.write(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i < i2) {
                        this.out.write(str, i, i2 - i);
                    }
                    this.out.write(str2);
                    i = i2 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                    this.out.write(str, i, i2 - i);
                }
                this.out.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            this.out.write(str, i, length - i);
        }
        this.out.write(34);
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return openScope(1, '[');
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return openScope(3, '{');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.stackSize;
        if (i > 1 || (i == 1 && this.stack[i - 1] != 7)) {
            ki0.d("Incomplete document");
        } else {
            this.stackSize = 0;
        }
    }

    public JsonWriter endArray() {
        return closeScope(1, 2, ']');
    }

    public JsonWriter endObject() {
        return closeScope(3, 5, '}');
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.stackSize != 0) {
            this.out.flush();
        } else {
            ah.f("JsonWriter is closed.");
        }
    }

    public final wi3 getFormattingStyle() {
        return this.formattingStyle;
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final u98 getStrictness() {
        return this.strictness;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        return this.strictness == u98.LENIENT;
    }

    public JsonWriter jsonValue(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append((CharSequence) str);
        return this;
    }

    public JsonWriter name(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.deferredName != null) {
            ah.f("Already wrote a name, expecting a value.");
            return null;
        }
        int iPeek = peek();
        if (iPeek == 3 || iPeek == 5) {
            this.deferredName = str;
            return this;
        }
        ah.f("Please begin an object before writing a name.");
        return null;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName != null) {
            if (!this.serializeNulls) {
                this.deferredName = null;
                return this;
            }
            writeDeferredName();
        }
        beforeValue();
        this.out.write("null");
        return this;
    }

    public final void setFormattingStyle(wi3 wi3Var) {
        Objects.requireNonNull(wi3Var);
        this.formattingStyle = wi3Var;
        this.formattedComma = StringUtils.COMMA;
        if (wi3Var.c) {
            this.formattedColon = ": ";
            if (wi3Var.a.isEmpty()) {
                this.formattedComma = ", ";
            }
        } else {
            this.formattedColon = StringUtils.PROCESS_POSTFIX_DELIMITER;
        }
        this.usesEmptyNewlineAndIndent = this.formattingStyle.a.isEmpty() && this.formattingStyle.b.isEmpty();
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setIndent(String str) {
        if (str.isEmpty()) {
            setFormattingStyle(wi3.d);
        } else {
            wi3 wi3Var = wi3.e;
            setFormattingStyle(new wi3(wi3Var.a, str, wi3Var.c));
        }
    }

    @Deprecated
    public final void setLenient(boolean z) {
        setStrictness(z ? u98.LENIENT : u98.LEGACY_STRICT);
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public final void setStrictness(u98 u98Var) {
        Objects.requireNonNull(u98Var);
        this.strictness = u98Var;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (!alwaysCreatesValidJsonNumber(cls)) {
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                if (this.strictness != u98.LENIENT) {
                    fg.c("Numeric values must be finite, but was ".concat(string));
                    return null;
                }
            } else if (cls != Float.class && cls != Double.class && !VALID_JSON_NUMBER_PATTERN.matcher(string).matches()) {
                c9.h("String created by ", cls, " is not a valid JSON number: ", string);
                return null;
            }
        }
        beforeValue();
        this.out.append((CharSequence) string);
        return this;
    }

    public JsonWriter value(boolean z) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(z ? TJAdUnitConstants.String.TRUE : TJAdUnitConstants.String.FALSE);
        return this;
    }

    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write(bool.booleanValue() ? TJAdUnitConstants.String.TRUE : TJAdUnitConstants.String.FALSE);
        return this;
    }

    public JsonWriter value(float f) throws IOException {
        writeDeferredName();
        if (this.strictness != u98.LENIENT && (Float.isNaN(f) || Float.isInfinite(f))) {
            vh.f("Numeric values must be finite, but was ", f);
            return null;
        }
        beforeValue();
        this.out.append((CharSequence) Float.toString(f));
        return this;
    }

    public JsonWriter value(double d) throws IOException {
        writeDeferredName();
        if (this.strictness != u98.LENIENT && (Double.isNaN(d) || Double.isInfinite(d))) {
            av.d("Numeric values must be finite, but was ", d);
            return null;
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    public JsonWriter value(long j) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
        return this;
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(str);
        return this;
    }
}
