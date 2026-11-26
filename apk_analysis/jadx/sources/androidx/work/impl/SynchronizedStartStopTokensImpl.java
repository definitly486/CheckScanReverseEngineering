package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class SynchronizedStartStopTokensImpl implements StartStopTokens {
    private final StartStopTokens delegate;
    private final Object lock;

    public SynchronizedStartStopTokensImpl(StartStopTokens startStopTokens) {
        startStopTokens.getClass();
        this.delegate = startStopTokens;
        this.lock = new Object();
    }

    @Override // androidx.work.impl.StartStopTokens
    public boolean contains(WorkGenerationalId workGenerationalId) {
        boolean zContains;
        workGenerationalId.getClass();
        synchronized (this.lock) {
            zContains = this.delegate.contains(workGenerationalId);
        }
        return zContains;
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken remove(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopTokenRemove;
        workGenerationalId.getClass();
        synchronized (this.lock) {
            startStopTokenRemove = this.delegate.remove(workGenerationalId);
        }
        return startStopTokenRemove;
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopToken;
        workGenerationalId.getClass();
        synchronized (this.lock) {
            startStopToken = this.delegate.tokenFor(workGenerationalId);
        }
        return startStopToken;
    }

    @Override // androidx.work.impl.StartStopTokens
    public List<StartStopToken> remove(String str) {
        List<StartStopToken> listRemove;
        str.getClass();
        synchronized (this.lock) {
            listRemove = this.delegate.remove(str);
        }
        return listRemove;
    }
}
