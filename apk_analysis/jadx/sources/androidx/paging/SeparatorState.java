package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.aa4;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.kx2;
import defpackage.me0;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.u96;
import defpackage.y74;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class SeparatorState<R, T extends R> {
    private boolean endTerminalSeparatorDeferred;
    private boolean footerAdded;
    private final dm3<T, T, e02<? super R>, Object> generator;
    private boolean headerAdded;
    private LoadStates mediatorStates;
    private final List<TransformablePage<T>> pageStash;
    private int placeholdersAfter;
    private int placeholdersBefore;
    private final MutableLoadStateCollection sourceStates;
    private boolean startTerminalSeparatorDeferred;
    private final TerminalSeparatorType terminalSeparatorType;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TerminalSeparatorType.values().length];
            try {
                iArr[TerminalSeparatorType.FULLY_COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TerminalSeparatorType.SOURCE_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.SeparatorState$onEvent$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SeparatorState", f = "Separators.kt", l = {217, 219, 220}, m = "onEvent", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeparatorState<R, T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SeparatorState<R, T> separatorState, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = separatorState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.onEvent(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.SeparatorState$onInsert$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.SeparatorState", f = "Separators.kt", l = {310, 373, 385, 391, TypedValues.CycleType.TYPE_ALPHA, 412, 437, 446, 460, 471}, m = "onInsert", v = 1)
    public static final class C07121 extends f02 {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeparatorState<R, T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07121(SeparatorState<R, T> separatorState, e02<? super C07121> e02Var) {
            super(e02Var);
            this.this$0 = separatorState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.onInsert(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.SeparatorState$onStaticList$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.SeparatorState", f = "Separators.kt", l = {575}, m = "onStaticList", v = 1)
    public static final class C07131 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SeparatorState<R, T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07131(SeparatorState<R, T> separatorState, e02<? super C07131> e02Var) {
            super(e02Var);
            this.this$0 = separatorState;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.onStaticList(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SeparatorState(TerminalSeparatorType terminalSeparatorType, dm3<? super T, ? super T, ? super e02<? super R>, ? extends Object> dm3Var) {
        terminalSeparatorType.getClass();
        dm3Var.getClass();
        this.terminalSeparatorType = terminalSeparatorType;
        this.generator = dm3Var;
        this.pageStash = new ArrayList();
        this.sourceStates = new MutableLoadStateCollection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onDrop$lambda$0(y74 y74Var, TransformablePage transformablePage) {
        transformablePage.getClass();
        for (int i : transformablePage.getOriginalPageOffsets()) {
            if (y74Var.c(i)) {
                return true;
            }
        }
        return false;
    }

    private final <T> TransformablePage<T> transformablePageToStash(TransformablePage<T> transformablePage) {
        int[] originalPageOffsets = transformablePage.getOriginalPageOffsets();
        List listI = u96.i(qn1.T(transformablePage.getData()), qn1.b0(transformablePage.getData()));
        int hintOriginalPageOffset = transformablePage.getHintOriginalPageOffset();
        List<Integer> hintOriginalIndices = transformablePage.getHintOriginalIndices();
        Integer numValueOf = Integer.valueOf(hintOriginalIndices != null ? ((Number) qn1.T(hintOriginalIndices)).intValue() : 0);
        List<Integer> hintOriginalIndices2 = transformablePage.getHintOriginalIndices();
        return new TransformablePage<>(originalPageOffsets, listI, hintOriginalPageOffset, u96.i(numValueOf, Integer.valueOf(hintOriginalIndices2 != null ? ((Number) qn1.b0(hintOriginalIndices2)).intValue() : u96.g(transformablePage.getData()))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PageEvent.Insert<R> asRType(PageEvent.Insert<T> insert) {
        insert.getClass();
        return insert;
    }

    public final boolean getEndTerminalSeparatorDeferred() {
        return this.endTerminalSeparatorDeferred;
    }

    public final boolean getFooterAdded() {
        return this.footerAdded;
    }

    public final dm3<T, T, e02<? super R>, Object> getGenerator() {
        return this.generator;
    }

    public final boolean getHeaderAdded() {
        return this.headerAdded;
    }

    public final LoadStates getMediatorStates() {
        return this.mediatorStates;
    }

    public final List<TransformablePage<T>> getPageStash() {
        return this.pageStash;
    }

    public final int getPlaceholdersAfter() {
        return this.placeholdersAfter;
    }

    public final int getPlaceholdersBefore() {
        return this.placeholdersBefore;
    }

    public final MutableLoadStateCollection getSourceStates() {
        return this.sourceStates;
    }

    public final boolean getStartTerminalSeparatorDeferred() {
        return this.startTerminalSeparatorDeferred;
    }

    public final TerminalSeparatorType getTerminalSeparatorType() {
        return this.terminalSeparatorType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PageEvent.Drop<R> onDrop(PageEvent.Drop<T> drop) {
        drop.getClass();
        this.sourceStates.set(drop.getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
        LoadType loadType = drop.getLoadType();
        LoadType loadType2 = LoadType.PREPEND;
        if (loadType == loadType2) {
            this.placeholdersBefore = drop.getPlaceholdersRemaining();
            this.headerAdded = false;
        } else if (drop.getLoadType() == LoadType.APPEND) {
            this.placeholdersAfter = drop.getPlaceholdersRemaining();
            this.footerAdded = false;
        }
        if (this.pageStash.isEmpty()) {
            if (drop.getLoadType() == loadType2) {
                this.startTerminalSeparatorDeferred = false;
            } else {
                this.endTerminalSeparatorDeferred = false;
            }
        }
        final y74 y74Var = new y74(drop.getMinPageOffset(), drop.getMaxPageOffset(), 1);
        nn1.y(new nl3() { // from class: androidx.paging.s
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SeparatorState.onDrop$lambda$0(y74Var, (TransformablePage) obj));
            }
        }, this.pageStash);
        return drop;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        if (r9 == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        if (r9 == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
    
        if (r9 == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onEvent(androidx.paging.PageEvent<T> r8, defpackage.e02<? super androidx.paging.PageEvent<R>> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.paging.SeparatorState.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.paging.SeparatorState$onEvent$1 r0 = (androidx.paging.SeparatorState.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SeparatorState$onEvent$1 r0 = new androidx.paging.SeparatorState$onEvent$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3c
            if (r2 == r6) goto L38
            if (r2 == r5) goto L34
            if (r2 != r4) goto L2e
            defpackage.r57.b(r9)
            goto L7d
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r3
        L34:
            defpackage.r57.b(r9)
            goto L6b
        L38:
            defpackage.r57.b(r9)
            goto L4e
        L3c:
            defpackage.r57.b(r9)
            boolean r9 = r8 instanceof androidx.paging.PageEvent.Insert
            if (r9 == 0) goto L51
            androidx.paging.PageEvent$Insert r8 = (androidx.paging.PageEvent.Insert) r8
            r0.label = r6
            java.lang.Object r9 = r7.onInsert(r8, r0)
            if (r9 != r1) goto L4e
            goto L7c
        L4e:
            androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
            goto L7f
        L51:
            boolean r9 = r8 instanceof androidx.paging.PageEvent.Drop
            if (r9 == 0) goto L5c
            androidx.paging.PageEvent$Drop r8 = (androidx.paging.PageEvent.Drop) r8
            androidx.paging.PageEvent$Drop r9 = r7.onDrop(r8)
            goto L7f
        L5c:
            boolean r9 = r8 instanceof androidx.paging.PageEvent.LoadStateUpdate
            if (r9 == 0) goto L6e
            androidx.paging.PageEvent$LoadStateUpdate r8 = (androidx.paging.PageEvent.LoadStateUpdate) r8
            r0.label = r5
            java.lang.Object r9 = r7.onLoadStateUpdate(r8, r0)
            if (r9 != r1) goto L6b
            goto L7c
        L6b:
            androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
            goto L7f
        L6e:
            boolean r9 = r8 instanceof androidx.paging.PageEvent.StaticList
            if (r9 == 0) goto La6
            androidx.paging.PageEvent$StaticList r8 = (androidx.paging.PageEvent.StaticList) r8
            r0.label = r4
            java.lang.Object r9 = r7.onStaticList(r8, r0)
            if (r9 != r1) goto L7d
        L7c:
            return r1
        L7d:
            androidx.paging.PageEvent r9 = (androidx.paging.PageEvent) r9
        L7f:
            boolean r8 = r7.endTerminalSeparatorDeferred
            if (r8 == 0) goto L92
            java.util.List<androidx.paging.TransformablePage<T extends R>> r8 = r7.pageStash
            boolean r8 = r8.isEmpty()
            if (r8 == 0) goto L8c
            goto L92
        L8c:
            java.lang.String r7 = "deferred endTerm, page stash should be empty"
            defpackage.ah.f(r7)
            return r3
        L92:
            boolean r8 = r7.startTerminalSeparatorDeferred
            if (r8 == 0) goto La5
            java.util.List<androidx.paging.TransformablePage<T extends R>> r7 = r7.pageStash
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L9f
            goto La5
        L9f:
            java.lang.String r7 = "deferred startTerm, page stash should be empty"
            defpackage.ah.f(r7)
            return r3
        La5:
            return r9
        La6:
            defpackage.me0.e()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onEvent(androidx.paging.PageEvent, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:133:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:136:0x0433  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:136:0x0433 -> B:137:0x0439). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:192:0x0625 -> B:193:0x0626). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:217:0x0707 -> B:218:0x0708). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object onInsert(androidx.paging.PageEvent.Insert<T> r21, defpackage.e02<? super androidx.paging.PageEvent.Insert<R>> r22) {
        /*
            Method dump skipped, instruction units count: 2018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onInsert(androidx.paging.PageEvent$Insert, e02):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object onLoadStateUpdate(PageEvent.LoadStateUpdate<T> loadStateUpdate, e02<? super PageEvent<R>> e02Var) {
        LoadStates loadStates = this.mediatorStates;
        if (aa4.e(this.sourceStates.snapshot(), loadStateUpdate.getSource()) && aa4.e(loadStates, loadStateUpdate.getMediator())) {
            return loadStateUpdate;
        }
        this.sourceStates.set(loadStateUpdate.getSource());
        this.mediatorStates = loadStateUpdate.getMediator();
        LoadStates mediator = loadStateUpdate.getMediator();
        kx2 kx2Var = kx2.b;
        if (mediator != null && loadStateUpdate.getMediator().getPrepend().getEndOfPaginationReached()) {
            if (!aa4.e(loadStates != null ? loadStates.getPrepend() : null, loadStateUpdate.getMediator().getPrepend())) {
                return onInsert(PageEvent.Insert.Companion.Prepend(kx2Var, this.placeholdersBefore, loadStateUpdate.getSource(), loadStateUpdate.getMediator()), e02Var);
            }
        }
        if (loadStateUpdate.getMediator() != null && loadStateUpdate.getMediator().getAppend().getEndOfPaginationReached()) {
            if (!aa4.e(loadStates != null ? loadStates.getAppend() : null, loadStateUpdate.getMediator().getAppend())) {
                return onInsert(PageEvent.Insert.Companion.Append(kx2Var, this.placeholdersAfter, loadStateUpdate.getSource(), loadStateUpdate.getMediator()), e02Var);
            }
        }
        return loadStateUpdate;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x007b  */
    /* JADX WARN: Code duplicated, block: B:22:0x0080  */
    /* JADX WARN: Code duplicated, block: B:24:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007b -> B:21:0x007e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object onStaticList(androidx.paging.PageEvent.StaticList<T> r10, defpackage.e02<? super androidx.paging.PageEvent<R>> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof androidx.paging.SeparatorState.C07131
            if (r0 == 0) goto L13
            r0 = r11
            androidx.paging.SeparatorState$onStaticList$1 r0 = (androidx.paging.SeparatorState.C07131) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SeparatorState$onStaticList$1 r0 = new androidx.paging.SeparatorState$onStaticList$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L39
            int r10 = r0.I$1
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$2
            java.lang.Object r5 = r0.L$1
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r6 = r0.L$0
            androidx.paging.PageEvent$StaticList r6 = (androidx.paging.PageEvent.StaticList) r6
            defpackage.r57.b(r11)
            r8 = r4
            r4 = r10
            r10 = r6
            r6 = r8
            goto L7e
        L39:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r9)
            r9 = 0
            return r9
        L40:
            defpackage.r57.b(r11)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.List r2 = r10.getData()
            int r2 = r2.size()
            if (r2 < 0) goto L91
            r4 = 0
            r5 = r11
        L54:
            java.util.List r11 = r10.getData()
            int r6 = r4 + (-1)
            java.lang.Object r11 = defpackage.qn1.W(r6, r11)
            java.util.List r6 = r10.getData()
            java.lang.Object r6 = defpackage.qn1.W(r4, r6)
            dm3<T extends R, T extends R, e02<? super R>, java.lang.Object> r7 = r9.generator
            r0.L$0 = r10
            r0.L$1 = r5
            r0.L$2 = r6
            r0.I$0 = r4
            r0.I$1 = r2
            r0.label = r3
            java.lang.Object r11 = r7.invoke(r11, r6, r0)
            if (r11 != r1) goto L7b
            return r1
        L7b:
            r8 = r4
            r4 = r2
            r2 = r8
        L7e:
            if (r11 == 0) goto L83
            r5.add(r11)
        L83:
            if (r6 == 0) goto L88
            r5.add(r6)
        L88:
            if (r2 == r4) goto L8f
            int r11 = r2 + 1
            r2 = r4
            r4 = r11
            goto L54
        L8f:
            r1 = r5
            goto L92
        L91:
            r1 = r11
        L92:
            androidx.paging.PageEvent$StaticList r0 = new androidx.paging.PageEvent$StaticList
            androidx.paging.LoadStates r2 = r10.getSourceLoadStates()
            androidx.paging.LoadStates r3 = r10.getMediatorLoadStates()
            r6 = 24
            r7 = 0
            r4 = 0
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorState.onStaticList(androidx.paging.PageEvent$StaticList, e02):java.lang.Object");
    }

    public final void setEndTerminalSeparatorDeferred(boolean z) {
        this.endTerminalSeparatorDeferred = z;
    }

    public final void setFooterAdded(boolean z) {
        this.footerAdded = z;
    }

    public final void setHeaderAdded(boolean z) {
        this.headerAdded = z;
    }

    public final void setMediatorStates(LoadStates loadStates) {
        this.mediatorStates = loadStates;
    }

    public final void setPlaceholdersAfter(int i) {
        this.placeholdersAfter = i;
    }

    public final void setPlaceholdersBefore(int i) {
        this.placeholdersBefore = i;
    }

    public final void setStartTerminalSeparatorDeferred(boolean z) {
        this.startTerminalSeparatorDeferred = z;
    }

    public final <T> boolean terminatesEnd(PageEvent.Insert<T> insert, TerminalSeparatorType terminalSeparatorType) {
        LoadStates mediatorLoadStates;
        LoadState append;
        insert.getClass();
        terminalSeparatorType.getClass();
        if (insert.getLoadType() == LoadType.PREPEND) {
            return this.endTerminalSeparatorDeferred;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[terminalSeparatorType.ordinal()];
        if (i == 1) {
            return insert.getSourceLoadStates().getAppend().getEndOfPaginationReached() && ((mediatorLoadStates = insert.getMediatorLoadStates()) == null || (append = mediatorLoadStates.getAppend()) == null || append.getEndOfPaginationReached());
        }
        if (i == 2) {
            return insert.getSourceLoadStates().getAppend().getEndOfPaginationReached();
        }
        me0.e();
        return false;
    }

    public final <T> boolean terminatesStart(PageEvent.Insert<T> insert, TerminalSeparatorType terminalSeparatorType) {
        LoadStates mediatorLoadStates;
        LoadState prepend;
        insert.getClass();
        terminalSeparatorType.getClass();
        if (insert.getLoadType() == LoadType.APPEND) {
            return this.startTerminalSeparatorDeferred;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[terminalSeparatorType.ordinal()];
        if (i == 1) {
            return insert.getSourceLoadStates().getPrepend().getEndOfPaginationReached() && ((mediatorLoadStates = insert.getMediatorLoadStates()) == null || (prepend = mediatorLoadStates.getPrepend()) == null || prepend.getEndOfPaginationReached());
        }
        if (i == 2) {
            return insert.getSourceLoadStates().getPrepend().getEndOfPaginationReached();
        }
        me0.e();
        return false;
    }
}
