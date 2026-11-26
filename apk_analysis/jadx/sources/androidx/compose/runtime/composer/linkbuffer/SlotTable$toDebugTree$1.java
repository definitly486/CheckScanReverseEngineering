package androidx.compose.runtime.composer.linkbuffer;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.runtime.composer.linkbuffer.SlotTable$toDebugTree$1", f = "SlotTable.kt", l = {585}, m = "invokeSuspend", v = 1)
public final class SlotTable$toDebugTree$1 extends f57 implements bm3<bp7<? super SlotTable.DebugGroup>, e02<? super j59>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ SlotTable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlotTable$toDebugTree$1(SlotTable slotTable, e02<? super SlotTable$toDebugTree$1> e02Var) {
        super(2, e02Var);
        this.this$0 = slotTable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SlotTable$toDebugTree$1 slotTable$toDebugTree$1 = new SlotTable$toDebugTree$1(this.this$0, e02Var);
        slotTable$toDebugTree$1.L$0 = obj;
        return slotTable$toDebugTree$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(bp7<? super SlotTable.DebugGroup> bp7Var, e02<? super j59> e02Var) {
        return ((SlotTable$toDebugTree$1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003f  */
    /* JADX WARN: Code duplicated, block: B:12:0x0054 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0052 -> B:13:0x0055). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L22
            if (r1 != r2) goto L1b
            int r1 = r6.I$0
            java.lang.Object r3 = r6.L$2
            int[] r3 = (int[]) r3
            java.lang.Object r4 = r6.L$1
            androidx.compose.runtime.composer.linkbuffer.SlotTable r4 = (androidx.compose.runtime.composer.linkbuffer.SlotTable) r4
            java.lang.Object r5 = r6.L$0
            bp7 r5 = (defpackage.bp7) r5
            defpackage.r57.b(r7)
            goto L55
        L1b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L22:
            defpackage.r57.b(r7)
            java.lang.Object r7 = r6.L$0
            bp7 r7 = (defpackage.bp7) r7
            androidx.compose.runtime.composer.linkbuffer.SlotTable r1 = r6.this$0
            int r3 = r1.getRoot()
            androidx.compose.runtime.composer.linkbuffer.SlotTable r4 = r6.this$0
            androidx.compose.runtime.composer.linkbuffer.SlotTableAddressSpace r1 = r1.getAddressSpace()
            int[] r1 = r1.getGroups()
            r5 = r3
            r3 = r1
            r1 = r5
            r5 = r7
        L3d:
            if (r1 < 0) goto L59
            androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup r7 = new androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup
            r7.<init>(r1)
            r6.L$0 = r5
            r6.L$1 = r4
            r6.L$2 = r3
            r6.I$0 = r1
            r6.label = r2
            a32 r7 = r5.a(r6, r7)
            if (r7 != r0) goto L55
            return r0
        L55:
            int r1 = r1 + r2
            r1 = r3[r1]
            goto L3d
        L59:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.composer.linkbuffer.SlotTable$toDebugTree$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
