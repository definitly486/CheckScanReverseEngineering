package androidx.savedstate;

import android.os.Bundle;
import defpackage.j59;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateKt {
    public static final <T> T read(Bundle bundle, nl3<? super SavedStateReader, ? extends T> nl3Var) {
        return (T) SavedStateKt__SavedStateKt.read(bundle, nl3Var);
    }

    public static final Bundle savedState(Bundle bundle, nl3<? super SavedStateWriter, j59> nl3Var) {
        return SavedStateKt__SavedState_androidKt.savedState(bundle, nl3Var);
    }

    public static final <T> T write(Bundle bundle, nl3<? super SavedStateWriter, ? extends T> nl3Var) {
        return (T) SavedStateKt__SavedStateKt.write(bundle, nl3Var);
    }

    public static final Bundle savedState(Map<String, ? extends Object> map, nl3<? super SavedStateWriter, j59> nl3Var) {
        return SavedStateKt__SavedState_androidKt.savedState(map, nl3Var);
    }
}
