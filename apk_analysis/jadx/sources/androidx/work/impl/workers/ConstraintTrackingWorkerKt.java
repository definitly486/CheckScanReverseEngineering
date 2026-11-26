package androidx.work.impl.workers;

import androidx.media3.muxer.WebmConstants;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ue3;

/* JADX INFO: loaded from: classes3.dex */
public final class ConstraintTrackingWorkerKt {
    public static final String ARGUMENT_CLASS_NAME = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME";
    private static final String TAG;

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt", f = "ConstraintTrackingWorker.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "awaitConstraintsNotMet")
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
            return ConstraintTrackingWorkerKt.awaitConstraintsNotMet(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2, reason: invalid class name */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2", f = "ConstraintTrackingWorker.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<ConstraintsState, e02<? super j59>, Object> {
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(WorkSpec workSpec, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$workSpec = workSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$workSpec, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(ConstraintsState constraintsState, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(constraintsState, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            String str = ConstraintTrackingWorkerKt.TAG;
            WorkSpec workSpec = this.$workSpec;
            Logger.get().debug(str, "Constraints changed for " + workSpec);
            return j59.a;
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("ConstraintTrkngWrkr");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object awaitConstraintsNotMet(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, e02<? super Integer> e02Var) {
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
        Object objA = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objA);
            final df3 df3Var = new df3(workConstraintsTracker.track(workSpec), new AnonymousClass2(workSpec, null));
            hd3<Object> hd3Var = new hd3<Object>() { // from class: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1

                /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2, reason: invalid class name */
                public static final class AnonymousClass2<T> implements id3 {
                    final /* synthetic */ id3 $this_unsafeFlow;

                    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2", f = "ConstraintTrackingWorker.kt", l = {50}, m = "emit")
                    public static final class AnonymousClass1 extends f02 {
                        Object L$0;
                        Object L$1;
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

                    public AnonymousClass2(id3 id3Var) {
                        this.$this_unsafeFlow = id3Var;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // defpackage.id3
                    public final Object emit(Object obj, e02 e02Var) {
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
                        Object obj2 = anonymousClass1.result;
                        a32 a32Var = a32.COROUTINE_SUSPENDED;
                        int i2 = anonymousClass1.label;
                        if (i2 == 0) {
                            r57.b(obj2);
                            id3 id3Var = this.$this_unsafeFlow;
                            if (obj instanceof ConstraintsState.ConstraintsNotMet) {
                                anonymousClass1.label = 1;
                                if (id3Var.emit(obj, anonymousClass1) == a32Var) {
                                    return a32Var;
                                }
                            }
                        } else {
                            if (i2 != 1) {
                                ah.f("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            r57.b(obj2);
                        }
                        return j59.a;
                    }
                }

                @Override // defpackage.hd3
                public Object collect(id3<? super Object> id3Var, e02 e02Var2) {
                    Object objCollect = df3Var.collect(new AnonymousClass2(id3Var), e02Var2);
                    return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
                }
            };
            anonymousClass1.label = 1;
            objA = ue3.a(hd3Var, anonymousClass1);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        return new Integer(((ConstraintsState.ConstraintsNotMet) objA).getReason());
    }
}
