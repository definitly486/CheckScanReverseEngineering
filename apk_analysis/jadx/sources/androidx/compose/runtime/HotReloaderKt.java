package androidx.compose.runtime;

import defpackage.b36;
import defpackage.kn1;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class HotReloaderKt {
    public static final void clearCompositionErrors() {
        HotReloader.Companion.clearErrors();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ul2
    public static final List<b36<Exception, Boolean>> currentCompositionErrors() {
        List<b36<Throwable, Boolean>> currentCompositionErrors = getCurrentCompositionErrors();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = currentCompositionErrors.iterator();
        while (it.hasNext()) {
            b36 b36Var = (b36) it.next();
            Throwable th = (Throwable) b36Var.b;
            Boolean bool = (Boolean) b36Var.c;
            bool.booleanValue();
            Exception exc = th instanceof Exception ? (Exception) th : null;
            b36 b36Var2 = exc != null ? new b36(exc, bool) : null;
            if (b36Var2 != null) {
                arrayList.add(b36Var2);
            }
        }
        return arrayList;
    }

    public static final void disableHotReloadMode() {
        Recomposer.Companion.setHotReloadEnabled$runtime(false);
    }

    public static final List<b36<Throwable, Boolean>> getCurrentCompositionErrors() {
        List<RecomposerErrorInformation> recomposerErrors = HotReloader.Companion.getRecomposerErrors();
        ArrayList arrayList = new ArrayList(kn1.q(recomposerErrors, 10));
        for (RecomposerErrorInformation recomposerErrorInformation : recomposerErrors) {
            arrayList.add(new b36(recomposerErrorInformation.getCause(), Boolean.valueOf(recomposerErrorInformation.isRecoverable())));
        }
        return arrayList;
    }

    public static final void invalidateGroupsWithKey(int i) {
        HotReloader.Companion.invalidateGroupsWithKey(i);
    }

    public static final void simulateHotReload(Object obj) {
        HotReloader.Companion.simulateHotReload$runtime(obj);
    }
}
