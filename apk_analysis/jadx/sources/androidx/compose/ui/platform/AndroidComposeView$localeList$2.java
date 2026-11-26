package androidx.compose.ui.platform;

import androidx.compose.ui.text.intl.LocaleList;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import defpackage.gh4;
import defpackage.ll3;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$localeList$2 extends gh4 implements ll3<LocaleList> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$localeList$2(AndroidComposeView androidComposeView) {
        super(0);
        this.this$0 = androidComposeView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final LocaleList invoke() {
        LocaleListCompat locales = ConfigurationCompat.getLocales(this.this$0.getConfiguration());
        if (locales.isEmpty()) {
            locales = LocaleListCompat.getDefault();
        }
        int size = locales.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            Locale locale = locales.get(i);
            locale.getClass();
            arrayList.add(new androidx.compose.ui.text.intl.Locale(locale));
        }
        return new LocaleList(arrayList);
    }
}
