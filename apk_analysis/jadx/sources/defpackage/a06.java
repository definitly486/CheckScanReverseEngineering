package defpackage;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.OptionsBundle;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a06 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return OptionsBundle.lambda$static$0((Config.Option) obj, (Config.Option) obj2);
    }
}
