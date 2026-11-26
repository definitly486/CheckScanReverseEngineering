package androidx.savedstate;

import android.os.Bundle;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class SavedStateKt__SavedStateKt {
    public static final <T> T read(Bundle bundle, nl3<? super SavedStateReader, ? extends T> nl3Var) {
        bundle.getClass();
        nl3Var.getClass();
        return nl3Var.invoke(SavedStateReader.m9369boximpl(SavedStateReader.m9370constructorimpl(bundle)));
    }

    public static final <T> T write(Bundle bundle, nl3<? super SavedStateWriter, ? extends T> nl3Var) {
        bundle.getClass();
        nl3Var.getClass();
        return nl3Var.invoke(SavedStateWriter.m9454boximpl(SavedStateWriter.m9456constructorimpl(bundle)));
    }
}
