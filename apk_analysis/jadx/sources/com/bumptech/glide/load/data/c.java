package com.bumptech.glide.load.data;

import defpackage.i07;
import defpackage.pr;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements com.bumptech.glide.load.data.a<InputStream> {
    public final i07 a;

    public static final class a implements com.bumptech.glide.load.data.a.InterfaceC0127a<InputStream> {
        public final pr a;

        public a(pr prVar) {
            this.a = prVar;
        }

        @Override // com.bumptech.glide.load.data.a.InterfaceC0127a
        public final Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.a.InterfaceC0127a
        public final com.bumptech.glide.load.data.a<InputStream> b(InputStream inputStream) {
            return new c(inputStream, this.a);
        }
    }

    public c(InputStream inputStream, pr prVar) {
        i07 i07Var = new i07(inputStream, prVar);
        this.a = i07Var;
        i07Var.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.a
    public final InputStream a() {
        i07 i07Var = this.a;
        i07Var.reset();
        return i07Var;
    }

    @Override // com.bumptech.glide.load.data.a
    public final void b() {
        this.a.release();
    }
}
