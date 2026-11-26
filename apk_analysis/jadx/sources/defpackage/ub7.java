package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
public final class ub7 {
    public final gy4<kf4, String> a = new gy4<>(1000);
    public final f53.c b = f53.a(10, new a());

    public class a implements f53.b<b> {
        @Override // f53.b
        public final b create() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                ti0.f(e);
                return null;
            }
        }
    }

    public static final class b implements f53.d {
        public final MessageDigest b;
        public final c78.a c = new c78.a();

        public b(MessageDigest messageDigest) {
            this.b = messageDigest;
        }

        @Override // f53.d
        public final c78.a d() {
            return this.c;
        }
    }

    public final String a(kf4 kf4Var) {
        String strA;
        synchronized (this.a) {
            strA = this.a.a(kf4Var);
        }
        if (strA == null) {
            b bVar = (b) this.b.acquire();
            try {
                kf4Var.a(bVar.b);
                byte[] bArrDigest = bVar.b.digest();
                char[] cArr = eb9.b;
                synchronized (cArr) {
                    for (int i = 0; i < bArrDigest.length; i++) {
                        byte b2 = bArrDigest[i];
                        int i2 = i * 2;
                        char[] cArr2 = eb9.a;
                        cArr[i2] = cArr2[(b2 & 255) >>> 4];
                        cArr[i2 + 1] = cArr2[b2 & 15];
                    }
                    strA = new String(cArr);
                }
                this.b.release(bVar);
            } catch (Throwable th) {
                this.b.release(bVar);
                throw th;
            }
        }
        synchronized (this.a) {
            this.a.d(kf4Var, strA);
        }
        return strA;
    }
}
