package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class dn9 extends gh4 implements nl3<Byte, CharSequence> {
    public static final dn9 f = new dn9(1);

    @Override // defpackage.nl3
    public final CharSequence invoke(Byte b) {
        return String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b.byteValue())}, 1));
    }
}
