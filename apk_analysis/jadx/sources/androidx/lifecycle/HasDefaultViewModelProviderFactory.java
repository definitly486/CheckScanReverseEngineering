package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes3.dex */
public interface HasDefaultViewModelProviderFactory {
    default CreationExtras getDefaultViewModelCreationExtras() {
        return CreationExtras.Empty.INSTANCE;
    }

    ViewModelProvider.Factory getDefaultViewModelProviderFactory();
}
