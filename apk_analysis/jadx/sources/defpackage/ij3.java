package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ij3<V> extends hj3<V> implements ListenableFuture<V> {

    public static abstract class a<V> extends ij3<V> {
        public final l0 b;

        public a(l0 l0Var) {
            this.b = l0Var;
        }

        @Override // defpackage.oj3
        public final Object delegate() {
            return this.b;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        ((a) this).b.addListener(runnable, executor);
    }
}
