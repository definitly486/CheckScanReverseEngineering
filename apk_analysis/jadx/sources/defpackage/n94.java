package defpackage;

import com.google.common.io.BaseEncoding;
import java.nio.charset.Charset;
import java.util.BitSet;

/* JADX INFO: loaded from: classes5.dex */
public final class n94 {
    public static final Charset a = Charset.forName("US-ASCII");
    public static final BaseEncoding b = la5.e;

    public interface a<T> extends la5.g<T> {
    }

    public static la5.f a(String str, a aVar) {
        boolean z = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z = true;
        }
        BitSet bitSet = la5.d.d;
        return new la5.f(str, z, aVar);
    }
}
