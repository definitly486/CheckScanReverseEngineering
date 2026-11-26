package com.tapjoy.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x1 {
    public static void a(IOException iOException, Class cls) {
        if (cls.isInstance(iOException)) {
            try {
                throw ((Throwable) cls.cast(iOException));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
