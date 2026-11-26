package androidx.compose.runtime.composer.gapbuffer;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.runtime.composer.gapbuffer.SlotTable$getSlots$1$iterator$1", f = "SlotTable.kt", l = {TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE}, m = "invokeSuspend", v = 1)
public final class SlotTable$getSlots$1$iterator$1 extends f57 implements bm3<bp7<? super Object>, e02<? super j59>, Object> {
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SlotTable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlotTable$getSlots$1$iterator$1(SlotTable slotTable, e02<? super SlotTable$getSlots$1$iterator$1> e02Var) {
        super(2, e02Var);
        this.this$0 = slotTable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SlotTable$getSlots$1$iterator$1 slotTable$getSlots$1$iterator$1 = new SlotTable$getSlots$1$iterator$1(this.this$0, e02Var);
        slotTable$getSlots$1$iterator$1.L$0 = obj;
        return slotTable$getSlots$1$iterator$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(bp7<Object> bp7Var, e02<? super j59> e02Var) {
        return ((SlotTable$getSlots$1$iterator$1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002d  */
    /* JADX WARN: Code duplicated, block: B:12:0x0043 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0041 -> B:13:0x0044). Please report as a decompilation issue!!! */
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
            goto L44
        L15:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L1c:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            bp7 r6 = (defpackage.bp7) r6
            androidx.compose.runtime.composer.gapbuffer.SlotTable r1 = r5.this$0
            int r1 = r1.getSlotsSize()
            r3 = 0
            r4 = r6
        L2b:
            if (r3 >= r1) goto L46
            androidx.compose.runtime.composer.gapbuffer.SlotTable r6 = r5.this$0
            java.lang.Object[] r6 = r6.m5441getSlots()
            r6 = r6[r3]
            r5.L$0 = r4
            r5.I$0 = r3
            r5.I$1 = r1
            r5.label = r2
            a32 r6 = r4.a(r5, r6)
            if (r6 != r0) goto L44
            return r0
        L44:
            int r3 = r3 + r2
            goto L2b
        L46:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.composer.gapbuffer.SlotTable$getSlots$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(bp7<? super Object> bp7Var, e02<? super j59> e02Var) {
        return invoke2((bp7<Object>) bp7Var, e02Var);
    }
}
