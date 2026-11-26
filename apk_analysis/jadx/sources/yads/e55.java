package yads;

import defpackage.cy6;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class e55 implements cy6 {
    public WeakReference a;

    public e55(Object obj) {
        this.a = new WeakReference(obj);
    }

    @Override // defpackage.by6
    public final Object getValue(Object obj, defpackage.ze4 ze4Var) {
        return this.a.get();
    }
}
