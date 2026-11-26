package androidx.compose.foundation.text.contextmenu.gestures;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f57;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class RightClickGesturesKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt", f = "RightClickGestures.kt", l = {45}, m = "awaitFirstRightClickDown", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RightClickGesturesKt.awaitFirstRightClickDown(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2", f = "RightClickGestures.kt", l = {32, 35}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ nl3<Offset, j59> $onDown;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super Offset, j59> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$onDown = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$onDown, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        
            if (r9 == r0) goto L15;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r8.label
                r2 = 2
                r3 = 0
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L17
                if (r1 != r2) goto L11
                defpackage.r57.b(r9)
                goto L4f
            L11:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r3
            L17:
                java.lang.Object r1 = r8.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                defpackage.r57.b(r9)
                goto L32
            L1f:
                defpackage.r57.b(r9)
                java.lang.Object r9 = r8.L$0
                r1 = r9
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                r8.L$0 = r1
                r8.label = r4
                java.lang.Object r9 = androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt.access$awaitFirstRightClickDown(r1, r8)
                if (r9 != r0) goto L32
                goto L4e
            L32:
                androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                r9.consume()
                nl3<androidx.compose.ui.geometry.Offset, j59> r5 = r8.$onDown
                long r6 = r9.m7569getPositionF1C5BW0()
                androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m5976boximpl(r6)
                r5.invoke(r9)
                r8.L$0 = r3
                r8.label = r2
                java.lang.Object r9 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation$default(r1, r3, r8, r4, r3)
                if (r9 != r0) goto L4f
            L4e:
                return r0
            L4f:
                androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                if (r9 == 0) goto L56
                r9.consume()
            L56:
                j59 r8 = defpackage.j59.a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0068 A[LOOP:0: B:21:0x0059->B:25:0x0068, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x0035 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:18:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object awaitFirstRightClickDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope r9, defpackage.e02<? super androidx.compose.ui.input.pointer.PointerInputChange> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = (androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = new androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            java.lang.Object r9 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
            defpackage.r57.b(r10)
            goto L40
        L2c:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            return r3
        L32:
            defpackage.r57.b(r10)
        L35:
            r0.L$0 = r9
            r0.label = r4
            java.lang.Object r10 = androidx.compose.ui.input.pointer.AwaitPointerEventScope.awaitPointerEvent$default(r9, r3, r0, r4, r3)
            if (r10 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            int r2 = r10.m7500getButtonsry648PA()
            boolean r2 = androidx.compose.ui.input.pointer.PointerEvent_androidKt.m7541isSecondaryPressedaHzCxE(r2)
            if (r2 == 0) goto L35
            java.util.List r2 = r10.getChanges()
            r5 = r2
            java.util.Collection r5 = (java.util.Collection) r5
            int r5 = r5.size()
            r6 = 0
            r7 = r6
        L59:
            if (r7 >= r5) goto L6b
            java.lang.Object r8 = r2.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            boolean r8 = androidx.compose.ui.input.pointer.PointerEventKt.changedToDown(r8)
            if (r8 != 0) goto L68
            goto L35
        L68:
            int r7 = r7 + 1
            goto L59
        L6b:
            java.util.List r9 = r10.getChanges()
            java.lang.Object r9 = r9.get(r6)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt.awaitFirstRightClickDown(androidx.compose.ui.input.pointer.AwaitPointerEventScope, e02):java.lang.Object");
    }

    public static final Object onRightClickDown(PointerInputScope pointerInputScope, nl3<? super Offset, j59> nl3Var, e02<? super j59> e02Var) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new AnonymousClass2(nl3Var, null), e02Var);
        return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
    }
}
