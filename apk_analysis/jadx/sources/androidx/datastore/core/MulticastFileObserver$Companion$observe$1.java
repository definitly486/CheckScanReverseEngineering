package androidx.datastore.core;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.hp2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.ug6;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", f = "MulticastFileObserver.android.kt", l = {84, 85}, m = "invokeSuspend")
public final class MulticastFileObserver$Companion$observe$1 extends pg8 implements bm3<ug6<? super j59>, e02<? super j59>, Object> {
    final /* synthetic */ File $file;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MulticastFileObserver$Companion$observe$1(File file, e02<? super MulticastFileObserver$Companion$observe$1> e02Var) {
        super(2, e02Var);
        this.$file = file;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, e02Var);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(ug6<? super j59> ug6Var, e02<? super j59> e02Var) {
        return ((MulticastFileObserver$Companion$observe$1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
    
        if (defpackage.sg6.a(r4, r8, r7) == r0) goto L16;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L23
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r8)
            goto L62
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L17:
            java.lang.Object r1 = r7.L$1
            hp2 r1 = (defpackage.hp2) r1
            java.lang.Object r4 = r7.L$0
            ug6 r4 = (defpackage.ug6) r4
            defpackage.r57.b(r8)
            goto L50
        L23:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            ug6 r8 = (defpackage.ug6) r8
            androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1 r1 = new androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1
            java.io.File r5 = r7.$file
            r1.<init>(r5, r8)
            androidx.datastore.core.MulticastFileObserver$Companion r5 = androidx.datastore.core.MulticastFileObserver.Companion
            java.io.File r6 = r7.$file
            java.io.File r6 = r6.getParentFile()
            r6.getClass()
            hp2 r1 = androidx.datastore.core.MulticastFileObserver.Companion.access$observe(r5, r6, r1)
            j59 r5 = defpackage.j59.a
            r7.L$0 = r8
            r7.L$1 = r1
            r7.label = r4
            java.lang.Object r4 = r8.send(r5, r7)
            if (r4 != r0) goto L4f
            goto L61
        L4f:
            r4 = r8
        L50:
            androidx.datastore.core.MulticastFileObserver$Companion$observe$1$1 r8 = new androidx.datastore.core.MulticastFileObserver$Companion$observe$1$1
            r8.<init>(r1)
            r7.L$0 = r2
            r7.L$1 = r2
            r7.label = r3
            java.lang.Object r7 = defpackage.sg6.a(r4, r8, r7)
            if (r7 != r0) goto L62
        L61:
            return r0
        L62:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.MulticastFileObserver$Companion$observe$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ hp2 $disposeListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(hp2 hp2Var) {
            super(0);
            this.$disposeListener = hp2Var;
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$disposeListener.dispose();
        }
    }
}
