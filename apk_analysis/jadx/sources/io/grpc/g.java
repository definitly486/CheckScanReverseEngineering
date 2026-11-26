package io.grpc;

import androidx.core.app.NotificationCompat;
import defpackage.h88;
import defpackage.o8;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {
    public static final io.grpc.a.b<g> a = new io.grpc.a.b<>("internal:io.grpc.config-selector");

    public static final class a {
        public final h88 a;
        public final Object b;

        public a(h88 h88Var, Object obj) {
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            this.a = h88Var;
            this.b = obj;
        }
    }

    public abstract a a();
}
