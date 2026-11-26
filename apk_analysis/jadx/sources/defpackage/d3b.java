package defpackage;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class d3b extends PhantomReference {
    public final Set a;

    public /* synthetic */ d3b(el1 el1Var, ReferenceQueue referenceQueue, Set set, jka jkaVar) {
        super(el1Var, referenceQueue);
        this.a = set;
    }
}
