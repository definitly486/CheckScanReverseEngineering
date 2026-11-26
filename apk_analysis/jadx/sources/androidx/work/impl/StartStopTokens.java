package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface StartStopTokens {
    public static final Companion Companion = Companion.$$INSTANCE;

    static StartStopTokens create() {
        return Companion.create();
    }

    boolean contains(WorkGenerationalId workGenerationalId);

    StartStopToken remove(WorkGenerationalId workGenerationalId);

    default StartStopToken remove(WorkSpec workSpec) {
        workSpec.getClass();
        return remove(WorkSpecKt.generationalId(workSpec));
    }

    List<StartStopToken> remove(String str);

    StartStopToken tokenFor(WorkGenerationalId workGenerationalId);

    default StartStopToken tokenFor(WorkSpec workSpec) {
        workSpec.getClass();
        return tokenFor(WorkSpecKt.generationalId(workSpec));
    }

    static StartStopTokens create(boolean z) {
        return Companion.create(z);
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ StartStopTokens create$default(Companion companion, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = true;
            }
            return companion.create(z);
        }

        public final StartStopTokens create(boolean z) {
            StartStopTokensImpl startStopTokensImpl = new StartStopTokensImpl();
            return z ? new SynchronizedStartStopTokensImpl(startStopTokensImpl) : startStopTokensImpl;
        }

        public final StartStopTokens create() {
            return create$default(this, false, 1, null);
        }
    }
}
