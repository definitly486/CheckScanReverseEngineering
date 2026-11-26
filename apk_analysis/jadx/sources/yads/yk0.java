package yads;

import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class yk0 {
    public final xk0 a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    public yk0(xk0 xk0Var) {
        this.a = xk0Var;
    }

    public final ws2 a(Object... objArr) {
        Constructor constructorA;
        synchronized (this.b) {
            if (!this.b.get()) {
                try {
                    constructorA = this.a.a();
                } catch (ClassNotFoundException unused) {
                    this.b.set(true);
                    constructorA = null;
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
            constructorA = null;
        }
        if (constructorA == null) {
            return null;
        }
        try {
            return (ws2) constructorA.newInstance(objArr);
        } catch (Exception e2) {
            defpackage.h2.e("Unexpected error creating extractor", e2);
            return null;
        }
    }
}
