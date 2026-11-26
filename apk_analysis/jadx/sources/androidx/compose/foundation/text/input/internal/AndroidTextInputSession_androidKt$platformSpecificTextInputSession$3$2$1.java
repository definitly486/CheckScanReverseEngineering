package androidx.compose.foundation.text.input.internal;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.vg5;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1", f = "AndroidTextInputSession.android.kt", l = {114, 115}, m = "invokeSuspend", v = 1)
public final class AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ ComposeInputMethodManager $composeImm;
    final /* synthetic */ vg5<j59> $it;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(vg5<j59> vg5Var, ComposeInputMethodManager composeInputMethodManager, e02<? super AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1> e02Var) {
        super(2, e02Var);
        this.$it = vg5Var;
        this.$composeImm = composeInputMethodManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(long j) {
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(this.$it, this.$composeImm, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        if (r5.collect(r1, r4) == r0) goto L16;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 == r2) goto L13
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
        L11:
            r4 = 0
            return r4
        L13:
            defpackage.r57.b(r5)
            goto L3e
        L17:
            defpackage.r57.b(r5)
            goto L2c
        L1b:
            defpackage.r57.b(r5)
            androidx.compose.foundation.text.input.internal.d r5 = new androidx.compose.foundation.text.input.internal.d
            r5.<init>()
            r4.label = r3
            java.lang.Object r5 = androidx.compose.runtime.MonotonicFrameClockKt.withFrameMillis(r5, r4)
            if (r5 != r0) goto L2c
            goto L3d
        L2c:
            vg5<j59> r5 = r4.$it
            androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1$2 r1 = new androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1$2
            androidx.compose.foundation.text.input.internal.ComposeInputMethodManager r3 = r4.$composeImm
            r1.<init>()
            r4.label = r2
            java.lang.Object r4 = r5.collect(r1, r4)
            if (r4 != r0) goto L3e
        L3d:
            return r0
        L3e:
            defpackage.h8.d()
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
