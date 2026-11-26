package androidx.paging;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.m05;
import defpackage.qn1;
import defpackage.u96;
import defpackage.yr;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SeparatorsKt {

    /* JADX INFO: renamed from: androidx.paging.SeparatorsKt$insertInternalSeparators$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SeparatorsKt", f = "Separators.kt", l = {82}, m = "insertInternalSeparators", v = 1)
    public static final class AnonymousClass1<R, T extends R> extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SeparatorsKt.insertInternalSeparators(null, null, this);
        }
    }

    public static final <R, T extends R> void addSeparatorPage(List<TransformablePage<R>> list, R r, TransformablePage<T> transformablePage, TransformablePage<T> transformablePage2, int i, int i2) {
        list.getClass();
        int[] originalPageOffsets = transformablePage != null ? transformablePage.getOriginalPageOffsets() : null;
        int[] originalPageOffsets2 = transformablePage2 != null ? transformablePage2.getOriginalPageOffsets() : null;
        if (originalPageOffsets != null && originalPageOffsets2 != null) {
            int[] iArrY = aq5.y(originalPageOffsets, originalPageOffsets2);
            LinkedHashSet linkedHashSet = new LinkedHashSet(m05.b(iArrY.length));
            yr.b0(iArrY, linkedHashSet);
            originalPageOffsets = qn1.s0(qn1.m0(qn1.t0(linkedHashSet)));
        } else if (originalPageOffsets == null && originalPageOffsets2 != null) {
            originalPageOffsets = originalPageOffsets2;
        } else if (originalPageOffsets == null || originalPageOffsets2 != null) {
            fg.c("Separator page expected adjacentPageBefore or adjacentPageAfter, but both were null.");
            return;
        }
        addSeparatorPage(list, r, originalPageOffsets, i, i2);
    }

    public static final <T extends R, R> hd3<PageEvent<R>> insertEventSeparators(final hd3<? extends PageEvent<T>> hd3Var, TerminalSeparatorType terminalSeparatorType, dm3<? super T, ? super T, ? super e02<? super R>, ? extends Object> dm3Var) {
        hd3Var.getClass();
        terminalSeparatorType.getClass();
        dm3Var.getClass();
        final SeparatorState separatorState = new SeparatorState(terminalSeparatorType, new SeparatorsKt$insertEventSeparators$separatorState$1(dm3Var, null));
        return new hd3<PageEvent<R>>() { // from class: androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1

            /* JADX INFO: renamed from: androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ SeparatorState $separatorState$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2", f = "Separators.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var, SeparatorState separatorState) {
                    this.$this_unsafeFlow = id3Var;
                    this.$separatorState$inlined = separatorState;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
                
                    if (r7.emit(r9, r0) == r1) goto L22;
                 */
                @Override // defpackage.id3
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1 r0 = (androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1 r0 = new androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 0
                        r4 = 2
                        r5 = 1
                        if (r2 == 0) goto L39
                        if (r2 == r5) goto L31
                        if (r2 != r4) goto L2b
                        defpackage.r57.b(r9)
                        goto L5b
                    L2b:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r7)
                        return r3
                    L31:
                        java.lang.Object r7 = r0.L$0
                        id3 r7 = (defpackage.id3) r7
                        defpackage.r57.b(r9)
                        goto L50
                    L39:
                        defpackage.r57.b(r9)
                        id3 r9 = r7.$this_unsafeFlow
                        androidx.paging.PageEvent r8 = (androidx.paging.PageEvent) r8
                        androidx.paging.SeparatorState r7 = r7.$separatorState$inlined
                        r0.L$0 = r9
                        r0.label = r5
                        java.lang.Object r7 = r7.onEvent(r8, r0)
                        if (r7 != r1) goto L4d
                        goto L5a
                    L4d:
                        r6 = r9
                        r9 = r7
                        r7 = r6
                    L50:
                        r0.L$0 = r3
                        r0.label = r4
                        java.lang.Object r7 = r7.emit(r9, r0)
                        if (r7 != r1) goto L5b
                    L5a:
                        return r1
                    L5b:
                        j59 r7 = defpackage.j59.a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorsKt$insertEventSeparators$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = hd3Var.collect(new AnonymousClass2(id3Var, separatorState), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00ca -> B:12:0x003f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final <R, T extends R> java.lang.Object insertInternalSeparators(androidx.paging.TransformablePage<T> r10, defpackage.dm3<? super T, ? super T, ? super defpackage.e02<? super R>, ? extends java.lang.Object> r11, defpackage.e02<? super androidx.paging.TransformablePage<R>> r12) {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorsKt.insertInternalSeparators(androidx.paging.TransformablePage, dm3, e02):java.lang.Object");
    }

    public static final <T> TransformablePage<T> separatorPage(T t, int[] iArr, int i, int i2) {
        t.getClass();
        iArr.getClass();
        return new TransformablePage<>(iArr, u96.h(t), i, u96.h(Integer.valueOf(i2)));
    }

    public static final <T> void addSeparatorPage(List<TransformablePage<T>> list, T t, int[] iArr, int i, int i2) {
        list.getClass();
        iArr.getClass();
        if (t == null) {
            return;
        }
        list.add(separatorPage(t, iArr, i, i2));
    }
}
