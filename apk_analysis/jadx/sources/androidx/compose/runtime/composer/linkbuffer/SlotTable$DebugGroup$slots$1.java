package androidx.compose.runtime.composer.linkbuffer;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup$slots$1", f = "SlotTable.kt", l = {600}, m = "invokeSuspend", v = 1)
public final class SlotTable$DebugGroup$slots$1 extends f57 implements bm3<bp7<? super Object>, e02<? super j59>, Object> {
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SlotTable.DebugGroup this$0;
    final /* synthetic */ SlotTable this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlotTable$DebugGroup$slots$1(SlotTable.DebugGroup debugGroup, SlotTable slotTable, e02<? super SlotTable$DebugGroup$slots$1> e02Var) {
        super(2, e02Var);
        this.this$0 = debugGroup;
        this.this$1 = slotTable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SlotTable$DebugGroup$slots$1 slotTable$DebugGroup$slots$1 = new SlotTable$DebugGroup$slots$1(this.this$0, this.this$1, e02Var);
        slotTable$DebugGroup$slots$1.L$0 = obj;
        return slotTable$DebugGroup$slots$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(bp7<Object> bp7Var, e02<? super j59> e02Var) {
        return ((SlotTable$DebugGroup$slots$1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0040  */
    /* JADX WARN: Code duplicated, block: B:12:0x0056 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0054 -> B:13:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L15
            int r1 = r5.I$1
            int r3 = r5.I$0
            java.lang.Object r4 = r5.L$0
            bp7 r4 = (defpackage.bp7) r4
            defpackage.r57.b(r6)
            goto L57
        L15:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L1c:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            bp7 r6 = (defpackage.bp7) r6
            androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup r1 = r5.this$0
            androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugSlotRange r1 = r1.getSlotRange()
            int r3 = r1.getAddress()
            androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup r4 = r5.this$0
            int r4 = r4.getFlags()
            int r4 = androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt.utilitySlotsCountForFlags(r4)
            int r4 = r4 + r3
            int r1 = r1.getEnd()
            r3 = r4
            r4 = r6
        L3e:
            if (r3 >= r1) goto L59
            androidx.compose.runtime.composer.linkbuffer.SlotTable r6 = r5.this$1
            java.lang.Object[] r6 = androidx.compose.runtime.composer.linkbuffer.SlotTable.access$getSlots(r6)
            r6 = r6[r3]
            r5.L$0 = r4
            r5.I$0 = r3
            r5.I$1 = r1
            r5.label = r2
            a32 r6 = r4.a(r5, r6)
            if (r6 != r0) goto L57
            return r0
        L57:
            int r3 = r3 + r2
            goto L3e
        L59:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup$slots$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(bp7<? super Object> bp7Var, e02<? super j59> e02Var) {
        return invoke2((bp7<Object>) bp7Var, e02Var);
    }
}
