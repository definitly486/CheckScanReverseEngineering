package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final class te3 implements id3<Object> {
    public final /* synthetic */ r07 b;

    public te3(r07 r07Var) {
        this.b = r07Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.id3
    public final Object emit(Object obj, e02<? super j59> e02Var) {
        this.b.b = obj;
        throw new AbortFlowException(this);
    }
}
