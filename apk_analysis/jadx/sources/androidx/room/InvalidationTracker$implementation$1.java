package androidx.room;

import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class InvalidationTracker$implementation$1 extends qm3 implements nl3<Set<? extends Integer>, j59> {
    public InvalidationTracker$implementation$1(Object obj) {
        super(1, obj, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Set<Integer> set) {
        set.getClass();
        ((InvalidationTracker) this.receiver).notifyInvalidatedObservers(set);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Set<? extends Integer> set) {
        invoke2((Set<Integer>) set);
        return j59.a;
    }
}
