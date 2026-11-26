package io.grpc;

import defpackage.h88;
import defpackage.la5;

/* JADX INFO: loaded from: classes5.dex */
public class StatusRuntimeException extends RuntimeException {
    public final h88 b;
    public final la5 c;

    public StatusRuntimeException(h88 h88Var, la5 la5Var) {
        super(h88.c(h88Var), h88Var.c);
        this.b = h88Var;
        this.c = la5Var;
    }
}
