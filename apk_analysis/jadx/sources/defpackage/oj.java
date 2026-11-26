package defpackage;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class oj implements kf4 {
    public final int b;
    public final kf4 c;

    public oj(int i, kf4 kf4Var) {
        this.b = i;
        this.c = kf4Var;
    }

    @Override // defpackage.kf4
    public final void a(MessageDigest messageDigest) {
        this.c.a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // defpackage.kf4
    public final boolean equals(Object obj) {
        if (!(obj instanceof oj)) {
            return false;
        }
        oj ojVar = (oj) obj;
        return this.b == ojVar.b && this.c.equals(ojVar.c);
    }

    @Override // defpackage.kf4
    public final int hashCode() {
        return eb9.i(this.b, this.c);
    }
}
