package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.TextFieldBuffer;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface ImeEditCommandScope {
    boolean beginBatchEdit();

    void edit(nl3<? super TextFieldBuffer, j59> nl3Var);

    boolean endBatchEdit();

    int getTransformedLength();

    /* JADX INFO: renamed from: mapFromTransformed-GEjPoXI */
    long mo2692mapFromTransformedGEjPoXI(long j);

    /* JADX INFO: renamed from: mapToTransformed-GEjPoXI */
    long mo2693mapToTransformedGEjPoXI(long j);
}
