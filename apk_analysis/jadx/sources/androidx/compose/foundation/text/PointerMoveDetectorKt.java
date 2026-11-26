package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public final class PointerMoveDetectorKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2", f = "PointerMoveDetector.kt", l = {41}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ nl3<Offset, j59> $onMove;
        final /* synthetic */ PointerEventPass $pointerEventPass;
        final /* synthetic */ PointerInputScope $this_detectMoves;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1", f = "PointerMoveDetector.kt", l = {44}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
            final /* synthetic */ o22 $currentContext;
            final /* synthetic */ nl3<Offset, j59> $onMove;
            final /* synthetic */ PointerEventPass $pointerEventPass;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(o22 o22Var, PointerEventPass pointerEventPass, nl3<? super Offset, j59> nl3Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$currentContext = o22Var;
                this.$pointerEventPass = pointerEventPass;
                this.$onMove = nl3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentContext, this.$pointerEventPass, this.$onMove, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x0031  */
            /* JADX WARN: Code duplicated, block: B:13:0x003f A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:16:0x0052  */
            /* JADX WARN: Code duplicated, block: B:20:0x0066  */
            /* JADX WARN: Code duplicated, block: B:23:0x0085  */
            /* JADX WARN: Code duplicated, block: B:25:0x0088  */
            /* JADX WARN: Type inference failed for: r9v14, types: [T, androidx.compose.ui.geometry.Offset] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003d -> B:14:0x0040). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:13:0x003f
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // defpackage.cd0
            public final java.lang.Object invokeSuspend(java.lang.Object r9) {
                /*
                    r8 = this;
                    a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r8.label
                    r2 = 0
                    r3 = 1
                    if (r1 == 0) goto L1c
                    if (r1 != r3) goto L16
                    java.lang.Object r1 = r8.L$1
                    r07 r1 = (defpackage.r07) r1
                    java.lang.Object r4 = r8.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                    defpackage.r57.b(r9)
                    goto L40
                L16:
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r8)
                    return r2
                L1c:
                    defpackage.r57.b(r9)
                    java.lang.Object r9 = r8.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
                    r07 r1 = new r07
                    r1.<init>()
                    r4 = r9
                L29:
                    o22 r9 = r8.$currentContext
                    boolean r9 = defpackage.qb4.h(r9)
                    if (r9 == 0) goto L9c
                    androidx.compose.ui.input.pointer.PointerEventPass r9 = r8.$pointerEventPass
                    r8.L$0 = r4
                    r8.L$1 = r1
                    r8.label = r3
                    java.lang.Object r9 = r4.awaitPointerEvent(r9, r8)
                    if (r9 != r0) goto L40
                    return r0
                L40:
                    androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
                    int r5 = r9.m7502getType7fucELk()
                    androidx.compose.ui.input.pointer.PointerEventType$Companion r6 = androidx.compose.ui.input.pointer.PointerEventType.Companion
                    int r7 = r6.m7515getMove7fucELk()
                    boolean r7 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r5, r7)
                    if (r7 != 0) goto L66
                    int r7 = r6.m7513getEnter7fucELk()
                    boolean r7 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r5, r7)
                    if (r7 != 0) goto L66
                    int r6 = r6.m7514getExit7fucELk()
                    boolean r5 = androidx.compose.ui.input.pointer.PointerEventType.m7509equalsimpl0(r5, r6)
                    if (r5 == 0) goto L29
                L66:
                    java.util.List r9 = r9.getChanges()
                    java.lang.Object r9 = defpackage.qn1.T(r9)
                    androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                    long r5 = r9.m7569getPositionF1C5BW0()
                    androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m5976boximpl(r5)
                    long r5 = r9.m5997unboximpl()
                    T r7 = r1.b
                    boolean r5 = androidx.compose.ui.geometry.Offset.m5983equalsimpl(r5, r7)
                    if (r5 != 0) goto L85
                    goto L86
                L85:
                    r9 = r2
                L86:
                    if (r9 == 0) goto L29
                    nl3<androidx.compose.ui.geometry.Offset, j59> r5 = r8.$onMove
                    long r6 = r9.m5997unboximpl()
                    androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m5976boximpl(r6)
                    r1.b = r9
                    androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m5976boximpl(r6)
                    r5.invoke(r9)
                    goto L29
                L9c:
                    j59 r8 = defpackage.j59.a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.PointerMoveDetectorKt.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, nl3<? super Offset, j59> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_detectMoves = pointerInputScope;
            this.$pointerEventPass = pointerEventPass;
            this.$onMove = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$this_detectMoves, this.$pointerEventPass, this.$onMove, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                o22 context = getContext();
                PointerInputScope pointerInputScope = this.$this_detectMoves;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, this.$pointerEventPass, this.$onMove, null);
                this.label = 1;
                if (pointerInputScope.awaitPointerEventScope(anonymousClass1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public static final Object detectMoves(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, nl3<? super Offset, j59> nl3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(pointerInputScope, pointerEventPass, nl3Var, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public static /* synthetic */ Object detectMoves$default(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, nl3 nl3Var, e02 e02Var, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Initial;
        }
        return detectMoves(pointerInputScope, pointerEventPass, nl3Var, e02Var);
    }
}
