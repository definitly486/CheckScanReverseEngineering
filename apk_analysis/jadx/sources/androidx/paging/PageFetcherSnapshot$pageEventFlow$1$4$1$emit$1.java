package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.tracing.Trace;
import com.google.android.material.internal.ViewUtils;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1", f = "PageFetcherSnapshot.kt", l = {694, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, Trace.MAX_TRACE_LABEL_LENGTH, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 731, 744, Trace.MAX_TRACE_LABEL_LENGTH, 756, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, ViewUtils.EDGE_TO_EDGE_FLAGS, 781, Trace.MAX_TRACE_LABEL_LENGTH, 793, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 805}, m = "emit", v = 1)
public final class PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1(PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1<? super T> anonymousClass1, e02<? super PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1> e02Var) {
        super(e02Var);
        this.this$0 = anonymousClass1;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1 for r1v2 'this'  e02
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
            androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1<T> r2 = r1.this$0
            r0 = 0
            java.lang.Object r1 = r2.emit(r0, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
