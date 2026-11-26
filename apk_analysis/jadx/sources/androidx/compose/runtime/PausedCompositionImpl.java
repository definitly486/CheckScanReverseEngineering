package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.internal.Trace;
import defpackage.bm3;
import defpackage.j59;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes2.dex */
public final class PausedCompositionImpl implements PausedComposition {
    public static final int $stable = 8;
    private final Applier<?> applier;
    private final InternalComposer composer;
    private final CompositionImpl composition;
    private final bm3<Composer, Integer, j59> content;
    private final CompositionContext context;
    private final Object lock;
    private final RecordingApplier<Object> pausableApplier;
    private final RememberEventDispatcher rememberManager;
    private final boolean reusable;
    private AtomicReference<PausedCompositionState> state = new AtomicReference<>(PausedCompositionState.InitialPending);
    private long owningThread = Thread_jvmKt.currentThreadId();
    private ScatterSet<RecomposeScopeImpl> invalidScopes = ScatterSetKt.emptyScatterSet();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PausedCompositionState.values().length];
            try {
                iArr[PausedCompositionState.InitialPending.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PausedCompositionState.RecomposePending.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PausedCompositionState.Recomposing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PausedCompositionState.ApplyPending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PausedCompositionState.Applied.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PausedCompositionState.Cancelled.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PausedCompositionState.Invalid.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PausedCompositionImpl(CompositionImpl compositionImpl, CompositionContext compositionContext, InternalComposer internalComposer, Set<RememberObserver> set, bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z, Applier<?> applier, Object obj) {
        this.composition = compositionImpl;
        this.context = compositionContext;
        this.composer = internalComposer;
        this.content = bm3Var;
        this.reusable = z;
        this.applier = applier;
        this.lock = obj;
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher();
        rememberEventDispatcher.prepare(set, internalComposer.getErrorContext$runtime());
        this.rememberManager = rememberEventDispatcher;
        this.pausableApplier = new RecordingApplier<>(applier.getCurrent());
    }

    private final void applyChanges() {
        Trace trace = Trace.INSTANCE;
        Object objBeginSection = trace.beginSection("PausedComposition:applyChanges");
        try {
            synchronized (this.lock) {
                try {
                    RecordingApplier<Object> recordingApplier = this.pausableApplier;
                    Applier<?> applier = this.applier;
                    applier.getClass();
                    recordingApplier.playTo(applier, this.rememberManager);
                    this.rememberManager.dispatchRememberObservers();
                    this.rememberManager.dispatchSideEffects();
                    this.rememberManager.dispatchAbandons();
                    this.composition.pausedCompositionFinished$runtime(null);
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    this.rememberManager.dispatchAbandons();
                    this.composition.pausedCompositionFinished$runtime(null);
                    throw th;
                }
            }
            trace.endSection(objBeginSection);
        } catch (Throwable th2) {
            Trace.INSTANCE.endSection(objBeginSection);
            throw th2;
        }
    }

    private final void markComplete() {
        boolean z;
        PausedCompositionState pausedCompositionState = PausedCompositionState.RecomposePending;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.ApplyPending;
        AtomicReference<PausedCompositionState> atomicReference = this.state;
        while (true) {
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                z = true;
                break;
            } else if (atomicReference.get() != pausedCompositionState) {
                z = false;
                break;
            }
        }
        if (z) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
    }

    private final void updateState(PausedCompositionState pausedCompositionState, PausedCompositionState pausedCompositionState2) {
        boolean z;
        AtomicReference<PausedCompositionState> atomicReference = this.state;
        while (true) {
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                z = true;
                break;
            } else if (atomicReference.get() != pausedCompositionState) {
                z = false;
                break;
            }
        }
        if (z) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
    }

    @Override // androidx.compose.runtime.PausedComposition
    public void apply() throws Exception {
        boolean z;
        try {
            switch (WhenMappings.$EnumSwitchMapping$0[this.state.get().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 4:
                    applyChanges();
                    PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.Applied;
                    AtomicReference<PausedCompositionState> atomicReference = this.state;
                    while (true) {
                        if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                            z = true;
                        } else if (atomicReference.get() != pausedCompositionState) {
                            z = false;
                        }
                    }
                    if (z) {
                        return;
                    }
                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                    return;
                case 5:
                    throw new IllegalStateException("The paused composition has already been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e) {
            this.state.set(PausedCompositionState.Invalid);
            throw e;
        }
    }

    @Override // androidx.compose.runtime.PausedComposition
    public void cancel() {
        this.state.set(PausedCompositionState.Cancelled);
        ScatterSet<RememberObserverHolder> scatterSetExtractRememberSet = this.rememberManager.extractRememberSet();
        this.rememberManager.dispatchAbandons();
        this.composition.pausedCompositionFinished$runtime(scatterSetExtractRememberSet);
    }

    public final Applier<?> getApplier() {
        return this.applier;
    }

    public final InternalComposer getComposer() {
        return this.composer;
    }

    public final CompositionImpl getComposition() {
        return this.composition;
    }

    public final bm3<Composer, Integer, j59> getContent() {
        return this.content;
    }

    public final CompositionContext getContext() {
        return this.context;
    }

    public final Object getLock() {
        return this.lock;
    }

    public final RecordingApplier<Object> getPausableApplier$runtime() {
        return this.pausableApplier;
    }

    public final RememberEventDispatcher getRememberManager$runtime() {
        return this.rememberManager;
    }

    public final boolean getReusable() {
        return this.reusable;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isApplied() {
        return this.state.get() == PausedCompositionState.Applied;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isCancelled() {
        return this.state.get() == PausedCompositionState.Cancelled;
    }

    @Override // androidx.compose.runtime.PausedComposition
    public boolean isComplete() {
        return this.state.get().compareTo(PausedCompositionState.ApplyPending) >= 0;
    }

    public final boolean isRecomposing$runtime() {
        return this.state.get() == PausedCompositionState.Recomposing && this.owningThread == Thread_jvmKt.currentThreadId();
    }

    public final void markIncomplete$runtime() {
        AtomicReference<PausedCompositionState> atomicReference = this.state;
        PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
        while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2) && atomicReference.get() == pausedCompositionState) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ad A[Catch: Exception -> 0x0021, TryCatch #2 {Exception -> 0x0021, blocks: (B:2:0x0000, B:5:0x001b, B:6:0x0020, B:9:0x0024, B:10:0x002b, B:11:0x002c, B:12:0x0033, B:13:0x0034, B:14:0x003b, B:15:0x003c, B:16:0x0043, B:17:0x0044, B:18:0x004e, B:19:0x004f, B:20:0x0055, B:27:0x0066, B:28:0x0081, B:30:0x0095, B:31:0x009d, B:37:0x00ad, B:38:0x00c8, B:40:0x00d0, B:34:0x00a5, B:42:0x00d6, B:43:0x00de, B:49:0x00ee, B:50:0x0109, B:46:0x00e6, B:23:0x005d, B:51:0x010a, B:53:0x010e, B:55:0x011f, B:57:0x0123, B:58:0x0128, B:59:0x012e, B:65:0x013e, B:66:0x0159, B:68:0x0161, B:62:0x0136, B:72:0x016a, B:74:0x016e, B:75:0x0173, B:29:0x0083, B:54:0x0113), top: B:82:0x0000, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0 A[Catch: Exception -> 0x0021, TryCatch #2 {Exception -> 0x0021, blocks: (B:2:0x0000, B:5:0x001b, B:6:0x0020, B:9:0x0024, B:10:0x002b, B:11:0x002c, B:12:0x0033, B:13:0x0034, B:14:0x003b, B:15:0x003c, B:16:0x0043, B:17:0x0044, B:18:0x004e, B:19:0x004f, B:20:0x0055, B:27:0x0066, B:28:0x0081, B:30:0x0095, B:31:0x009d, B:37:0x00ad, B:38:0x00c8, B:40:0x00d0, B:34:0x00a5, B:42:0x00d6, B:43:0x00de, B:49:0x00ee, B:50:0x0109, B:46:0x00e6, B:23:0x005d, B:51:0x010a, B:53:0x010e, B:55:0x011f, B:57:0x0123, B:58:0x0128, B:59:0x012e, B:65:0x013e, B:66:0x0159, B:68:0x0161, B:62:0x0136, B:72:0x016a, B:74:0x016e, B:75:0x0173, B:29:0x0083, B:54:0x0113), top: B:82:0x0000, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00ee A[Catch: Exception -> 0x0021, TryCatch #2 {Exception -> 0x0021, blocks: (B:2:0x0000, B:5:0x001b, B:6:0x0020, B:9:0x0024, B:10:0x002b, B:11:0x002c, B:12:0x0033, B:13:0x0034, B:14:0x003b, B:15:0x003c, B:16:0x0043, B:17:0x0044, B:18:0x004e, B:19:0x004f, B:20:0x0055, B:27:0x0066, B:28:0x0081, B:30:0x0095, B:31:0x009d, B:37:0x00ad, B:38:0x00c8, B:40:0x00d0, B:34:0x00a5, B:42:0x00d6, B:43:0x00de, B:49:0x00ee, B:50:0x0109, B:46:0x00e6, B:23:0x005d, B:51:0x010a, B:53:0x010e, B:55:0x011f, B:57:0x0123, B:58:0x0128, B:59:0x012e, B:65:0x013e, B:66:0x0159, B:68:0x0161, B:62:0x0136, B:72:0x016a, B:74:0x016e, B:75:0x0173, B:29:0x0083, B:54:0x0113), top: B:82:0x0000, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x013e A[Catch: Exception -> 0x0021, TryCatch #2 {Exception -> 0x0021, blocks: (B:2:0x0000, B:5:0x001b, B:6:0x0020, B:9:0x0024, B:10:0x002b, B:11:0x002c, B:12:0x0033, B:13:0x0034, B:14:0x003b, B:15:0x003c, B:16:0x0043, B:17:0x0044, B:18:0x004e, B:19:0x004f, B:20:0x0055, B:27:0x0066, B:28:0x0081, B:30:0x0095, B:31:0x009d, B:37:0x00ad, B:38:0x00c8, B:40:0x00d0, B:34:0x00a5, B:42:0x00d6, B:43:0x00de, B:49:0x00ee, B:50:0x0109, B:46:0x00e6, B:23:0x005d, B:51:0x010a, B:53:0x010e, B:55:0x011f, B:57:0x0123, B:58:0x0128, B:59:0x012e, B:65:0x013e, B:66:0x0159, B:68:0x0161, B:62:0x0136, B:72:0x016a, B:74:0x016e, B:75:0x0173, B:29:0x0083, B:54:0x0113), top: B:82:0x0000, inners: #0, #1 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0161 A[Catch: Exception -> 0x0021, TRY_LEAVE, TryCatch #2 {Exception -> 0x0021, blocks: (B:2:0x0000, B:5:0x001b, B:6:0x0020, B:9:0x0024, B:10:0x002b, B:11:0x002c, B:12:0x0033, B:13:0x0034, B:14:0x003b, B:15:0x003c, B:16:0x0043, B:17:0x0044, B:18:0x004e, B:19:0x004f, B:20:0x0055, B:27:0x0066, B:28:0x0081, B:30:0x0095, B:31:0x009d, B:37:0x00ad, B:38:0x00c8, B:40:0x00d0, B:34:0x00a5, B:42:0x00d6, B:43:0x00de, B:49:0x00ee, B:50:0x0109, B:46:0x00e6, B:23:0x005d, B:51:0x010a, B:53:0x010e, B:55:0x011f, B:57:0x0123, B:58:0x0128, B:59:0x012e, B:65:0x013e, B:66:0x0159, B:68:0x0161, B:62:0x0136, B:72:0x016a, B:74:0x016e, B:75:0x0173, B:29:0x0083, B:54:0x0113), top: B:82:0x0000, inners: #0, #1 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x00ad, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x00ee, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x013e, please report this as an issue */
    @Override // androidx.compose.runtime.PausedComposition
    public boolean resume(ShouldPauseCallback shouldPauseCallback) throws Exception {
        boolean z;
        try {
            boolean z2 = false;
            switch (WhenMappings.$EnumSwitchMapping$0[this.state.get().ordinal()]) {
                case 1:
                    if (this.reusable) {
                        this.composer.startReuseFromRoot$runtime();
                    }
                    try {
                        this.invalidScopes = this.context.composeInitialPaused$runtime(this.composition, shouldPauseCallback, this.content);
                        if (this.reusable) {
                            this.composer.endReuseFromRoot$runtime();
                        }
                        PausedCompositionState pausedCompositionState = PausedCompositionState.InitialPending;
                        PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
                        AtomicReference<PausedCompositionState> atomicReference = this.state;
                        do {
                            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                                z2 = true;
                            }
                            if (!z2) {
                                PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                            }
                            if (this.invalidScopes.isEmpty()) {
                                markComplete();
                            }
                            return isComplete();
                        } while (atomicReference.get() == pausedCompositionState);
                        if (!z2) {
                            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                        }
                        if (this.invalidScopes.isEmpty()) {
                            markComplete();
                        }
                        return isComplete();
                    } catch (Throwable th) {
                        if (this.reusable) {
                            this.composer.endReuseFromRoot$runtime();
                        }
                        throw th;
                    }
                case 2:
                    PausedCompositionState pausedCompositionState3 = PausedCompositionState.RecomposePending;
                    PausedCompositionState pausedCompositionState4 = PausedCompositionState.Recomposing;
                    AtomicReference<PausedCompositionState> atomicReference2 = this.state;
                    while (true) {
                        if (atomicReference2.compareAndSet(pausedCompositionState3, pausedCompositionState4)) {
                            z = true;
                        } else if (atomicReference2.get() != pausedCompositionState3) {
                            z = false;
                        }
                    }
                    if (!z) {
                        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState4 + '.');
                    }
                    long j = this.owningThread;
                    try {
                        this.owningThread = Thread_jvmKt.currentThreadId();
                        this.invalidScopes = this.context.recomposePaused$runtime(this.composition, shouldPauseCallback, this.invalidScopes);
                        this.owningThread = j;
                        PausedCompositionState pausedCompositionState5 = PausedCompositionState.Recomposing;
                        PausedCompositionState pausedCompositionState6 = PausedCompositionState.RecomposePending;
                        AtomicReference<PausedCompositionState> atomicReference3 = this.state;
                        do {
                            if (atomicReference3.compareAndSet(pausedCompositionState5, pausedCompositionState6)) {
                                z2 = true;
                            }
                            if (!z2) {
                                PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState5 + " to: " + pausedCompositionState6 + '.');
                            }
                            if (this.invalidScopes.isEmpty()) {
                                markComplete();
                            }
                            return isComplete();
                        } while (atomicReference3.get() == pausedCompositionState5);
                        if (!z2) {
                            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState5 + " to: " + pausedCompositionState6 + '.');
                        }
                        if (this.invalidScopes.isEmpty()) {
                            markComplete();
                        }
                        return isComplete();
                    } catch (Throwable th2) {
                        this.owningThread = j;
                        PausedCompositionState pausedCompositionState7 = PausedCompositionState.Recomposing;
                        PausedCompositionState pausedCompositionState8 = PausedCompositionState.RecomposePending;
                        AtomicReference<PausedCompositionState> atomicReference4 = this.state;
                        do {
                            if (atomicReference4.compareAndSet(pausedCompositionState7, pausedCompositionState8)) {
                                z2 = true;
                            }
                            if (!z2) {
                                PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState7 + " to: " + pausedCompositionState8 + '.');
                            }
                            throw th2;
                        } while (atomicReference4.get() == pausedCompositionState7);
                        if (!z2) {
                            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState7 + " to: " + pausedCompositionState8 + '.');
                        }
                        throw th2;
                    }
                case 3:
                    ComposerKt.composeRuntimeError("Recursive call to resume()");
                    throw new KotlinNothingValueException();
                case 4:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 5:
                    throw new IllegalStateException("The paused composition has been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } catch (Exception e) {
            this.state.set(PausedCompositionState.Invalid);
            throw e;
        }
    }
}
