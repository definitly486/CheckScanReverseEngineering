package defpackage;

import java.util.ArrayList;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class os5 implements Callable {
    public final /* synthetic */ vs5 b;

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new ArrayList(this.b.a().size());
    }
}
