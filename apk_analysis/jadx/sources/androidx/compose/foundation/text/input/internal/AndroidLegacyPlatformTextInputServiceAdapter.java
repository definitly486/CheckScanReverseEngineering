package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.PlatformTextInputSession;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.e02;
import defpackage.h8;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;
import defpackage.z22;
import defpackage.zs7;
import java.util.List;
import kotlin.KotlinNothingValueException;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidLegacyPlatformTextInputServiceAdapter extends LegacyPlatformTextInputServiceAdapter {
    public static final int $stable = 8;
    private vg5<j59> backingStylusHandwritingTrigger;
    private LegacyTextInputMethodRequest currentRequest;
    private mb4 job;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {GapComposerKt.nodeKey}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<PlatformTextInputSession, e02<?>, Object> {
        final /* synthetic */ nl3<LegacyTextInputMethodRequest, j59> $initializeRequest;
        final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode $node;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter this$0;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {149}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<?>, Object> {
            final /* synthetic */ PlatformTextInputSession $$this$launchTextInputSession;
            final /* synthetic */ nl3<LegacyTextInputMethodRequest, j59> $initializeRequest;
            final /* synthetic */ LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode $node;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter this$0;

            /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1", f = "LegacyPlatformTextInputServiceAdapter.android.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA}, m = "invokeSuspend", v = 1)
            public static final class C00451 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ InputMethodManager $inputMethodManager;
                int label;
                final /* synthetic */ AndroidLegacyPlatformTextInputServiceAdapter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00451(AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, InputMethodManager inputMethodManager, e02<? super C00451> e02Var) {
                    super(2, e02Var);
                    this.this$0 = androidLegacyPlatformTextInputServiceAdapter;
                    this.$inputMethodManager = inputMethodManager;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final j59 invokeSuspend$lambda$0(long j) {
                    return j59.a;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00451(this.this$0, this.$inputMethodManager, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00451) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
                
                    if (r6.collect(r1, r5) == r0) goto L17;
                 */
                @Override // defpackage.cd0
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                    /*
                        r5 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r5.label
                        r2 = 0
                        r3 = 2
                        r4 = 1
                        if (r1 == 0) goto L1b
                        if (r1 == r4) goto L17
                        if (r1 == r3) goto L13
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r5)
                        return r2
                    L13:
                        defpackage.r57.b(r6)
                        goto L44
                    L17:
                        defpackage.r57.b(r6)
                        goto L2c
                    L1b:
                        defpackage.r57.b(r6)
                        androidx.compose.foundation.text.input.internal.a r6 = new androidx.compose.foundation.text.input.internal.a
                        r6.<init>()
                        r5.label = r4
                        java.lang.Object r6 = androidx.compose.runtime.MonotonicFrameClockKt.withFrameMillis(r6, r5)
                        if (r6 != r0) goto L2c
                        goto L43
                    L2c:
                        androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter r6 = r5.this$0
                        vg5 r6 = androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter.access$getStylusHandwritingTrigger(r6)
                        if (r6 == 0) goto L48
                        androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2 r1 = new androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2
                        androidx.compose.foundation.text.input.internal.InputMethodManager r4 = r5.$inputMethodManager
                        r1.<init>()
                        r5.label = r3
                        java.lang.Object r5 = r6.collect(r1, r5)
                        if (r5 != r0) goto L44
                    L43:
                        return r0
                    L44:
                        defpackage.h8.d()
                        return r2
                    L48:
                        j59 r5 = defpackage.j59.a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter.AnonymousClass2.AnonymousClass1.C00451.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(PlatformTextInputSession platformTextInputSession, nl3<? super LegacyTextInputMethodRequest, j59> nl3Var, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$$this$launchTextInputSession = platformTextInputSession;
                this.$initializeRequest = nl3Var;
                this.this$0 = androidLegacyPlatformTextInputServiceAdapter;
                this.$node = legacyPlatformTextInputNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$launchTextInputSession, this.$initializeRequest, this.this$0, this.$node, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<?> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                try {
                    if (i == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        InputMethodManager inputMethodManagerInvoke = LegacyPlatformTextInputServiceAdapter_androidKt.getInputMethodManagerFactory().invoke(this.$$this$launchTextInputSession.getView());
                        LegacyTextInputMethodRequest legacyTextInputMethodRequest = new LegacyTextInputMethodRequest(this.$$this$launchTextInputSession.getView(), new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1(this.$node), inputMethodManagerInvoke);
                        if (StylusHandwriting_androidKt.isStylusHandwritingSupported()) {
                            av0.c(y22Var, null, null, new C00451(this.this$0, inputMethodManagerInvoke, null), 3);
                        }
                        nl3<LegacyTextInputMethodRequest, j59> nl3Var = this.$initializeRequest;
                        if (nl3Var != null) {
                            nl3Var.invoke(legacyTextInputMethodRequest);
                        }
                        this.this$0.currentRequest = legacyTextInputMethodRequest;
                        PlatformTextInputSession platformTextInputSession = this.$$this$launchTextInputSession;
                        this.label = 1;
                        if (platformTextInputSession.startInputMethod(legacyTextInputMethodRequest, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    throw new KotlinNothingValueException();
                } catch (Throwable th) {
                    this.this$0.currentRequest = null;
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super LegacyTextInputMethodRequest, j59> nl3Var, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$initializeRequest = nl3Var;
            this.this$0 = androidLegacyPlatformTextInputServiceAdapter;
            this.$node = legacyPlatformTextInputNode;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$initializeRequest, this.this$0, this.$node, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(PlatformTextInputSession platformTextInputSession, e02<?> e02Var) {
            return ((AnonymousClass2) create(platformTextInputSession, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1((PlatformTextInputSession) this.L$0, this.$initializeRequest, this.this$0, this.$node, null);
                this.label = 1;
                if (z22.c(anonymousClass1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final vg5<j59> getStylusHandwritingTrigger() {
        vg5<j59> vg5Var = this.backingStylusHandwritingTrigger;
        if (vg5Var != null) {
            return vg5Var;
        }
        if (!StylusHandwriting_androidKt.isStylusHandwritingSupported()) {
            return null;
        }
        zs7 zs7VarB = bt7.b(1, 0, cu0.DROP_LATEST, 2);
        this.backingStylusHandwritingTrigger = zs7VarB;
        return zs7VarB;
    }

    private final void startInput(nl3<? super LegacyTextInputMethodRequest, j59> nl3Var) {
        LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode textInputModifierNode = getTextInputModifierNode();
        if (textInputModifierNode == null) {
            return;
        }
        this.job = textInputModifierNode.launchTextInputSession(new AnonymousClass2(nl3Var, this, textInputModifierNode, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 startInput$lambda$0(TextFieldValue textFieldValue, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, ImeOptions imeOptions, nl3 nl3Var, nl3 nl3Var2, LegacyTextInputMethodRequest legacyTextInputMethodRequest) {
        legacyTextInputMethodRequest.startInput(textFieldValue, androidLegacyPlatformTextInputServiceAdapter.getTextInputModifierNode(), imeOptions, nl3Var, nl3Var2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startInput$localToScreen(LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, float[] fArr) {
        LayoutCoordinates layoutCoordinates = legacyPlatformTextInputNode.getLayoutCoordinates();
        if (layoutCoordinates != null) {
            if (!layoutCoordinates.isAttached()) {
                layoutCoordinates = null;
            }
            if (layoutCoordinates == null) {
                return;
            }
            layoutCoordinates.mo7718transformToScreen58bKbWc(fArr);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void notifyFocusedRect(Rect rect) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.notifyFocusedRect(rect);
        }
    }

    @Override // androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter
    public void startStylusHandwriting() {
        vg5<j59> stylusHandwritingTrigger = getStylusHandwritingTrigger();
        if (stylusHandwritingTrigger != null) {
            stylusHandwritingTrigger.e(j59.a);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void stopInput() {
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.job = null;
        vg5<j59> stylusHandwritingTrigger = getStylusHandwritingTrigger();
        if (stylusHandwritingTrigger != null) {
            stylusHandwritingTrigger.b();
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.updateState(textFieldValue, textFieldValue2);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, nl3<? super Matrix, j59> nl3Var, Rect rect, Rect rect2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.currentRequest;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.updateTextLayoutResult(textFieldValue, offsetMapping, textLayoutResult, rect, rect2);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput() {
        startInput(null);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput(final TextFieldValue textFieldValue, final ImeOptions imeOptions, final nl3<? super List<? extends EditCommand>, j59> nl3Var, final nl3<? super ImeAction, j59> nl3Var2) {
        startInput(new nl3() { // from class: si
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AndroidLegacyPlatformTextInputServiceAdapter.startInput$lambda$0(textFieldValue, this, imeOptions, nl3Var, nl3Var2, (LegacyTextInputMethodRequest) obj);
            }
        });
    }
}
