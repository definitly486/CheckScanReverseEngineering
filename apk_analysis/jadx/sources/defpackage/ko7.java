package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class ko7 extends hl7<ko7> {
    public final /* synthetic */ AtomicReferenceArray h;

    public ko7(long j, ko7 ko7Var, int i) {
        super(j, ko7Var, i);
        this.h = new AtomicReferenceArray(jo7.f);
    }

    @Override // defpackage.hl7
    public final int g() {
        return jo7.f;
    }

    @Override // defpackage.hl7
    public final void h(int i, o22 o22Var) {
        this.h.set(i, jo7.e);
        i();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.e + ", hashCode=" + hashCode() + ']';
    }
}
