package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class yz2<Z> implements e47<Z> {
    public final boolean b;
    public final boolean c;
    public final e47<Z> d;
    public final a e;
    public final kf4 f;
    public int g;
    public boolean h;

    public interface a {
        void a(kf4 kf4Var, yz2<?> yz2Var);
    }

    public yz2(e47<Z> e47Var, boolean z, boolean z2, kf4 kf4Var, a aVar) {
        r96.c(e47Var, "Argument must not be null");
        this.d = e47Var;
        this.b = z;
        this.c = z2;
        this.f = kf4Var;
        r96.c(aVar, "Argument must not be null");
        this.e = aVar;
    }

    @Override // defpackage.e47
    public final Class<Z> a() {
        return this.d.a();
    }

    public final synchronized void b() {
        if (this.h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.g++;
    }

    public final void c() {
        boolean z;
        synchronized (this) {
            int i = this.g;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.g = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.e.a(this.f, this);
        }
    }

    @Override // defpackage.e47
    public final Z get() {
        return this.d.get();
    }

    @Override // defpackage.e47
    public final int getSize() {
        return this.d.getSize();
    }

    @Override // defpackage.e47
    public final synchronized void recycle() {
        if (this.g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.h = true;
        if (this.c) {
            this.d.recycle();
        }
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.b + ", listener=" + this.e + ", key=" + this.f + ", acquired=" + this.g + ", isRecycled=" + this.h + ", resource=" + this.d + '}';
    }
}
