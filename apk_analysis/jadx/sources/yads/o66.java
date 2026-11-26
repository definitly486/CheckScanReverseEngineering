package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o66 extends u66 {
    public final String b;
    public int c;

    public o66(String str, int i) {
        this.b = str;
        this.c = i;
    }

    public final void a(int i) {
        Integer num = (Integer) bt4.a.invoke(l20.a(i));
        if (num == null) {
            throw new k76(defpackage.me0.c("Wrong value format for color variable: '", l20.d(i), "'"), null, 2);
        }
        b(l20.b(num.intValue()));
    }

    public final void b(int i) {
        if (this.c == i) {
            return;
        }
        this.c = i;
        a((u66) this);
    }

    public final int c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
