package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PartialGapBuffer {
    public static final int BUF_SIZE = 255;
    public static final int NOWHERE = -1;
    public static final int SURROUNDING_SIZE = 64;
    private GapBuffer buffer;
    private String text;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private int bufStart = -1;
    private int bufEnd = -1;

    public PartialGapBuffer(String str) {
        this.text = str;
    }

    public final char get(int i) {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer != null && i >= this.bufStart) {
            int length = gapBuffer.length();
            int i2 = this.bufStart;
            return i < length + i2 ? gapBuffer.get(i - i2) : this.text.charAt(i - ((length - this.bufEnd) + i2));
        }
        return this.text.charAt(i);
    }

    public final int getLength() {
        GapBuffer gapBuffer = this.buffer;
        String str = this.text;
        return gapBuffer == null ? str.length() : (str.length() - (this.bufEnd - this.bufStart)) + gapBuffer.length();
    }

    public final String getText() {
        return this.text;
    }

    public final void replace(int i, int i2, String str) {
        if (!(i <= i2)) {
            InlineClassHelperKt.throwIllegalArgumentException("start index must be less than or equal to end index: " + i + " > " + i2);
        }
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("start must be non-negative, but was " + i);
        }
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer != null) {
            int i3 = this.bufStart;
            int i4 = i - i3;
            int i5 = i2 - i3;
            if (i4 >= 0 && i5 <= gapBuffer.length()) {
                gapBuffer.replace(i4, i5, str);
                return;
            }
            this.text = toString();
            this.buffer = null;
            this.bufStart = -1;
            this.bufEnd = -1;
            replace(i, i2, str);
            return;
        }
        int iMax = Math.max(255, str.length() + 128);
        char[] cArr = new char[iMax];
        int iMin = Math.min(i, 64);
        int iMin2 = Math.min(this.text.length() - i2, 64);
        int i6 = i - iMin;
        GapBuffer_jvmAndAndroidKt.toCharArray(this.text, cArr, 0, i6, i);
        int i7 = iMax - iMin2;
        int i8 = iMin2 + i2;
        GapBuffer_jvmAndAndroidKt.toCharArray(this.text, cArr, i7, i2, i8);
        GapBufferKt.toCharArray(str, cArr, iMin);
        this.buffer = new GapBuffer(cArr, str.length() + iMin, i7);
        this.bufStart = i6;
        this.bufEnd = i8;
    }

    public final void setText(String str) {
        this.text = str;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public String toString() {
        GapBuffer gapBuffer = this.buffer;
        String str = this.text;
        if (gapBuffer == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str, 0, this.bufStart);
        gapBuffer.append(sb);
        String str2 = this.text;
        sb.append((CharSequence) str2, this.bufEnd, str2.length());
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
