package androidx.compose.foundation.text.selection;

import android.app.RemoteAction;
import android.content.Context;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope_androidKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;
import defpackage.yv8;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl implements PlatformSelectionBehaviors {
    public static final int $stable = 8;
    private final Context context;
    private final o22 coroutineContext;
    private final LocaleList localeList;
    private final SelectedTextType selectedTextType;
    private TextClassifier textClassificationSession;
    private final yg5 mutex = new ch5();
    private final MutableState textClassificationResult$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    private final Object AssistantItemKey = new Object();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2", f = "PlatformSelectionBehaviors.android.kt", l = {369, 273, 282}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<TextClassifier, e02<? super T>, Object> $block;
        Object L$0;
        Object L$1;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1", f = "PlatformSelectionBehaviors.android.kt", l = {283}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super T>, Object> {
            final /* synthetic */ bm3<TextClassifier, e02<? super T>, Object> $block;
            final /* synthetic */ TextClassifier $textClassificationSession;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(TextClassifier textClassifier, bm3<? super TextClassifier, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$textClassificationSession = textClassifier;
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass1(this.$textClassificationSession, this.$block, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
                return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        r57.b(obj);
                        return obj;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                TextClassifier textClassifier = this.$textClassificationSession;
                if (textClassifier == null) {
                    return null;
                }
                bm3<TextClassifier, e02<? super T>, Object> bm3Var = this.$block;
                this.label = 1;
                Object objInvoke = bm3Var.invoke(textClassifier, this);
                return objInvoke == a32Var ? a32Var : objInvoke;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(bm3<? super TextClassifier, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return PlatformSelectionBehaviorsImpl.this.new AnonymousClass2(this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x008e A[RETURN] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            yg5 yg5Var;
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
            yg5 yg5Var2;
            TextClassifier textClassifier;
            Object objC;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    yg5Var = PlatformSelectionBehaviorsImpl.this.mutex;
                    platformSelectionBehaviorsImpl = PlatformSelectionBehaviorsImpl.this;
                    this.L$0 = yg5Var;
                    this.L$1 = platformSelectionBehaviorsImpl;
                    this.label = 1;
                    if (yg5Var.lock(null, this) != a32Var) {
                    }
                    return a32Var;
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            r57.b(obj);
                            return obj;
                        }
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var2 = (yg5) this.L$0;
                    try {
                        r57.b(obj);
                        textClassifier = (TextClassifier) obj;
                        yg5Var = yg5Var2;
                        yg5Var.unlock(null);
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(textClassifier, this.$block, null);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        objC = yv8.c(200L, anonymousClass1, this);
                        if (objC == a32Var) {
                            return a32Var;
                        }
                        return objC;
                    } catch (Throwable th) {
                        th = th;
                        yg5Var2.unlock(null);
                        throw th;
                    }
                }
                platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.L$1;
                yg5 yg5Var3 = (yg5) this.L$0;
                r57.b(obj);
                yg5Var = yg5Var3;
                textClassifier = platformSelectionBehaviorsImpl.textClassificationSession;
                if (textClassifier == null || textClassifier.isDestroyed()) {
                    PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1(platformSelectionBehaviorsImpl, null);
                    this.L$0 = yg5Var;
                    this.L$1 = null;
                    this.label = 2;
                    Object objC2 = yv8.c(300L, platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1, this);
                    if (objC2 != a32Var) {
                        yg5Var2 = yg5Var;
                        obj = objC2;
                        textClassifier = (TextClassifier) obj;
                        yg5Var = yg5Var2;
                        yg5Var.unlock(null);
                        AnonymousClass1 anonymousClass2 = new AnonymousClass1(textClassifier, this.$block, null);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        objC = yv8.c(200L, anonymousClass2, this);
                        if (objC == a32Var) {
                            return objC;
                        }
                    }
                } else {
                    yg5Var.unlock(null);
                    AnonymousClass1 anonymousClass3 = new AnonymousClass1(textClassifier, this.$block, null);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 3;
                    objC = yv8.c(200L, anonymousClass3, this);
                    if (objC == a32Var) {
                        return objC;
                    }
                }
                return a32Var;
            } catch (Throwable th2) {
                th = th2;
                yg5Var2 = yg5Var;
                yg5Var2.unlock(null);
                throw th;
            }
        }
    }

    public PlatformSelectionBehaviorsImpl(o22 o22Var, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        this.coroutineContext = o22Var;
        this.context = context;
        this.selectedTextType = selectedTextType;
        this.localeList = localeList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX INFO: renamed from: classifyText-M8tDOmk, reason: not valid java name */
    public final Object m2976classifyTextM8tDOmk(CharSequence charSequence, long j, TextClassifier textClassifier, e02<? super j59> e02Var) {
        PlatformSelectionBehaviorsImpl$classifyText$1 platformSelectionBehaviorsImpl$classifyText$1;
        yg5 yg5Var;
        TextClassifier textClassifier2;
        long j2;
        CharSequence charSequence2;
        TextClassification textClassificationClassifyText;
        yg5 yg5Var2;
        long j3;
        CharSequence charSequence3;
        if (e02Var instanceof PlatformSelectionBehaviorsImpl$classifyText$1) {
            platformSelectionBehaviorsImpl$classifyText$1 = (PlatformSelectionBehaviorsImpl$classifyText$1) e02Var;
            int i = platformSelectionBehaviorsImpl$classifyText$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                platformSelectionBehaviorsImpl$classifyText$1.label = i - Integer.MIN_VALUE;
            } else {
                platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(this, e02Var);
            }
        } else {
            platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(this, e02Var);
        }
        Object obj = platformSelectionBehaviorsImpl$classifyText$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = platformSelectionBehaviorsImpl$classifyText$1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                yg5Var = this.mutex;
                platformSelectionBehaviorsImpl$classifyText$1.L$0 = charSequence;
                platformSelectionBehaviorsImpl$classifyText$1.L$1 = textClassifier;
                platformSelectionBehaviorsImpl$classifyText$1.L$2 = yg5Var;
                platformSelectionBehaviorsImpl$classifyText$1.J$0 = j;
                platformSelectionBehaviorsImpl$classifyText$1.label = 1;
                if (yg5Var.lock(null, platformSelectionBehaviorsImpl$classifyText$1) != a32Var) {
                    textClassifier2 = textClassifier;
                    j2 = j;
                    charSequence2 = charSequence;
                }
                return a32Var;
            }
            if (i2 == 1) {
                j2 = platformSelectionBehaviorsImpl$classifyText$1.J$0;
                yg5Var = (yg5) platformSelectionBehaviorsImpl$classifyText$1.L$2;
                textClassifier2 = (TextClassifier) platformSelectionBehaviorsImpl$classifyText$1.L$1;
                charSequence2 = (CharSequence) platformSelectionBehaviorsImpl$classifyText$1.L$0;
                r57.b(obj);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                long j4 = platformSelectionBehaviorsImpl$classifyText$1.J$0;
                yg5Var2 = (yg5) platformSelectionBehaviorsImpl$classifyText$1.L$2;
                textClassificationClassifyText = (TextClassification) platformSelectionBehaviorsImpl$classifyText$1.L$1;
                CharSequence charSequence4 = (CharSequence) platformSelectionBehaviorsImpl$classifyText$1.L$0;
                r57.b(obj);
                charSequence3 = charSequence4;
                j3 = j4;
            }
            try {
                setTextClassificationResult(new TextClassificationResult(charSequence3, j3, textClassificationClassifyText, null));
                j59 j59Var = j59.a;
                return j59.a;
            } finally {
                yg5Var2.unlock(null);
            }
            TextClassificationResult textClassificationResult = getTextClassificationResult();
            if (textClassificationResult != null && PlatformSelectionBehaviors_androidKt.m2982canReuseh5sm0ck(textClassificationResult, charSequence2, j2)) {
                j59 j59Var2 = j59.a;
                yg5Var.unlock(null);
                return j59Var2;
            }
            j59 j59Var3 = j59.a;
            yg5Var.unlock(null);
            textClassificationClassifyText = textClassifier2.classifyText(new TextClassification.Request.Builder(charSequence2, TextRange.m8489getMinimpl(j2), TextRange.m8488getMaximpl(j2)).setDefaultLocales(getAndroidLocalList()).build());
            yg5 yg5Var3 = this.mutex;
            platformSelectionBehaviorsImpl$classifyText$1.L$0 = charSequence2;
            platformSelectionBehaviorsImpl$classifyText$1.L$1 = textClassificationClassifyText;
            platformSelectionBehaviorsImpl$classifyText$1.L$2 = yg5Var3;
            platformSelectionBehaviorsImpl$classifyText$1.J$0 = j2;
            platformSelectionBehaviorsImpl$classifyText$1.label = 2;
            if (yg5Var3.lock(null, platformSelectionBehaviorsImpl$classifyText$1) != a32Var) {
                yg5Var2 = yg5Var3;
                j3 = j2;
                charSequence3 = charSequence2;
                setTextClassificationResult(new TextClassificationResult(charSequence3, j3, textClassificationClassifyText, null));
                j59 j59Var4 = j59.a;
                return j59.a;
            }
            return a32Var;
        } catch (Throwable th) {
            yg5Var.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.os.LocaleList getAndroidLocalList() {
        android.os.LocaleList androidLocaleList;
        LocaleList localeList = this.localeList;
        return (localeList == null || (androidLocaleList = TextClassifierHelperMethods.INSTANCE.toAndroidLocaleList(localeList)) == null) ? new android.os.LocaleList(Locale.Companion.getCurrent().getPlatformLocale()) : androidLocaleList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TextClassificationResult getTextClassificationResult() {
        return (TextClassificationResult) this.textClassificationResult$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onShowContextMenuOrSelectionToolbar-Sb-Bc2M, reason: not valid java name */
    public final Object m2977onShowContextMenuOrSelectionToolbarSbBc2M(CharSequence charSequence, long j, e02<? super j59> e02Var) {
        return (charSequence.length() == 0 || TextRange.m8485getCollapsedimpl(j)) ? j59.a : requireTextClassificationSession(new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(this, charSequence, j, null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Object requireTextClassificationSession(bm3<? super TextClassifier, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        return av0.d(this.coroutineContext, new AnonymousClass2(bm3Var, null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTextClassificationResult(TextClassificationResult textClassificationResult) {
        this.textClassificationResult$delegate.setValue(textClassificationResult);
    }

    /* JADX INFO: renamed from: addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation, reason: not valid java name */
    public final void m2978addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(TextContextMenuBuilderScope textContextMenuBuilderScope, CharSequence charSequence, long j, nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        TextClassification textClassificationM2979tryGetTextClassificationFDrldGo = m2979tryGetTextClassificationFDrldGo(charSequence, j);
        if (textClassificationM2979tryGetTextClassificationFDrldGo == null) {
            nl3Var.invoke(textContextMenuBuilderScope);
            return;
        }
        if (!textClassificationM2979tryGetTextClassificationFDrldGo.getActions().isEmpty()) {
            TextContextMenuBuilderScope_androidKt.textClassificationItem(textContextMenuBuilderScope, this.AssistantItemKey, textClassificationM2979tryGetTextClassificationFDrldGo, 0);
        } else if (TextClassifierHelperMethods.INSTANCE.hasLegacyAssistItem$foundation(textClassificationM2979tryGetTextClassificationFDrldGo)) {
            TextContextMenuBuilderScope_androidKt.textClassificationItem(textContextMenuBuilderScope, this.AssistantItemKey, textClassificationM2979tryGetTextClassificationFDrldGo, -1);
        }
        nl3Var.invoke(textContextMenuBuilderScope);
        List<RemoteAction> actions = textClassificationM2979tryGetTextClassificationFDrldGo.getActions();
        int size = actions.size();
        for (int i = 0; i < size; i++) {
            actions.get(i);
            if (i > 0) {
                TextContextMenuBuilderScope_androidKt.textClassificationItem(textContextMenuBuilderScope, this.AssistantItemKey, textClassificationM2979tryGetTextClassificationFDrldGo, i);
            }
        }
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: onShowContextMenu-_2OEclM */
    public Object mo2971onShowContextMenu_2OEclM(CharSequence charSequence, long j, Offset offset, e02<? super j59> e02Var) {
        Object objM2977onShowContextMenuOrSelectionToolbarSbBc2M = m2977onShowContextMenuOrSelectionToolbarSbBc2M(charSequence, j, e02Var);
        return objM2977onShowContextMenuOrSelectionToolbarSbBc2M == a32.COROUTINE_SUSPENDED ? objM2977onShowContextMenuOrSelectionToolbarSbBc2M : j59.a;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: onShowSelectionToolbar-Sb-Bc2M */
    public Object mo2972onShowSelectionToolbarSbBc2M(CharSequence charSequence, long j, e02<? super j59> e02Var) {
        Object objM2977onShowContextMenuOrSelectionToolbarSbBc2M = m2977onShowContextMenuOrSelectionToolbarSbBc2M(charSequence, j, e02Var);
        return objM2977onShowContextMenuOrSelectionToolbarSbBc2M == a32.COROUTINE_SUSPENDED ? objM2977onShowContextMenuOrSelectionToolbarSbBc2M : j59.a;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    /* JADX INFO: renamed from: suggestSelectionForLongPressOrDoubleClick-pYaCw-w */
    public Object mo2973suggestSelectionForLongPressOrDoubleClickpYaCww(CharSequence charSequence, long j, e02<? super TextRange> e02Var) {
        if (charSequence.length() == 0 || TextRange.m8485getCollapsedimpl(j)) {
            return null;
        }
        return requireTextClassificationSession(new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(charSequence, j, this, null), e02Var);
    }

    /* JADX INFO: renamed from: tryGetTextClassification-FDrldGo, reason: not valid java name */
    public final TextClassification m2979tryGetTextClassificationFDrldGo(CharSequence charSequence, long j) {
        if (!this.mutex.tryLock(null)) {
            return null;
        }
        TextClassificationResult textClassificationResult = getTextClassificationResult();
        TextClassification textClassification = (textClassificationResult == null || !PlatformSelectionBehaviors_androidKt.m2982canReuseh5sm0ck(textClassificationResult, charSequence, j)) ? null : textClassificationResult.getTextClassification();
        this.mutex.unlock(null);
        return textClassification;
    }
}
