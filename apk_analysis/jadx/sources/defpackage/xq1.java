package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xq1 implements e02<Object> {
    public static final xq1 b = new xq1();

    @Override // defpackage.e02
    public final o22 getContext() {
        throw new IllegalStateException("This continuation is already complete");
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete");
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
