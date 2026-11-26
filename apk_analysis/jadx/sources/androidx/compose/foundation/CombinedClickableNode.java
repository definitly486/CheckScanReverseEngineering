package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetector_androidKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yk2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class CombinedClickableNode extends AbstractClickableNode implements CompositionLocalConsumerModifierNode {
    private final MutableLongObjectMap<DoubleKeyClickState> doubleKeyClickStates;
    private PointerInputChange downEvent;
    private long firstTapUpTime;
    private boolean hapticFeedbackEnabled;
    private boolean ignoreNextUp;
    private IndirectPointerInputChange indirectDownEvent;
    private long indirectFirstTapUpTime;
    private boolean indirectIgnoreNextUp;
    private boolean indirectIsSecondTap;
    private mb4 indirectLongPressJob;
    private boolean indirectLongPressTriggered;
    private mb4 indirectTapJob;
    private boolean isSecondTap;
    private final boolean isSuspendingPointerInputEnabled;
    private final MutableLongObjectMap<mb4> longKeyPressJobs;
    private mb4 longPressJob;
    private boolean longPressTriggered;
    private ll3<j59> onDoubleClick;
    private ll3<j59> onLongClick;
    private String onLongClickLabel;
    private mb4 tapJob;

    public static final class DoubleKeyClickState {
        public static final int $stable = 8;
        private boolean doubleTapMinTimeMillisElapsed;
        private final mb4 job;

        public DoubleKeyClickState(mb4 mb4Var) {
            this.job = mb4Var;
        }

        public final boolean getDoubleTapMinTimeMillisElapsed() {
            return this.doubleTapMinTimeMillisElapsed;
        }

        public final mb4 getJob() {
            return this.job;
        }

        public final void setDoubleTapMinTimeMillisElapsed(boolean z) {
            this.doubleTapMinTimeMillisElapsed = z;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$createPointerInputNodeIfNeeded$1, reason: invalid class name */
    public static final class AnonymousClass1 implements PointerInputEventHandler {

        /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$createPointerInputNodeIfNeeded$1$3, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.CombinedClickableNode$createPointerInputNodeIfNeeded$1$3", f = "Clickable.kt", l = {1132}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass3 extends pg8 implements dm3<PressGestureScope, Offset, e02<? super j59>, Object> {
            /* synthetic */ long J$0;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ CombinedClickableNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(CombinedClickableNode combinedClickableNode, e02<? super AnonymousClass3> e02Var) {
                super(3, e02Var);
                this.this$0 = combinedClickableNode;
            }

            @Override // defpackage.dm3
            public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, e02<? super j59> e02Var) {
                return m1342invoked4ec7I(pressGestureScope, offset.m5997unboximpl(), e02Var);
            }

            /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
            public final Object m1342invoked4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, e02Var);
                anonymousClass3.L$0 = pressGestureScope;
                anonymousClass3.J$0 = j;
                return anonymousClass3.invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                    long j = this.J$0;
                    if (this.this$0.getEnabled()) {
                        CombinedClickableNode combinedClickableNode = this.this$0;
                        this.label = 1;
                        if (combinedClickableNode.m1253handlePressInteractiond4ec7I(pressGestureScope, j, this) == a32Var) {
                            return a32Var;
                        }
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

        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$0(CombinedClickableNode combinedClickableNode, Offset offset) {
            ll3 ll3Var = combinedClickableNode.onDoubleClick;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1(CombinedClickableNode combinedClickableNode, Offset offset) {
            ll3 ll3Var = combinedClickableNode.onLongClick;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            if (combinedClickableNode.getHapticFeedbackEnabled()) {
                ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.getLocalHapticFeedback())).mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$2(CombinedClickableNode combinedClickableNode, Offset offset) {
            if (combinedClickableNode.getEnabled()) {
                combinedClickableNode.getOnClick().invoke();
            }
            return j59.a;
        }

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
            nl3 nl3Var;
            nl3 nl3Var2;
            if (!CombinedClickableNode.this.getEnabled() || CombinedClickableNode.this.onDoubleClick == null) {
                nl3Var = null;
            } else {
                final CombinedClickableNode combinedClickableNode = CombinedClickableNode.this;
                nl3Var = new nl3() { // from class: androidx.compose.foundation.e
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CombinedClickableNode.AnonymousClass1.invoke$lambda$0(combinedClickableNode, (Offset) obj);
                    }
                };
            }
            if (!CombinedClickableNode.this.getEnabled() || CombinedClickableNode.this.onLongClick == null) {
                nl3Var2 = null;
            } else {
                final CombinedClickableNode combinedClickableNode2 = CombinedClickableNode.this;
                nl3Var2 = new nl3() { // from class: androidx.compose.foundation.f
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return CombinedClickableNode.AnonymousClass1.invoke$lambda$1(combinedClickableNode2, (Offset) obj);
                    }
                };
            }
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(CombinedClickableNode.this, null);
            final CombinedClickableNode combinedClickableNode3 = CombinedClickableNode.this;
            Object objDetectTapGestures = TapGestureDetectorKt.detectTapGestures(pointerInputScope, nl3Var, nl3Var2, anonymousClass3, new nl3() { // from class: androidx.compose.foundation.g
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return CombinedClickableNode.AnonymousClass1.invoke$lambda$2(combinedClickableNode3, (Offset) obj);
                }
            }, e02Var);
            return objDetectTapGestures == a32.COROUTINE_SUSPENDED ? objDetectTapGestures : j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$handleDownEvent$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.CombinedClickableNode$handleDownEvent$1", f = "Clickable.kt", l = {1273}, m = "invokeSuspend", v = 1)
    public static final class C04701 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C04701(e02<? super C04701> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CombinedClickableNode.this.new C04701(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04701) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long longPressTimeoutMillis = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalViewConfiguration())).getLongPressTimeoutMillis();
                this.label = 1;
                if (yk2.b(longPressTimeoutMillis, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ll3 ll3Var = CombinedClickableNode.this.onLongClick;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            if (CombinedClickableNode.this.getHapticFeedbackEnabled()) {
                ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalHapticFeedback())).mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
            }
            CombinedClickableNode.this.longPressTriggered = true;
            mb4 mb4Var = CombinedClickableNode.this.tapJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            CombinedClickableNode.this.tapJob = null;
            CombinedClickableNode.this.longPressJob = null;
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$handleDownEvent$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.CombinedClickableNode$handleDownEvent$2", f = "Clickable.kt", l = {1318}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CombinedClickableNode.this.new AnonymousClass2(e02Var);
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
                long longPressTimeoutMillis = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalViewConfiguration())).getLongPressTimeoutMillis();
                this.label = 1;
                if (yk2.b(longPressTimeoutMillis, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ll3 ll3Var = CombinedClickableNode.this.onLongClick;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            if (CombinedClickableNode.this.getHapticFeedbackEnabled()) {
                ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalHapticFeedback())).mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
            }
            CombinedClickableNode.this.indirectLongPressTriggered = true;
            mb4 mb4Var = CombinedClickableNode.this.indirectTapJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            CombinedClickableNode.this.indirectTapJob = null;
            CombinedClickableNode.this.indirectLongPressJob = null;
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$handleUpEvent$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.CombinedClickableNode$handleUpEvent$1", f = "Clickable.kt", l = {1344}, m = "invokeSuspend", v = 1)
    public static final class C04711 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C04711(e02<? super C04711> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CombinedClickableNode.this.new C04711(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04711) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long doubleTapTimeoutMillis = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalViewConfiguration())).getDoubleTapTimeoutMillis();
                this.label = 1;
                if (yk2.b(doubleTapTimeoutMillis, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            CombinedClickableNode.this.getOnClick().invoke();
            CombinedClickableNode.this.tapJob = null;
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.CombinedClickableNode$handleUpEvent$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.CombinedClickableNode$handleUpEvent$2", f = "Clickable.kt", l = {1373}, m = "invokeSuspend", v = 1)
    public static final class C04722 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C04722(e02<? super C04722> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CombinedClickableNode.this.new C04722(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04722) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long doubleTapTimeoutMillis = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(CombinedClickableNode.this, CompositionLocalsKt.getLocalViewConfiguration())).getDoubleTapTimeoutMillis();
                this.label = 1;
                if (yk2.b(doubleTapTimeoutMillis, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            CombinedClickableNode.this.getOnClick().invoke();
            CombinedClickableNode.this.indirectTapJob = null;
            return j59.a;
        }
    }

    private CombinedClickableNode(ll3<j59> ll3Var, String str, ll3<j59> ll3Var2, ll3<j59> ll3Var3, boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, String str2, Role role) {
        super(mutableInteractionSource, indicationNodeFactory, z2, z3, str2, role, ll3Var, null);
        this.onLongClickLabel = str;
        this.onLongClick = ll3Var2;
        this.onDoubleClick = ll3Var3;
        this.hapticFeedbackEnabled = z;
        this.longKeyPressJobs = LongObjectMapKt.mutableLongObjectMapOf();
        this.doubleKeyClickStates = LongObjectMapKt.mutableLongObjectMapOf();
        this.isSuspendingPointerInputEnabled = !ComposeFoundationFlags.isNonSuspendingPointerInputInCombinedClickableEnabled;
        this.firstTapUpTime = -1L;
        this.indirectFirstTapUpTime = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applyAdditionalSemantics$lambda$0(CombinedClickableNode combinedClickableNode) {
        ll3<j59> ll3Var = combinedClickableNode.onLongClick;
        if (ll3Var == null) {
            return true;
        }
        ll3Var.invoke();
        return true;
    }

    private final void cancelInput(boolean z) {
        if (z) {
            this.indirectDownEvent = null;
            mb4 mb4Var = this.indirectLongPressJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.indirectLongPressJob = null;
            mb4 mb4Var2 = this.indirectTapJob;
            if (mb4Var2 != null) {
                mb4Var2.cancel(null);
            }
            this.indirectTapJob = null;
            this.indirectIsSecondTap = false;
            this.indirectLongPressTriggered = false;
            this.indirectFirstTapUpTime = -1L;
            this.indirectIgnoreNextUp = false;
        } else {
            this.downEvent = null;
            mb4 mb4Var3 = this.longPressJob;
            if (mb4Var3 != null) {
                mb4Var3.cancel(null);
            }
            this.longPressJob = null;
            mb4 mb4Var4 = this.tapJob;
            if (mb4Var4 != null) {
                mb4Var4.cancel(null);
            }
            this.tapJob = null;
            this.isSecondTap = false;
            this.longPressTriggered = false;
            this.firstTapUpTime = -1L;
            this.ignoreNextUp = false;
        }
        handlePressInteractionCancel(z);
    }

    private final void checkForCancellation(PointerEvent pointerEvent) {
        if (this.downEvent == null || this.longPressTriggered) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = changes.get(i);
            if (pointerInputChange.isConsumed() && pointerInputChange != this.downEvent) {
                cancelInput(false);
                return;
            }
        }
    }

    private final void handleDeepPress() {
        if (this.longPressTriggered || !getEnabled() || this.onLongClick == null) {
            return;
        }
        mb4 mb4Var = this.longPressJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.longPressJob = null;
        ll3<j59> ll3Var = this.onLongClick;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
        if (this.hapticFeedbackEnabled) {
            ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalHapticFeedback())).mo7001performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m7014getLongPress5zf0vsI());
        }
        this.longPressTriggered = true;
    }

    private final void handleDownEvent(PointerInputChange pointerInputChange) {
        pointerInputChange.consume();
        this.downEvent = pointerInputChange;
        if (getEnabled()) {
            mb4 mb4Var = this.tapJob;
            if (mb4Var != null && mb4Var.isActive()) {
                if (pointerInputChange.getUptimeMillis() - this.firstTapUpTime < ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getDoubleTapMinTimeMillis()) {
                    this.ignoreNextUp = true;
                    return;
                }
                this.isSecondTap = true;
                mb4 mb4Var2 = this.tapJob;
                if (mb4Var2 != null) {
                    mb4Var2.cancel(null);
                }
                this.tapJob = null;
            }
            this.longPressTriggered = false;
            if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
                handlePressInteractionStart(pointerInputChange);
            } else {
                m1255handlePressInteractionStart3MmeM6k(pointerInputChange.m7569getPositionF1C5BW0(), false);
            }
            if (this.onLongClick != null) {
                this.longPressJob = av0.c(getCoroutineScope(), null, null, new C04701(null), 3);
            }
        }
    }

    private final void handleNonUpEventIfNeeded(IndirectPointerEvent indirectPointerEvent) {
        float touchSlop = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getTouchSlop();
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            IndirectPointerInputChange indirectPointerInputChange = changes.get(i);
            long jM7074getPositionF1C5BW0 = indirectPointerInputChange.m7074getPositionF1C5BW0();
            IndirectPointerInputChange indirectPointerInputChange2 = this.indirectDownEvent;
            indirectPointerInputChange2.getClass();
            boolean z = Math.abs(Offset.m5985getDistanceimpl(Offset.m5991minusMKHz9U(jM7074getPositionF1C5BW0, indirectPointerInputChange2.m7074getPositionF1C5BW0()))) > touchSlop;
            if (indirectPointerInputChange.isConsumed() || z) {
                cancelInput(true);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: handleNonUpEventIfNeeded-O0kMr_c, reason: not valid java name */
    private final void m1340handleNonUpEventIfNeededO0kMr_c(PointerEvent pointerEvent, long j) {
        long jM1252getExtendedTouchPaddinghWWAJMo = m1252getExtendedTouchPaddinghWWAJMo(j);
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = changes.get(i);
            if (pointerInputChange.isConsumed() || PointerEventKt.m7505isOutOfBoundsjwHxaWs(pointerInputChange, j, jM1252getExtendedTouchPaddinghWWAJMo)) {
                cancelInput(false);
                return;
            }
        }
    }

    private final void handleUpEvent(long j, IndirectPointerInputChange indirectPointerInputChange) {
        if (getEnabled() && !this.indirectIgnoreNextUp) {
            m1254handlePressInteractionRelease3MmeM6k(indirectPointerInputChange.m7074getPositionF1C5BW0(), true);
            this.indirectFirstTapUpTime = j;
            if (!this.indirectLongPressTriggered) {
                boolean z = this.indirectIsSecondTap;
                ll3<j59> ll3Var = this.onDoubleClick;
                if (z) {
                    if (ll3Var != null) {
                        ll3Var.invoke();
                    }
                } else if (ll3Var != null) {
                    this.indirectTapJob = av0.c(getCoroutineScope(), null, null, new C04722(null), 3);
                } else {
                    getOnClick().invoke();
                }
            }
        }
        this.indirectDownEvent = null;
        this.indirectIgnoreNextUp = false;
        this.indirectIsSecondTap = false;
        mb4 mb4Var = this.indirectLongPressJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.indirectLongPressJob = null;
        this.indirectLongPressTriggered = false;
    }

    private static /* synthetic */ void isSuspendingPointerInputEnabled$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a2 A[LOOP:2: B:24:0x0071->B:34:0x00a2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5 A[EDGE_INSN: B:43:0x00a5->B:35:0x00a5 BREAK  A[LOOP:2: B:24:0x0071->B:34:0x00a2], SYNTHETIC] */
    private final void resetKeyPressState() {
        char c;
        long j;
        long j2;
        MutableLongObjectMap<mb4> mutableLongObjectMap = this.longKeyPressJobs;
        Object[] objArr = mutableLongObjectMap.values;
        long[] jArr = mutableLongObjectMap.metadata;
        int length = jArr.length - 2;
        char c2 = 7;
        if (length >= 0) {
            int i = 0;
            j = 128;
            while (true) {
                long j3 = jArr[i];
                j2 = 255;
                if ((((~j3) << c2) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    int i3 = 0;
                    while (i3 < i2) {
                        if ((j3 & 255) < 128) {
                            ((mb4) objArr[(i << 3) + i3]).cancel(null);
                        }
                        j3 >>= 8;
                        i3++;
                        c2 = c2;
                    }
                    c = c2;
                    if (i2 != 8) {
                        break;
                    }
                } else {
                    c = c2;
                }
                if (i == length) {
                    break;
                }
                i++;
                c2 = c;
            }
        } else {
            c = 7;
            j = 128;
            j2 = 255;
        }
        mutableLongObjectMap.clear();
        MutableLongObjectMap<DoubleKeyClickState> mutableLongObjectMap2 = this.doubleKeyClickStates;
        Object[] objArr2 = mutableLongObjectMap2.values;
        long[] jArr2 = mutableLongObjectMap2.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i4 = 0;
            while (true) {
                long j4 = jArr2[i4];
                if ((((~j4) << c) & j4 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i4 != length2) {
                        break;
                        break;
                    }
                    i4++;
                } else {
                    int i5 = 8 - ((~(i4 - length2)) >>> 31);
                    for (int i6 = 0; i6 < i5; i6++) {
                        if ((j4 & j2) < j) {
                            ((DoubleKeyClickState) objArr2[(i4 << 3) + i6]).getJob().cancel(null);
                        }
                        j4 >>= 8;
                    }
                    if (i5 != 8) {
                        break;
                    } else if (i4 != length2) {
                        break;
                    } else {
                        i4++;
                    }
                }
            }
        }
        mutableLongObjectMap2.clear();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.onLongClick != null) {
            SemanticsPropertiesKt.onLongClick(semanticsPropertyReceiver, this.onLongClickLabel, new ll3() { // from class: androidx.compose.foundation.d
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Boolean.valueOf(CombinedClickableNode.applyAdditionalSemantics$lambda$0(this.b));
                }
            });
        }
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public SuspendingPointerInputModifierNode createPointerInputNodeIfNeeded() {
        if (this.isSuspendingPointerInputEnabled) {
            return SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new AnonymousClass1());
        }
        return null;
    }

    public final boolean getHapticFeedbackEnabled() {
        return this.hapticFeedbackEnabled;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onCancelIndirectPointerInput() {
        cancelInput(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void onCancelKeyInput() {
        resetKeyPressState();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        super.onCancelPointerInput();
        cancelInput(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* JADX INFO: renamed from: onClickKeyDownEvent-ZmokQxo */
    public boolean mo1256onClickKeyDownEventZmokQxo(KeyEvent keyEvent) {
        boolean z;
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        if (this.onLongClick == null || this.longKeyPressJobs.get(jM7401getKeyZmokQxo) != null) {
            z = false;
        } else {
            this.longKeyPressJobs.set(jM7401getKeyZmokQxo, av0.c(getCoroutineScope(), null, null, new CombinedClickableNode$onClickKeyDownEvent$1(this, null), 3));
            z = true;
        }
        DoubleKeyClickState doubleKeyClickState = this.doubleKeyClickStates.get(jM7401getKeyZmokQxo);
        if (doubleKeyClickState != null) {
            if (doubleKeyClickState.getJob().isActive()) {
                doubleKeyClickState.getJob().cancel(null);
                if (!doubleKeyClickState.getDoubleTapMinTimeMillisElapsed()) {
                    getOnClick().invoke();
                    this.doubleKeyClickStates.remove(jM7401getKeyZmokQxo);
                    return z;
                }
            } else {
                this.doubleKeyClickStates.remove(jM7401getKeyZmokQxo);
            }
        }
        return z;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* JADX INFO: renamed from: onClickKeyUpEvent-ZmokQxo */
    public boolean mo1257onClickKeyUpEventZmokQxo(KeyEvent keyEvent) {
        ll3<j59> ll3Var;
        long jM7401getKeyZmokQxo = KeyEvent_androidKt.m7401getKeyZmokQxo(keyEvent);
        boolean z = false;
        if (this.longKeyPressJobs.get(jM7401getKeyZmokQxo) != null) {
            mb4 mb4Var = this.longKeyPressJobs.get(jM7401getKeyZmokQxo);
            if (mb4Var != null) {
                if (mb4Var.isActive()) {
                    mb4Var.cancel(null);
                } else {
                    z = true;
                }
            }
            this.longKeyPressJobs.remove(jM7401getKeyZmokQxo);
        }
        if (this.onDoubleClick != null) {
            if (this.doubleKeyClickStates.get(jM7401getKeyZmokQxo) != null) {
                if (!z && (ll3Var = this.onDoubleClick) != null) {
                    ll3Var.invoke();
                }
                this.doubleKeyClickStates.remove(jM7401getKeyZmokQxo);
                return true;
            }
            if (!z) {
                this.doubleKeyClickStates.set(jM7401getKeyZmokQxo, new DoubleKeyClickState(av0.c(getCoroutineScope(), null, null, new CombinedClickableNode$onClickKeyUpEvent$2(this, jM7401getKeyZmokQxo, null), 3)));
                return true;
            }
        } else if (!z) {
            getOnClick().invoke();
        }
        return true;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass) {
        super.onIndirectPointerEvent(indirectPointerEvent, pointerEventPass);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass == PointerEventPass.Final) {
                checkForCancellation(indirectPointerEvent);
                return;
            }
            return;
        }
        if (this.indirectDownEvent == null) {
            List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(changes.get(i))) {
                    handleDownEvent(indirectPointerEvent.getChanges().get(0));
                    return;
                }
            }
            return;
        }
        if (!this.indirectLongPressTriggered) {
            List<IndirectPointerInputChange> changes2 = indirectPointerEvent.getChanges();
            int size2 = changes2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (!ClickableKt.changedToUp(changes2.get(i2))) {
                    handleNonUpEventIfNeeded(indirectPointerEvent);
                    return;
                }
            }
            IndirectPointerInputChange indirectPointerInputChange = indirectPointerEvent.getChanges().get(0);
            indirectPointerInputChange.consume();
            long uptimeMillis = indirectPointerInputChange.getUptimeMillis();
            IndirectPointerInputChange indirectPointerInputChange2 = this.indirectDownEvent;
            indirectPointerInputChange2.getClass();
            handleUpEvent(uptimeMillis, indirectPointerInputChange2);
            return;
        }
        List<IndirectPointerInputChange> changes3 = indirectPointerEvent.getChanges();
        int size3 = changes3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            if (!ClickableKt.changedToUpIgnoreConsumed(changes3.get(i3))) {
                List<IndirectPointerInputChange> changes4 = indirectPointerEvent.getChanges();
                int size4 = changes4.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    changes4.get(i4).consume();
                }
                return;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange3 = indirectPointerEvent.getChanges().get(0);
        indirectPointerInputChange3.consume();
        long uptimeMillis2 = indirectPointerInputChange3.getUptimeMillis();
        IndirectPointerInputChange indirectPointerInputChange4 = this.indirectDownEvent;
        indirectPointerInputChange4.getClass();
        handleUpEvent(uptimeMillis2, indirectPointerInputChange4);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        super.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        if (this.isSuspendingPointerInputEnabled) {
            return;
        }
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass == PointerEventPass.Final) {
                checkForCancellation(pointerEvent);
                return;
            }
            return;
        }
        if (this.downEvent == null) {
            if (TapGestureDetectorKt.isChangedToDown$default(pointerEvent, true, false, 2, null)) {
                handleDownEvent(pointerEvent.getChanges().get(0));
                return;
            }
            return;
        }
        if (TapGestureDetector_androidKt.isDeepPress(pointerEvent)) {
            handleDeepPress();
        }
        if (!this.longPressTriggered) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (!PointerEventKt.changedToUp(changes.get(i))) {
                    m1340handleNonUpEventIfNeededO0kMr_c(pointerEvent, j);
                    return;
                }
            }
            PointerInputChange pointerInputChange = pointerEvent.getChanges().get(0);
            pointerInputChange.consume();
            long uptimeMillis = pointerInputChange.getUptimeMillis();
            PointerInputChange pointerInputChange2 = this.downEvent;
            pointerInputChange2.getClass();
            handleUpEvent(uptimeMillis, pointerInputChange2);
            return;
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (!PointerEventKt.changedToUpIgnoreConsumed(changes2.get(i2))) {
                List<PointerInputChange> changes3 = pointerEvent.getChanges();
                int size3 = changes3.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    changes3.get(i3).consume();
                }
                return;
            }
        }
        PointerInputChange pointerInputChange3 = pointerEvent.getChanges().get(0);
        pointerInputChange3.consume();
        long uptimeMillis2 = pointerInputChange3.getUptimeMillis();
        PointerInputChange pointerInputChange4 = this.downEvent;
        pointerInputChange4.getClass();
        handleUpEvent(uptimeMillis2, pointerInputChange4);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        super.onReset();
        resetKeyPressState();
    }

    public final void setHapticFeedbackEnabled(boolean z) {
        this.hapticFeedbackEnabled = z;
    }

    /* JADX INFO: renamed from: update-2tQrsxU, reason: not valid java name */
    public final void m1341update2tQrsxU(ll3<j59> ll3Var, String str, ll3<j59> ll3Var2, ll3<j59> ll3Var3, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str2, Role role) {
        boolean z3;
        if (!aa4.e(this.onLongClickLabel, str)) {
            this.onLongClickLabel = str;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if ((this.onLongClick == null) != (ll3Var2 == null)) {
            disposeInteractions();
            SemanticsModifierNodeKt.invalidateSemantics(this);
            z3 = true;
        } else {
            z3 = false;
        }
        this.onLongClick = ll3Var2;
        if ((this.onDoubleClick == null) != (ll3Var3 == null)) {
            z3 = true;
        }
        this.onDoubleClick = ll3Var3;
        if (getEnabled() != z2) {
            z3 = true;
        }
        m1261updateCommonO2vRcR0(mutableInteractionSource, indicationNodeFactory, z, z2, str2, role, ll3Var);
        if (z3) {
            resetPointerInputHandler();
            cancelInput(false);
            cancelInput(true);
        }
    }

    private final void checkForCancellation(IndirectPointerEvent indirectPointerEvent) {
        if (this.indirectDownEvent == null || this.indirectLongPressTriggered) {
            return;
        }
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            IndirectPointerInputChange indirectPointerInputChange = changes.get(i);
            if (indirectPointerInputChange.isConsumed() && indirectPointerInputChange != this.indirectDownEvent) {
                cancelInput(true);
                return;
            }
        }
    }

    public /* synthetic */ CombinedClickableNode(ll3 ll3Var, String str, ll3 ll3Var2, ll3 ll3Var3, boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, String str2, Role role, jh2 jh2Var) {
        this(ll3Var, str, ll3Var2, ll3Var3, z, mutableInteractionSource, indicationNodeFactory, z2, z3, str2, role);
    }

    private final void handleUpEvent(long j, PointerInputChange pointerInputChange) {
        if (getEnabled() && !this.ignoreNextUp) {
            m1254handlePressInteractionRelease3MmeM6k(pointerInputChange.m7569getPositionF1C5BW0(), false);
            this.firstTapUpTime = j;
            if (!this.longPressTriggered) {
                boolean z = this.isSecondTap;
                ll3<j59> ll3Var = this.onDoubleClick;
                if (z) {
                    if (ll3Var != null) {
                        ll3Var.invoke();
                    }
                } else if (ll3Var != null) {
                    this.tapJob = av0.c(getCoroutineScope(), null, null, new C04711(null), 3);
                } else {
                    getOnClick().invoke();
                }
            }
        }
        this.downEvent = null;
        this.ignoreNextUp = false;
        this.isSecondTap = false;
        mb4 mb4Var = this.longPressJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.longPressJob = null;
        this.longPressTriggered = false;
    }

    private final void handleDownEvent(IndirectPointerInputChange indirectPointerInputChange) {
        indirectPointerInputChange.consume();
        this.indirectDownEvent = indirectPointerInputChange;
        if (getEnabled()) {
            mb4 mb4Var = this.indirectTapJob;
            if (mb4Var != null && mb4Var.isActive()) {
                if (indirectPointerInputChange.getUptimeMillis() - this.indirectFirstTapUpTime < ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getDoubleTapMinTimeMillis()) {
                    this.indirectIgnoreNextUp = true;
                    return;
                }
                this.indirectIsSecondTap = true;
                mb4 mb4Var2 = this.indirectTapJob;
                if (mb4Var2 != null) {
                    mb4Var2.cancel(null);
                }
                this.indirectTapJob = null;
            }
            this.indirectLongPressTriggered = false;
            if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
                handlePressInteractionStart(indirectPointerInputChange);
            } else {
                m1255handlePressInteractionStart3MmeM6k(indirectPointerInputChange.m7074getPositionF1C5BW0(), true);
            }
            if (this.onLongClick != null) {
                this.indirectLongPressJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass2(null), 3);
            }
        }
    }
}
