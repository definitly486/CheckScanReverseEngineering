package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropFilter_androidKt {

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements nl3<MotionEvent, Boolean> {
        final /* synthetic */ AndroidViewHolder $view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(AndroidViewHolder androidViewHolder) {
            super(1);
            this.$view = androidViewHolder;
        }

        @Override // defpackage.nl3
        public final Boolean invoke(MotionEvent motionEvent) {
            boolean zDispatchTouchEvent;
            int actionMasked = motionEvent.getActionMasked();
            AndroidViewHolder androidViewHolder = this.$view;
            switch (actionMasked) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    zDispatchTouchEvent = androidViewHolder.dispatchTouchEvent(motionEvent);
                    break;
                default:
                    zDispatchTouchEvent = androidViewHolder.dispatchGenericMotionEvent(motionEvent);
                    break;
            }
            return Boolean.valueOf(zDispatchTouchEvent);
        }
    }

    public static final Modifier motionEventSpy(Modifier modifier, final nl3<? super MotionEvent, j59> nl3Var) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, nl3Var, new PointerInputEventHandler() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt.motionEventSpy.1

            /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1$1", f = "PointerInteropFilter.android.kt", l = {389}, m = "invokeSuspend", v = 1)
            public static final class C00821 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ nl3<MotionEvent, j59> $watcher;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00821(nl3<? super MotionEvent, j59> nl3Var, e02<? super C00821> e02Var) {
                    super(2, e02Var);
                    this.$watcher = nl3Var;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00821 c00821 = new C00821(this.$watcher, e02Var);
                    c00821.L$0 = obj;
                    return c00821;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((C00821) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code duplicated, block: B:11:0x002c A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:14:0x0035  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002a -> B:12:0x002d). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // defpackage.cd0
                public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                    /*
                        r4 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r4.label
                        r2 = 1
                        if (r1 == 0) goto L18
                        if (r1 != r2) goto L11
                        java.lang.Object r1 = r4.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        defpackage.r57.b(r5)
                        goto L2d
                    L11:
                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r4)
                        r4 = 0
                        return r4
                    L18:
                        defpackage.r57.b(r5)
                        java.lang.Object r5 = r4.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                        r1 = r5
                    L20:
                        androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r4.L$0 = r1
                        r4.label = r2
                        java.lang.Object r5 = r1.awaitPointerEvent(r5, r4)
                        if (r5 != r0) goto L2d
                        return r0
                    L2d:
                        androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                        android.view.MotionEvent r5 = r5.getMotionEvent()
                        if (r5 == 0) goto L20
                        nl3<android.view.MotionEvent, j59> r3 = r4.$watcher
                        r3.invoke(r5)
                        goto L20
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt.AnonymousClass1.C00821.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                pointerInputScope.setInterceptOutOfBoundsChildEvents(true);
                Object objAwaitPointerEventScope = pointerInputScope.awaitPointerEventScope(new C00821(nl3Var, null), e02Var);
                return objAwaitPointerEventScope == a32.COROUTINE_SUSPENDED ? objAwaitPointerEventScope : j59.a;
            }
        });
    }

    public static final Modifier pointerInteropFilter(Modifier modifier, AndroidViewHolder androidViewHolder) {
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.setOnTouchEvent(new AnonymousClass3(androidViewHolder));
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent = new RequestDisallowInterceptTouchEvent();
        pointerInteropFilter.setRequestDisallowInterceptTouchEvent(requestDisallowInterceptTouchEvent);
        androidViewHolder.setOnRequestDisallowInterceptTouchEvent$ui(requestDisallowInterceptTouchEvent);
        return modifier.then(pointerInteropFilter);
    }

    public static /* synthetic */ Modifier pointerInteropFilter$default(Modifier modifier, RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            requestDisallowInterceptTouchEvent = null;
        }
        return pointerInteropFilter(modifier, requestDisallowInterceptTouchEvent, nl3Var);
    }

    public static final Modifier pointerInteropFilter(Modifier modifier, RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, nl3<? super MotionEvent, Boolean> nl3Var) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1(requestDisallowInterceptTouchEvent, nl3Var) : InspectableValueKt.getNoInspectorInfo(), new AnonymousClass2(nl3Var, requestDisallowInterceptTouchEvent));
    }

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements dm3<Modifier, Composer, Integer, Modifier> {
        final /* synthetic */ nl3<MotionEvent, Boolean> $onTouchEvent;
        final /* synthetic */ RequestDisallowInterceptTouchEvent $requestDisallowInterceptTouchEvent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super MotionEvent, Boolean> nl3Var, RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent) {
            super(3);
            this.$onTouchEvent = nl3Var;
            this.$requestDisallowInterceptTouchEvent = requestDisallowInterceptTouchEvent;
        }

        public final Modifier invoke(Modifier modifier, Composer composer, int i) {
            composer.startReplaceGroup(374375707);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(374375707, i, -1, "androidx.compose.ui.input.pointer.pointerInteropFilter.<anonymous> (PointerInteropFilter.android.kt:78)");
            }
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new PointerInteropFilter();
                composer.updateRememberedValue(objRememberedValue);
            }
            PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) objRememberedValue;
            pointerInteropFilter.setOnTouchEvent(this.$onTouchEvent);
            pointerInteropFilter.setRequestDisallowInterceptTouchEvent(this.$requestDisallowInterceptTouchEvent);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return pointerInteropFilter;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
            return invoke(modifier, composer, num.intValue());
        }
    }
}
