package com.google.common.collect;

import defpackage.o8;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends f<Object>.a<Object> {
    public final /* synthetic */ f f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar) {
        super();
        this.f = fVar;
    }

    @Override // com.google.common.collect.f.a
    public final Object a(int i) {
        v<E> vVar = this.f.d;
        o8.j(i, vVar.c);
        return vVar.a[i];
    }
}
