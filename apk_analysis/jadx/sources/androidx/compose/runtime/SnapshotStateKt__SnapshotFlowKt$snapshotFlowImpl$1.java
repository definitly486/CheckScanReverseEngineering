package androidx.compose.runtime;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1", f = "SnapshotFlow.kt", l = {476, 479, 484}, m = "invokeSuspend", v = 1)
public final class SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1<T> extends pg8 implements bm3<id3<? super T>, e02<? super j59>, Object> {
    final /* synthetic */ ll3<T> $block;
    final /* synthetic */ SnapshotFlowManager $externalManager;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(SnapshotFlowManager snapshotFlowManager, ll3<? extends T> ll3Var, e02<? super SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1> e02Var) {
        super(2, e02Var);
        this.$externalManager = snapshotFlowManager;
        this.$block = ll3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(this.$externalManager, this.$block, e02Var);
        snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super T> id3Var, e02<? super j59> e02Var) {
        return ((SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x007c A[Catch: all -> 0x0022, PHI: r1 r4 r5 r6
      0x007c: PHI (r1v5 java.lang.Object) = (r1v4 java.lang.Object), (r1v9 java.lang.Object) binds: [B:26:0x0079, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x007c: PHI (r4v5 x81) = (r4v4 x81), (r4v9 x81) binds: [B:26:0x0079, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x007c: PHI (r5v7 ??) = (r5v12 ??), (r5v13 ??) binds: [B:26:0x0079, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x007c: PHI (r6v3 ??) = (r6v8 ??), (r6v9 ??) binds: [B:26:0x0079, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0022, blocks: (B:15:0x0039, B:28:0x007c, B:25:0x006b, B:30:0x0088, B:8:0x001e), top: B:40:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0088 A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #0 {all -> 0x0022, blocks: (B:15:0x0039, B:28:0x007c, B:25:0x006b, B:30:0x0088, B:8:0x001e), top: B:40:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0099  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.runtime.SnapshotFlowManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [id3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [id3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0086 -> B:25:0x006b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0099 -> B:25:0x006b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L3d
            if (r1 == r5) goto L10
            if (r1 == r3) goto L2b
            if (r1 != r2) goto L25
        L10:
            java.lang.Object r1 = r8.L$3
            java.lang.Object r4 = r8.L$2
            x81 r4 = (defpackage.x81) r4
            java.lang.Object r5 = r8.L$1
            androidx.compose.runtime.SnapshotFlowManager r5 = (androidx.compose.runtime.SnapshotFlowManager) r5
            java.lang.Object r6 = r8.L$0
            id3 r6 = (defpackage.id3) r6
            defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L22
            goto L6b
        L22:
            r9 = move-exception
            goto L9e
        L25:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            return r4
        L2b:
            java.lang.Object r1 = r8.L$3
            java.lang.Object r4 = r8.L$2
            x81 r4 = (defpackage.x81) r4
            java.lang.Object r5 = r8.L$1
            androidx.compose.runtime.SnapshotFlowManager r5 = (androidx.compose.runtime.SnapshotFlowManager) r5
            java.lang.Object r6 = r8.L$0
            id3 r6 = (defpackage.id3) r6
            defpackage.r57.b(r9)     // Catch: java.lang.Throwable -> L22
            goto L7c
        L3d:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.L$0
            r6 = r9
            id3 r6 = (defpackage.id3) r6
            androidx.compose.runtime.SnapshotFlowManager r9 = r8.$externalManager
            if (r9 != 0) goto L4e
            androidx.compose.runtime.SnapshotFlowManager r9 = new androidx.compose.runtime.SnapshotFlowManager
            r9.<init>()
        L4e:
            r1 = 6
            mu0 r4 = defpackage.l91.a(r5, r4, r4, r1)
            ll3<T> r1 = r8.$block     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r1 = r9.runAndWatch$runtime(r4, r1)     // Catch: java.lang.Throwable -> L9b
            r8.L$0 = r6     // Catch: java.lang.Throwable -> L9b
            r8.L$1 = r9     // Catch: java.lang.Throwable -> L9b
            r8.L$2 = r4     // Catch: java.lang.Throwable -> L9b
            r8.L$3 = r1     // Catch: java.lang.Throwable -> L9b
            r8.label = r5     // Catch: java.lang.Throwable -> L9b
            java.lang.Object r5 = r6.emit(r1, r8)     // Catch: java.lang.Throwable -> L9b
            if (r5 != r0) goto L6a
            goto L98
        L6a:
            r5 = r9
        L6b:
            r8.L$0 = r6     // Catch: java.lang.Throwable -> L22
            r8.L$1 = r5     // Catch: java.lang.Throwable -> L22
            r8.L$2 = r4     // Catch: java.lang.Throwable -> L22
            r8.L$3 = r1     // Catch: java.lang.Throwable -> L22
            r8.label = r3     // Catch: java.lang.Throwable -> L22
            java.lang.Object r9 = r4.b(r8)     // Catch: java.lang.Throwable -> L22
            if (r9 != r0) goto L7c
            goto L98
        L7c:
            ll3<T> r9 = r8.$block     // Catch: java.lang.Throwable -> L22
            java.lang.Object r9 = r5.runAndWatch$runtime(r4, r9)     // Catch: java.lang.Throwable -> L22
            boolean r7 = defpackage.aa4.e(r9, r1)     // Catch: java.lang.Throwable -> L22
            if (r7 != 0) goto L6b
            r8.L$0 = r6     // Catch: java.lang.Throwable -> L22
            r8.L$1 = r5     // Catch: java.lang.Throwable -> L22
            r8.L$2 = r4     // Catch: java.lang.Throwable -> L22
            r8.L$3 = r9     // Catch: java.lang.Throwable -> L22
            r8.label = r2     // Catch: java.lang.Throwable -> L22
            java.lang.Object r1 = r6.emit(r9, r8)     // Catch: java.lang.Throwable -> L22
            if (r1 != r0) goto L99
        L98:
            return r0
        L99:
            r1 = r9
            goto L6b
        L9b:
            r0 = move-exception
            r5 = r9
            r9 = r0
        L9e:
            r5.reportSnapshotFlowCancellation$runtime(r4)
            androidx.compose.runtime.SnapshotFlowManager r8 = r8.$externalManager
            if (r8 != 0) goto La8
            r5.dispose()
        La8:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
