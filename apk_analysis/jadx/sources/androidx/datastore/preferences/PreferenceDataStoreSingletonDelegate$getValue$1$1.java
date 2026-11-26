package androidx.datastore.preferences;

import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate$getValue$1$1 extends gh4 implements ll3<File> {
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ PreferenceDataStoreSingletonDelegate this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceDataStoreSingletonDelegate$getValue$1$1(Context context, PreferenceDataStoreSingletonDelegate preferenceDataStoreSingletonDelegate) {
        super(0);
        this.$applicationContext = context;
        this.this$0 = preferenceDataStoreSingletonDelegate;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final File invoke() {
        Context context = this.$applicationContext;
        context.getClass();
        return PreferenceDataStoreFile.preferencesDataStoreFile(context, this.this$0.name);
    }
}
