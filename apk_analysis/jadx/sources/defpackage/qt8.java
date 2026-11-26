package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qt8 implements o22.b<ot8<?>> {
    public final ThreadLocal<?> b;

    public qt8(ThreadLocal<?> threadLocal) {
        this.b = threadLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qt8) && aa4.e(this.b, ((qt8) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "ThreadLocalKey(threadLocal=" + this.b + ')';
    }
}
