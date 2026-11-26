package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.camera.video.VideoSpec;
import androidx.compose.foundation.content.internal.ReceiveContentConfiguration;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.ui.platform.PlatformTextInputMethodRequest;
import androidx.compose.ui.platform.PlatformTextInputSession;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.tracing.Trace;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTextInputSession_androidKt {
    private static final String[] ALL_MIME_TYPES = {"*/*", "image/*", VideoSpec.MIME_TYPE_UNSPECIFIED};
    public static final boolean TIA_DEBUG = false;
    private static final String TIA_TAG = "AndroidTextInputSession";

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt", f = "AndroidTextInputSession.android.kt", l = {60}, m = "platformSpecificTextInputSession", v = 1)
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
            return AndroidTextInputSession_androidKt.platformSpecificTextInputSession(null, null, null, null, null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt", f = "AndroidTextInputSession.android.kt", l = {87}, m = "platformSpecificTextInputSession", v = 1)
    public static final class AnonymousClass2 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidTextInputSession_androidKt.platformSpecificTextInputSession(null, null, null, null, null, null, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3", f = "AndroidTextInputSession.android.kt", l = {Trace.MAX_TRACE_LABEL_LENGTH}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<?>, Object> {
        final /* synthetic */ ComposeInputMethodManager $composeImm;
        final /* synthetic */ ImeOptions $imeOptions;
        final /* synthetic */ TextLayoutState $layoutState;
        final /* synthetic */ nl3<ImeAction, j59> $onImeAction;
        final /* synthetic */ ReceiveContentConfiguration $receiveContentConfiguration;
        final /* synthetic */ TransformedTextFieldState $state;
        final /* synthetic */ vg5<j59> $stylusHandwritingTrigger;
        final /* synthetic */ PlatformTextInputSession $this_platformSpecificTextInputSession;
        final /* synthetic */ ll3<j59> $updateSelectionState;
        final /* synthetic */ nl3<Boolean, j59> $updateTouchMode;
        final /* synthetic */ ViewConfiguration $viewConfiguration;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$1", f = "AndroidTextInputSession.android.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ ComposeInputMethodManager $composeImm;
            final /* synthetic */ TransformedTextFieldState $state;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(TransformedTextFieldState transformedTextFieldState, ComposeInputMethodManager composeInputMethodManager, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$state = transformedTextFieldState;
                this.$composeImm = composeInputMethodManager;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void invokeSuspend$lambda$0(ComposeInputMethodManager composeInputMethodManager, TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
                long jM2665getSelectiond9O1mEE = textFieldCharSequence.m2665getSelectiond9O1mEE();
                TextRange textRangeM2664getCompositionMzsxiRA = textFieldCharSequence.m2664getCompositionMzsxiRA();
                long jM2665getSelectiond9O1mEE2 = textFieldCharSequence2.m2665getSelectiond9O1mEE();
                TextRange textRangeM2664getCompositionMzsxiRA2 = textFieldCharSequence2.m2664getCompositionMzsxiRA();
                if (z) {
                    composeInputMethodManager.restartInput();
                } else {
                    if (TextRange.m8484equalsimpl0(jM2665getSelectiond9O1mEE, jM2665getSelectiond9O1mEE2) && aa4.e(textRangeM2664getCompositionMzsxiRA, textRangeM2664getCompositionMzsxiRA2)) {
                        return;
                    }
                    composeInputMethodManager.updateSelection(TextRange.m8489getMinimpl(jM2665getSelectiond9O1mEE2), TextRange.m8488getMaximpl(jM2665getSelectiond9O1mEE2), textRangeM2664getCompositionMzsxiRA2 != null ? TextRange.m8489getMinimpl(textRangeM2664getCompositionMzsxiRA2.m8495unboximpl()) : -1, textRangeM2664getCompositionMzsxiRA2 != null ? TextRange.m8488getMaximpl(textRangeM2664getCompositionMzsxiRA2.m8495unboximpl()) : -1);
                }
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$state, this.$composeImm, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    TransformedTextFieldState transformedTextFieldState = this.$state;
                    final ComposeInputMethodManager composeInputMethodManager = this.$composeImm;
                    TextFieldState.NotifyImeListener notifyImeListener = new TextFieldState.NotifyImeListener() { // from class: androidx.compose.foundation.text.input.internal.c
                        @Override // androidx.compose.foundation.text.input.TextFieldState.NotifyImeListener
                        public final void onChange(TextFieldCharSequence textFieldCharSequence, TextFieldCharSequence textFieldCharSequence2, boolean z) {
                            AndroidTextInputSession_androidKt.AnonymousClass3.AnonymousClass1.invokeSuspend$lambda$0(composeInputMethodManager, textFieldCharSequence, textFieldCharSequence2, z);
                        }
                    };
                    this.label = 1;
                    if (transformedTextFieldState.collectImeNotifications(notifyImeListener, this) == a32Var) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(vg5<j59> vg5Var, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ComposeInputMethodManager composeInputMethodManager, PlatformTextInputSession platformTextInputSession, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, nl3<? super ImeAction, j59> nl3Var, ll3<j59> ll3Var, ViewConfiguration viewConfiguration, nl3<? super Boolean, j59> nl3Var2, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$stylusHandwritingTrigger = vg5Var;
            this.$state = transformedTextFieldState;
            this.$layoutState = textLayoutState;
            this.$composeImm = composeInputMethodManager;
            this.$this_platformSpecificTextInputSession = platformTextInputSession;
            this.$imeOptions = imeOptions;
            this.$receiveContentConfiguration = receiveContentConfiguration;
            this.$onImeAction = nl3Var;
            this.$updateSelectionState = ll3Var;
            this.$viewConfiguration = viewConfiguration;
            this.$updateTouchMode = nl3Var2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final InputConnection invokeSuspend$lambda$1(TransformedTextFieldState transformedTextFieldState, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, ComposeInputMethodManager composeInputMethodManager, nl3 nl3Var, CursorAnchorInfoController cursorAnchorInfoController, TextLayoutState textLayoutState, ll3 ll3Var, ViewConfiguration viewConfiguration, nl3 nl3Var2, EditorInfo editorInfo) {
            AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$textInputSession$1 androidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$textInputSession$1 = new AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$textInputSession$1(new DefaultImeEditCommandScope(transformedTextFieldState), transformedTextFieldState, composeInputMethodManager, nl3Var, receiveContentConfiguration, cursorAnchorInfoController, textLayoutState, ll3Var, viewConfiguration, nl3Var2);
            EditorInfo_androidKt.m2704updatepLxbY9I(editorInfo, transformedTextFieldState.getVisualText(), transformedTextFieldState.getVisualText().m2665getSelectiond9O1mEE(), imeOptions, receiveContentConfiguration != null ? AndroidTextInputSession_androidKt.ALL_MIME_TYPES : null);
            return new StatelessInputConnection(androidTextInputSession_androidKt$platformSpecificTextInputSession$3$3$textInputSession$1, editorInfo);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$stylusHandwritingTrigger, this.$state, this.$layoutState, this.$composeImm, this.$this_platformSpecificTextInputSession, this.$imeOptions, this.$receiveContentConfiguration, this.$onImeAction, this.$updateSelectionState, this.$viewConfiguration, this.$updateTouchMode, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<?> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                av0.c(y22Var, null, c32.UNDISPATCHED, new AnonymousClass1(this.$state, this.$composeImm, null), 1);
                vg5<j59> vg5Var = this.$stylusHandwritingTrigger;
                if (vg5Var != null) {
                    av0.c(y22Var, null, null, new AndroidTextInputSession_androidKt$platformSpecificTextInputSession$3$2$1(vg5Var, this.$composeImm, null), 3);
                }
                final CursorAnchorInfoController cursorAnchorInfoController = new CursorAnchorInfoController(this.$state, this.$layoutState, this.$composeImm, y22Var);
                PlatformTextInputSession platformTextInputSession = this.$this_platformSpecificTextInputSession;
                final TransformedTextFieldState transformedTextFieldState = this.$state;
                final ImeOptions imeOptions = this.$imeOptions;
                final ReceiveContentConfiguration receiveContentConfiguration = this.$receiveContentConfiguration;
                final ComposeInputMethodManager composeInputMethodManager = this.$composeImm;
                final nl3<ImeAction, j59> nl3Var = this.$onImeAction;
                final TextLayoutState textLayoutState = this.$layoutState;
                final ll3<j59> ll3Var = this.$updateSelectionState;
                final ViewConfiguration viewConfiguration = this.$viewConfiguration;
                final nl3<Boolean, j59> nl3Var2 = this.$updateTouchMode;
                PlatformTextInputMethodRequest platformTextInputMethodRequest = new PlatformTextInputMethodRequest() { // from class: androidx.compose.foundation.text.input.internal.b
                    @Override // androidx.compose.ui.platform.PlatformTextInputMethodRequest
                    public final InputConnection createInputConnection(EditorInfo editorInfo) {
                        return AndroidTextInputSession_androidKt.AnonymousClass3.invokeSuspend$lambda$1(transformedTextFieldState, imeOptions, receiveContentConfiguration, composeInputMethodManager, nl3Var, cursorAnchorInfoController, textLayoutState, ll3Var, viewConfiguration, nl3Var2, editorInfo);
                    }
                };
                this.label = 1;
                if (platformTextInputSession.startInputMethod(platformTextInputMethodRequest, this) == a32Var) {
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

    public static /* synthetic */ void getTIA_DEBUG$annotations() {
    }

    private static final void logDebug(String str, ll3<String> ll3Var) {
    }

    public static /* synthetic */ void logDebug$default(String str, ll3 ll3Var, int i, Object obj) {
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public static final Object platformSpecificTextInputSession(PlatformTextInputSession platformTextInputSession, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, nl3<? super ImeAction, j59> nl3Var, ll3<j59> ll3Var, vg5<j59> vg5Var, ViewConfiguration viewConfiguration, nl3<? super Boolean, j59> nl3Var2, e02<?> e02Var) {
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            r57.b(obj);
            ComposeInputMethodManager ComposeInputMethodManager = ComposeInputMethodManager_androidKt.ComposeInputMethodManager(platformTextInputSession.getView());
            anonymousClass2.label = 1;
            if (platformSpecificTextInputSession(platformTextInputSession, transformedTextFieldState, textLayoutState, imeOptions, receiveContentConfiguration, nl3Var, ll3Var, ComposeInputMethodManager, vg5Var, viewConfiguration, nl3Var2, anonymousClass2) == a32Var) {
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

    public static /* synthetic */ Object platformSpecificTextInputSession$default(PlatformTextInputSession platformTextInputSession, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, nl3 nl3Var, ll3 ll3Var, vg5 vg5Var, ViewConfiguration viewConfiguration, nl3 nl3Var2, e02 e02Var, int i, Object obj) {
        if ((i & 32) != 0) {
            ll3Var = null;
        }
        if ((i & 64) != 0) {
            vg5Var = null;
        }
        if ((i & 128) != 0) {
            viewConfiguration = null;
        }
        return platformSpecificTextInputSession(platformTextInputSession, transformedTextFieldState, textLayoutState, imeOptions, receiveContentConfiguration, nl3Var, ll3Var, vg5Var, viewConfiguration, nl3Var2, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object platformSpecificTextInputSession(PlatformTextInputSession platformTextInputSession, TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ImeOptions imeOptions, ReceiveContentConfiguration receiveContentConfiguration, nl3<? super ImeAction, j59> nl3Var, ll3<j59> ll3Var, ComposeInputMethodManager composeInputMethodManager, vg5<j59> vg5Var, ViewConfiguration viewConfiguration, nl3<? super Boolean, j59> nl3Var2, e02<?> e02Var) {
        AnonymousClass2 anonymousClass2;
        if (e02Var instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) e02Var;
            int i = anonymousClass2.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(e02Var);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(e02Var);
        }
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            r57.b(obj);
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(vg5Var, transformedTextFieldState, textLayoutState, composeInputMethodManager, platformTextInputSession, imeOptions, receiveContentConfiguration, nl3Var, ll3Var, viewConfiguration, nl3Var2, null);
            anonymousClass2.label = 1;
            if (z22.c(anonymousClass3, anonymousClass2) == a32Var) {
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
}
