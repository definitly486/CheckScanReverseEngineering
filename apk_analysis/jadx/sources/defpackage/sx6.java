package defpackage;

import com.google.protobuf.a0;

/* JADX INFO: loaded from: classes4.dex */
public final class sx6 implements fa5 {
    public final a0 a;
    public final String b;
    public final Object[] c;
    public final int d;

    public sx6(a0 a0Var, String str, Object[] objArr) {
        this.a = a0Var;
        this.b = str;
        this.c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.d = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // defpackage.fa5
    public final a0 getDefaultInstance() {
        return this.a;
    }

    @Override // defpackage.fa5
    public final qs6 getSyntax() {
        int i = this.d;
        if ((i & 1) != 0) {
            return qs6.PROTO2;
        }
        return (i & 4) == 4 ? qs6.EDITIONS : qs6.PROTO3;
    }

    @Override // defpackage.fa5
    public final boolean isMessageSetWireFormat() {
        return (this.d & 2) == 2;
    }
}
