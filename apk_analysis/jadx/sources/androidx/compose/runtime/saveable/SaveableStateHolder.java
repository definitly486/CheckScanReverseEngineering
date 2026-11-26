package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public interface SaveableStateHolder {
    void SaveableStateProvider(Object obj, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i);

    void removeState(Object obj);
}
