package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements x {
    private final int a;
    private int b;

    public z(int i) {
        this.a = i;
        g();
    }

    @Override // com.my.tracker.obfuscated.r2, com.my.tracker.obfuscated.i2
    public int a() {
        return this.a;
    }

    @Override // com.my.tracker.obfuscated.x, com.my.tracker.obfuscated.y
    public int d() {
        return this.b;
    }

    @Override // com.my.tracker.obfuscated.x
    public void f() {
        this.b++;
    }

    public void g() {
        this.b = 0;
    }

    public String toString() {
        return "[CountBased TS] id = " + this.a + ", count = " + this.b;
    }
}
