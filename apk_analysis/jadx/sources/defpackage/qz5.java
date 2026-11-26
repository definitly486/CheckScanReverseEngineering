package defpackage;

import android.text.TextUtils;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class qz5<T> {
    public static final a e = new a();
    public final T a;
    public final b<T> b;
    public final String c;
    public volatile byte[] d;

    public class a implements b<Object> {
        @Override // qz5.b
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    public interface b<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    public qz5(String str, T t, b<T> bVar) {
        if (TextUtils.isEmpty(str)) {
            fg.c("Must not be null or empty");
            throw null;
        }
        this.c = str;
        this.a = t;
        this.b = bVar;
    }

    public static qz5 a(Object obj, String str) {
        return new qz5(str, obj, e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof qz5) {
            return this.c.equals(((qz5) obj).c);
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return me0.d(new StringBuilder("Option{key='"), this.c, "'}");
    }
}
