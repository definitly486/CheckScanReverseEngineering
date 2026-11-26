package defpackage;

import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class r13 implements ws6 {

    public static final class a {
        public static final r13 a = new r13();
    }

    @Override // defpackage.ws6
    public final Object get() {
        return new vb7(Executors.newSingleThreadExecutor());
    }
}
