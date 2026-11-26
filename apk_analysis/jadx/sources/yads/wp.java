package yads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wp implements mm {
    public km b;
    public km c;
    public km d;
    public km e;
    public ByteBuffer f;
    public ByteBuffer g;
    public boolean h;

    public wp() {
        ByteBuffer byteBuffer = mm.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        km kmVar = km.e;
        this.d = kmVar;
        this.e = kmVar;
        this.b = kmVar;
        this.c = kmVar;
    }

    public final ByteBuffer a(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    public abstract km b(km kmVar);

    @Override // yads.mm
    public final void b() {
        this.h = true;
        f();
    }

    @Override // yads.mm
    public boolean c() {
        return this.h && this.g == mm.a;
    }

    @Override // yads.mm
    public final void d() {
        flush();
        this.f = mm.a;
        km kmVar = km.e;
        this.d = kmVar;
        this.e = kmVar;
        this.b = kmVar;
        this.c = kmVar;
        g();
    }

    public void e() {
    }

    public void f() {
    }

    @Override // yads.mm
    public final void flush() {
        this.g = mm.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        e();
    }

    public void g() {
    }

    @Override // yads.mm
    public boolean isActive() {
        return this.e != km.e;
    }

    @Override // yads.mm
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.g;
        this.g = mm.a;
        return byteBuffer;
    }

    @Override // yads.mm
    public final km a(km kmVar) {
        this.d = kmVar;
        this.e = b(kmVar);
        return isActive() ? this.e : km.e;
    }
}
