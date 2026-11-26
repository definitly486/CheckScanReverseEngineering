package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class t2a {
    public static final t2a r = new t2a(4096);
    public static final t2a s = new t2a(64);
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final int q;

    public t2a(int i) {
        this.q = i;
        this.a = (i & 1) == 1;
        this.b = (i & 2) == 2;
        this.c = (i & 4) == 4;
        this.d = (i & 8) == 8;
        this.e = (i & 16) == 16;
        this.f = (i & 32) == 32;
        this.g = (i & 64) == 64;
        this.h = (i & 128) == 128;
        this.i = (i & 256) == 256;
        this.j = (i & 512) == 512;
        this.k = (i & 1024) == 1024;
        this.l = (i & 2048) == 2048;
        this.m = (i & 4096) == 4096;
        this.n = (i & 8192) == 8192;
        this.o = (i & 16384) == 16384;
        this.p = (i & 32768) == 32768;
    }
}
