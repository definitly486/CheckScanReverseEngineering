package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 implements y1 {
    private final int a;
    private long b;

    public z1(int i, long j) {
        this.a = i;
        this.b = j;
    }

    @Override // com.my.tracker.obfuscated.r2, com.my.tracker.obfuscated.i2
    public int a() {
        return this.a;
    }

    @Override // com.my.tracker.obfuscated.y1
    public void b(long j) {
        this.b = j;
    }

    @Override // com.my.tracker.obfuscated.y1
    public long e() {
        return this.b;
    }
}
