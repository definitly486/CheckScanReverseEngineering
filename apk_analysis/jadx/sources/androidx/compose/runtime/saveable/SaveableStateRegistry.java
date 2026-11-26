package androidx.compose.runtime.saveable;

import defpackage.ll3;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface SaveableStateRegistry {

    public interface Entry {
        void unregister();
    }

    boolean canBeSaved(Object obj);

    Object consumeRestored(String str);

    Map<String, List<Object>> performSave();

    Entry registerProvider(String str, ll3<? extends Object> ll3Var);
}
