package androidx.graphics.shapes;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class Format_jvmKt {
    public static final String toStringWithLessPrecision(float f) {
        return String.format("%.3f", Arrays.copyOf(new Object[]{Float.valueOf(f)}, 1));
    }
}
