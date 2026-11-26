package com.google.protobuf;

import defpackage.fx0;

/* JADX INFO: loaded from: classes4.dex */
public class s {
    public volatile a0 a;
    public volatile fx0 b;

    static {
        j.a();
    }

    public final a0 a(a0 a0Var) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = a0Var;
                        this.b = fx0.c;
                    } catch (InvalidProtocolBufferException unused) {
                        this.a = a0Var;
                        this.b = fx0.c;
                    }
                }
            }
        }
        return this.a;
    }
}
