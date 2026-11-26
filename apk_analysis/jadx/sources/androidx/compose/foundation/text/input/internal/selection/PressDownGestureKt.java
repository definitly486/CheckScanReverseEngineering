package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class PressDownGestureKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.PressDownGestureKt$detectPressDownGesture$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.PressDownGestureKt$detectPressDownGesture$2", f = "PressDownGesture.kt", l = {31, 37}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ TapOnPosition $onDown;
        final /* synthetic */ ll3<j59> $onUp;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(TapOnPosition tapOnPosition, ll3<j59> ll3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$onDown = tapOnPosition;
            this.$onUp = ll3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$onDown, this.$onUp, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        
            if (r14 == r0) goto L19;
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:20:0x0060). Please report as a decompilation issue!!! */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r13.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L20
                if (r1 != r3) goto L1a
                java.lang.Object r1 = r13.L$1
                androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                java.lang.Object r5 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                defpackage.r57.b(r14)
                r8 = r13
                goto L60
            L1a:
                java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r13)
                return r2
            L20:
                java.lang.Object r1 = r13.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r14)
                r8 = r13
                goto L42
            L29:
                defpackage.r57.b(r14)
                java.lang.Object r14 = r13.L$0
                r5 = r14
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                r13.L$0 = r5
                r13.label = r4
                r6 = 0
                r7 = 0
                r9 = 2
                r10 = 0
                r8 = r13
                java.lang.Object r14 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r5, r6, r7, r8, r9, r10)
                if (r14 != r0) goto L41
                goto L5f
            L41:
                r1 = r5
            L42:
                androidx.compose.ui.input.pointer.PointerInputChange r14 = (androidx.compose.ui.input.pointer.PointerInputChange) r14
                androidx.compose.foundation.text.input.internal.selection.TapOnPosition r13 = r8.$onDown
                long r5 = r14.m7569getPositionF1C5BW0()
                r13.mo2860onEventk4lQ0M(r5)
                ll3<j59> r13 = r8.$onUp
                if (r13 == 0) goto L93
                r5 = r1
                r1 = r14
            L53:
                r8.L$0 = r5
                r8.L$1 = r1
                r8.label = r3
                java.lang.Object r14 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r5, r2, r8, r4, r2)
                if (r14 != r0) goto L60
            L5f:
                return r0
            L60:
                androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
                java.util.List r13 = r14.getChanges()
                r14 = r13
                java.util.Collection r14 = (java.util.Collection) r14
                int r14 = r14.size()
                r6 = 0
            L6e:
                if (r6 >= r14) goto L8e
                java.lang.Object r7 = r13.get(r6)
                androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                long r9 = r7.m7566getIdJ3iCeTQ()
                long r11 = r1.m7566getIdJ3iCeTQ()
                boolean r9 = androidx.compose.ui.input.pointer.PointerId.m7548equalsimpl0(r9, r11)
                if (r9 == 0) goto L8b
                boolean r7 = r7.getPressed()
                if (r7 == 0) goto L8b
                goto L53
            L8b:
                int r6 = r6 + 1
                goto L6e
            L8e:
                ll3<j59> r13 = r8.$onUp
                r13.invoke()
            L93:
                j59 r13 = defpackage.j59.a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.selection.PressDownGestureKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final Object detectPressDownGesture(PointerInputScope pointerInputScope, TapOnPosition tapOnPosition, ll3<j59> ll3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass2(tapOnPosition, ll3Var, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }

    public static /* synthetic */ Object detectPressDownGesture$default(PointerInputScope pointerInputScope, TapOnPosition tapOnPosition, ll3 ll3Var, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ll3Var = null;
        }
        return detectPressDownGesture(pointerInputScope, tapOnPosition, ll3Var, e02Var);
    }
}
