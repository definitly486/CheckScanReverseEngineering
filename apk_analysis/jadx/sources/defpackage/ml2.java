package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ml2 implements zo7<y74> {
    public final CharSequence a;
    public final bm3<CharSequence, Integer, b36<Integer, Integer>> b;

    public static final class a implements Iterator<y74>, re4 {
        public int b = -1;
        public int c;
        public int d;
        public y74 e;

        public a() {
            int iF = kx6.f(0, 0, ml2.this.a.length());
            this.c = iF;
            this.d = iF;
        }

        public final void a() {
            b36<Integer, Integer> b36VarInvoke;
            ml2 ml2Var = ml2.this;
            CharSequence charSequence = ml2Var.a;
            int i = this.d;
            if (i < 0) {
                this.b = 0;
                this.e = null;
                return;
            }
            if (i <= charSequence.length() && (b36VarInvoke = ml2Var.b.invoke(charSequence, Integer.valueOf(this.d))) != null) {
                int iIntValue = b36VarInvoke.b.intValue();
                int iIntValue2 = b36VarInvoke.c.intValue();
                this.e = kx6.n(this.c, iIntValue);
                int i2 = iIntValue + iIntValue2;
                this.c = i2;
                this.d = i2 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.e = new y74(this.c, charSequence.length() - 1, 1);
                this.d = -1;
            }
            this.b = 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.b == -1) {
                a();
            }
            return this.b == 1;
        }

        @Override // java.util.Iterator
        public final y74 next() {
            if (this.b == -1) {
                a();
            }
            if (this.b == 0) {
                qz0.e();
                return null;
            }
            y74 y74Var = this.e;
            y74Var.getClass();
            this.e = null;
            this.b = -1;
            return y74Var;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public ml2(CharSequence charSequence, bm3 bm3Var) {
        this.a = charSequence;
        this.b = bm3Var;
    }

    @Override // defpackage.zo7
    public final Iterator<y74> iterator() {
        return new a();
    }
}
