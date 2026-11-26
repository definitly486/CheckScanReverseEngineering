package androidx.compose.ui.platform;

import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.text.input.TextInputService;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c31;
import defpackage.e02;
import defpackage.f02;
import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import defpackage.zya;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidPlatformTextInputSession implements PlatformTextInputSessionScope, y22 {
    public static final int $stable = 8;
    private final y22 coroutineScope;
    private final AtomicReference<SessionMutex.Session<InputMethodSession>> methodSessionMutex = SessionMutex.m5669constructorimpl();
    private final TextInputService textInputService;
    private final View view;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.AndroidPlatformTextInputSession", f = "AndroidPlatformTextInputSession.android.kt", l = {TsExtractor.TS_SYNC_BYTE}, m = "startInputMethod", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidPlatformTextInputSession.this.startInputMethod(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$3, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$3", f = "AndroidPlatformTextInputSession.android.kt", l = {184}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<InputMethodSession, e02<?>, Object> {
        /* synthetic */ Object L$0;
        Object L$1;
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = AndroidPlatformTextInputSession.this.new AnonymousClass3(e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(InputMethodSession inputMethodSession, e02<?> e02Var) {
            return ((AnonymousClass3) create(inputMethodSession, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                InputMethodSession inputMethodSession = (InputMethodSession) this.L$0;
                AndroidPlatformTextInputSession androidPlatformTextInputSession = AndroidPlatformTextInputSession.this;
                this.L$0 = inputMethodSession;
                this.L$1 = androidPlatformTextInputSession;
                this.label = 1;
                c31 c31Var = new c31(1, zya.b(this));
                c31Var.u();
                androidPlatformTextInputSession.textInputService.startInput();
                c31Var.n(new AndroidPlatformTextInputSession$startInputMethod$3$1$1(inputMethodSession, androidPlatformTextInputSession));
                if (c31Var.s() == a32Var) {
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

    public AndroidPlatformTextInputSession(View view, TextInputService textInputService, y22 y22Var) {
        this.view = view;
        this.textInputService = textInputService;
        this.coroutineScope = y22Var;
    }

    public final InputConnection createInputConnection(EditorInfo editorInfo) {
        InputMethodSession inputMethodSession = (InputMethodSession) SessionMutex.m5673getCurrentSessionimpl(this.methodSessionMutex);
        if (inputMethodSession != null) {
            return inputMethodSession.createInputConnection(editorInfo);
        }
        return null;
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputSessionScope, defpackage.y22
    public o22 getCoroutineContext() {
        return this.coroutineScope.getCoroutineContext();
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    public View getView() {
        return this.view;
    }

    public final boolean isReadyForConnection() {
        InputMethodSession inputMethodSession = (InputMethodSession) SessionMutex.m5673getCurrentSessionimpl(this.methodSessionMutex);
        return inputMethodSession != null && inputMethodSession.isActive();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    public Object startInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, e02<?> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            AtomicReference<SessionMutex.Session<InputMethodSession>> atomicReference = this.methodSessionMutex;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(platformTextInputMethodRequest, this);
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(null);
            anonymousClass1.label = 1;
            if (SessionMutex.m5676withSessionCancellingPreviousimpl(atomicReference, anonymousClass2, anonymousClass3, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<y22, InputMethodSession> {
        final /* synthetic */ PlatformTextInputMethodRequest $request;
        final /* synthetic */ AndroidPlatformTextInputSession this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PlatformTextInputMethodRequest platformTextInputMethodRequest, AndroidPlatformTextInputSession androidPlatformTextInputSession) {
            super(1);
            this.$request = platformTextInputMethodRequest;
            this.this$0 = androidPlatformTextInputSession;
        }

        @Override // defpackage.nl3
        public final InputMethodSession invoke(y22 y22Var) {
            return new InputMethodSession(this.$request, new AnonymousClass1(this.this$0));
        }

        /* JADX INFO: renamed from: androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$2$1, reason: invalid class name */
        public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
            final /* synthetic */ AndroidPlatformTextInputSession this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(AndroidPlatformTextInputSession androidPlatformTextInputSession) {
                super(0);
                this.this$0 = androidPlatformTextInputSession;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                z22.b(this.this$0.coroutineScope, null);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        }
    }
}
