package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public interface ks<I, O> {
    ListenableFuture<O> apply(I i);
}
