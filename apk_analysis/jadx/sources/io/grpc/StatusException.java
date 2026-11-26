package io.grpc;

import defpackage.h88;

/* JADX INFO: loaded from: classes5.dex */
public class StatusException extends Exception {
    public final h88 b;

    public StatusException(h88 h88Var) {
        super(h88.c(h88Var), h88Var.c);
        this.b = h88Var;
    }
}
