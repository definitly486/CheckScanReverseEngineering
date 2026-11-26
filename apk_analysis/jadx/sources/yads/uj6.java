package yads;

import defpackage.cy6;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class uj6 implements cy6 {
    public WeakReference a;

    public uj6(cd cdVar) {
        this.a = cdVar != null ? new WeakReference(cdVar) : null;
    }

    @Override // defpackage.by6
    public final Object getValue(Object obj, defpackage.ze4 ze4Var) {
        WeakReference weakReference = this.a;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
}
