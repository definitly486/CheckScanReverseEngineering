package com.google.common.collect;

import defpackage.o8;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends f<Object>.a<t.a<Object>> {
    public final /* synthetic */ f f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar) {
        super();
        this.f = fVar;
    }

    @Override // com.google.common.collect.f.a
    public final t.a<Object> a(int i) {
        v<E> vVar = this.f.d;
        o8.j(i, vVar.c);
        return new v.a(i);
    }
}
