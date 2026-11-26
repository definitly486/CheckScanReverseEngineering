package androidx.compose.foundation.gestures;

import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.cp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s68;
import defpackage.x81;
import defpackage.y22;
import defpackage.z22;
import defpackage.zo7;

/* JADX INFO: loaded from: classes.dex */
public final class NonTouchScrollingLogicKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$busyReceive$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$busyReceive$2", f = "NonTouchScrollingLogic.kt", l = {80}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ x81<T> $this_busyReceive;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(x81<T> x81Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_busyReceive = x81Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_busyReceive, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            Throwable th;
            mb4 mb4Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mb4Var = (mb4) this.L$0;
                try {
                    r57.b(obj);
                    mb4Var.cancel(null);
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    mb4Var.cancel(null);
                    throw th;
                }
            }
            r57.b(obj);
            s68 s68VarC = av0.c((y22) this.L$0, null, null, new NonTouchScrollingLogicKt$busyReceive$2$job$1(null), 3);
            try {
                x81<T> x81Var = this.$this_busyReceive;
                this.L$0 = s68VarC;
                this.label = 1;
                Object objB = x81Var.b(this);
                if (objB == a32Var) {
                    return a32Var;
                }
                obj = objB;
                mb4Var = s68VarC;
                mb4Var.cancel(null);
                return obj;
            } catch (Throwable th3) {
                th = th3;
                mb4Var = s68VarC;
                mb4Var.cancel(null);
                throw th;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$untilNull$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$untilNull$1", f = "NonTouchScrollingLogic.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<E> extends f57 implements bm3<bp7<? super E>, e02<? super j59>, Object> {
        final /* synthetic */ ll3<E> $builderAction;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(ll3<? extends E> ll3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$builderAction = ll3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$builderAction, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super E> bp7Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x002a  */
        /* JADX WARN: Code duplicated, block: B:13:0x0036 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x0037  */
        /* JADX WARN: Code duplicated, block: B:16:0x003a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:15:0x0038). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0037 -> B:15:0x0038). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:16:0x003a
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L1a
                if (r1 != r3) goto L14
                java.lang.Object r1 = r5.L$1
                java.lang.Object r4 = r5.L$0
                bp7 r4 = (defpackage.bp7) r4
                defpackage.r57.b(r6)
                goto L38
            L14:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r5)
                return r2
            L1a:
                defpackage.r57.b(r6)
                java.lang.Object r6 = r5.L$0
                bp7 r6 = (defpackage.bp7) r6
                r4 = r6
            L22:
                ll3<E> r6 = r5.$builderAction
                java.lang.Object r1 = r6.invoke()
                if (r1 == 0) goto L37
                r5.L$0 = r4
                r5.L$1 = r1
                r5.label = r3
                a32 r6 = r4.a(r5, r1)
                if (r6 != r0) goto L38
                return r0
            L37:
                r1 = r2
            L38:
                if (r1 != 0) goto L22
                j59 r5 = defpackage.j59.a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.NonTouchScrollingLogicKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final <T> Object busyReceive(x81<T> x81Var, e02<? super T> e02Var) {
        return z22.c(new AnonymousClass2(x81Var, null), e02Var);
    }

    public static final <E> zo7<E> untilNull(ll3<? extends E> ll3Var) {
        return new cp7(new AnonymousClass1(ll3Var, null));
    }
}
