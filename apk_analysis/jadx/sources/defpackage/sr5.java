package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class sr5<V> implements cy6<Object, V> {
    private V value;

    public sr5(V v) {
        this.value = v;
    }

    public abstract void afterChange(ze4<?> ze4Var, V v, V v2);

    public boolean beforeChange(ze4<?> ze4Var, V v, V v2) {
        ze4Var.getClass();
        return true;
    }

    @Override // defpackage.by6
    public V getValue(Object obj, ze4<?> ze4Var) {
        ze4Var.getClass();
        return this.value;
    }

    public void setValue(Object obj, ze4<?> ze4Var, V v) {
        ze4Var.getClass();
        V v2 = this.value;
        if (beforeChange(ze4Var, v2, v)) {
            this.value = v;
            afterChange(ze4Var, v2, v);
        }
    }

    public String toString() {
        return vg.d(new StringBuilder("ObservableProperty(value="), this.value, ')');
    }
}
