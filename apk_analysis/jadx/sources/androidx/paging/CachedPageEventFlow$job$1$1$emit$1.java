package androidx.paging;

import androidx.media3.container.MdtaMetadataEntry;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.CachedPageEventFlow$job$1$1", f = "CachedPageEventFlow.kt", l = {74, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "emit", v = 1)
public final class CachedPageEventFlow$job$1$1$emit$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CachedPageEventFlow$job$1.AnonymousClass1<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CachedPageEventFlow$job$1$1$emit$1(CachedPageEventFlow$job$1.AnonymousClass1<? super T> anonymousClass1, e02<? super CachedPageEventFlow$job$1$1$emit$1> e02Var) {
        super(e02Var);
        this.this$0 = anonymousClass1;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.CachedPageEventFlow$job$1$1$emit$1 for r1v2 'this'  e02
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r2) {
        /*
            r1 = this;
            r1.result = r2
            int r2 = r1.label
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 | r0
            r1.label = r2
            androidx.paging.CachedPageEventFlow$job$1$1<T> r2 = r1.this$0
            r0 = 0
            java.lang.Object r1 = r2.emit(r0, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPageEventFlow$job$1$1$emit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
