package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class su4<Z> implements e47<Z>, f53.d {
    public static final f53.c f = f53.a(20, new a());
    public final c78.a b = new c78.a();
    public e47<Z> c;
    public boolean d;
    public boolean e;

    public class a implements f53.b<su4<?>> {
        @Override // f53.b
        public final su4<?> create() {
            return new su4<>();
        }
    }

    @Override // defpackage.e47
    public final Class<Z> a() {
        return this.c.a();
    }

    public final synchronized void b() {
        this.b.a();
        if (!this.d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.d = false;
        if (this.e) {
            recycle();
        }
    }

    @Override // f53.d
    public final c78.a d() {
        return this.b;
    }

    @Override // defpackage.e47
    public final Z get() {
        return this.c.get();
    }

    @Override // defpackage.e47
    public final int getSize() {
        return this.c.getSize();
    }

    @Override // defpackage.e47
    public final synchronized void recycle() {
        this.b.a();
        this.e = true;
        if (!this.d) {
            this.c.recycle();
            this.c = null;
            f.release(this);
        }
    }
}
