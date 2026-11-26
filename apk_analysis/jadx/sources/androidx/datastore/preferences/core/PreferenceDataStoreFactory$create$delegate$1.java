package androidx.datastore.preferences.core;

import defpackage.gh4;
import defpackage.ll3;
import defpackage.ta8;
import defpackage.wg;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreFactory$create$delegate$1 extends gh4 implements ll3<File> {
    final /* synthetic */ ll3<File> $produceFile;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PreferenceDataStoreFactory$create$delegate$1(ll3<? extends File> ll3Var) {
        super(0);
        this.$produceFile = ll3Var;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final File invoke() {
        File fileInvoke = this.$produceFile.invoke();
        fileInvoke.getClass();
        String name = fileInvoke.getName();
        name.getClass();
        if (!ta8.b0('.', name, "").equals("preferences_pb")) {
            wg.c(fileInvoke, "File extension for file: ", " does not match required extension for Preferences file: preferences_pb");
            return null;
        }
        File absoluteFile = fileInvoke.getAbsoluteFile();
        absoluteFile.getClass();
        return absoluteFile;
    }
}
