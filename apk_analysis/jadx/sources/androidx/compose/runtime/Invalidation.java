package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
final class Invalidation {
    private Object instances;
    private int location;
    private final RecomposeScopeImpl scope;

    public Invalidation(RecomposeScopeImpl recomposeScopeImpl, int i, Object obj) {
        this.scope = recomposeScopeImpl;
        this.location = i;
        this.instances = obj;
    }

    public final Object getInstances() {
        return this.instances;
    }

    public final int getLocation() {
        return this.location;
    }

    public final RecomposeScopeImpl getScope() {
        return this.scope;
    }

    public final boolean isInvalid() {
        return this.scope.isInvalidFor(this.instances);
    }

    public final void setInstances(Object obj) {
        this.instances = obj;
    }

    public final void setLocation(int i) {
        this.location = i;
    }
}
