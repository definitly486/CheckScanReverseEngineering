package androidx.work;

import defpackage.d31;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.ne4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class OneTimeWorkRequest extends WorkRequest {
    public static final Companion Companion = new Companion(null);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneTimeWorkRequest(Builder builder) {
        super(builder.getId$work_runtime_release(), builder.getWorkSpec$work_runtime_release(), builder.getTags$work_runtime_release());
        builder.getClass();
    }

    public static final OneTimeWorkRequest from(Class<? extends ListenableWorker> cls) {
        return Companion.from(cls);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<OneTimeWorkRequest> from(List<? extends Class<? extends ListenableWorker>> list) {
            list.getClass();
            List<? extends Class<? extends ListenableWorker>> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new Builder((Class<? extends ListenableWorker>) it.next()).build());
            }
            return arrayList;
        }

        private Companion() {
        }

        public final OneTimeWorkRequest from(Class<? extends ListenableWorker> cls) {
            cls.getClass();
            return new Builder(cls).build();
        }
    }

    public static final class Builder extends WorkRequest.Builder<Builder, OneTimeWorkRequest> {
        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(ne4<? extends ListenableWorker> ne4Var) {
            this((Class<? extends ListenableWorker>) d31.n(ne4Var));
            ne4Var.getClass();
        }

        @Override // androidx.work.WorkRequest.Builder
        public OneTimeWorkRequest buildInternal$work_runtime_release() {
            if (!getBackoffCriteriaSet$work_runtime_release() || !getWorkSpec$work_runtime_release().constraints.requiresDeviceIdle()) {
                return new OneTimeWorkRequest(this);
            }
            fg.c("Cannot set backoff criteria on an idle mode job");
            return null;
        }

        public final Builder setInputMerger(Class<? extends InputMerger> cls) {
            cls.getClass();
            getWorkSpec$work_runtime_release().inputMergerClassName = cls.getName();
            return this;
        }

        @Override // androidx.work.WorkRequest.Builder
        public Builder getThisObject$work_runtime_release() {
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(Class<? extends ListenableWorker> cls) {
            super(cls);
            cls.getClass();
        }
    }

    public static final List<OneTimeWorkRequest> from(List<? extends Class<? extends ListenableWorker>> list) {
        return Companion.from(list);
    }
}
