package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cu1 extends au1 {
    public final boolean c;

    public cu1(yd4 yd4Var, boolean z) {
        super(yd4Var);
        this.c = z;
    }

    @Override // defpackage.au1
    public final void b(byte b) {
        if (this.c) {
            g(String.valueOf(b & 255));
            return;
        }
        String strValueOf = String.valueOf(b & 255);
        strValueOf.getClass();
        this.a.c(strValueOf);
    }

    @Override // defpackage.au1
    public final void d(int i) {
        boolean z = this.c;
        String unsignedString = Integer.toUnsignedString(i);
        if (z) {
            g(unsignedString);
        } else {
            unsignedString.getClass();
            this.a.c(unsignedString);
        }
    }

    @Override // defpackage.au1
    public final void e(long j) {
        boolean z = this.c;
        String unsignedString = Long.toUnsignedString(j);
        if (z) {
            g(unsignedString);
        } else {
            unsignedString.getClass();
            this.a.c(unsignedString);
        }
    }

    @Override // defpackage.au1
    public final void f(short s) {
        if (this.c) {
            g(String.valueOf(s & 65535));
            return;
        }
        String strValueOf = String.valueOf(s & 65535);
        strValueOf.getClass();
        this.a.c(strValueOf);
    }
}
