package com.google.protobuf;

import defpackage.ui9;

/* JADX INFO: loaded from: classes4.dex */
public final class w<K, V> {
    public final a<K, V> a;
    public final V b;

    public static class a<K, V> {
        public final ui9 a;
        public final ui9 b;
        public final V c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(ui9 ui9Var, ui9 ui9Var2, Object obj) {
            this.a = ui9Var;
            this.b = ui9Var2;
            this.c = obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w(ui9 ui9Var, ui9 ui9Var2, Object obj) {
        this.a = new a<>(ui9Var, ui9Var2, obj);
        this.b = obj;
    }

    public static <K, V> int a(a<K, V> aVar, K k, V v) {
        return m.c(aVar.b, 2, v) + m.c(aVar.a, 1, k);
    }
}
