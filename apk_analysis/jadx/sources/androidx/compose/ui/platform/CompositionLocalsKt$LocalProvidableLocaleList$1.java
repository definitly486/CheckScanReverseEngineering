package androidx.compose.ui.platform;

import androidx.compose.ui.text.intl.LocaleList;
import defpackage.gh4;
import defpackage.ll3;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalsKt$LocalProvidableLocaleList$1 extends gh4 implements ll3<LocaleList> {
    public static final CompositionLocalsKt$LocalProvidableLocaleList$1 INSTANCE = new CompositionLocalsKt$LocalProvidableLocaleList$1();

    public CompositionLocalsKt$LocalProvidableLocaleList$1() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final LocaleList invoke() {
        CompositionLocalsKt.noLocalProvidedFor("LocalProvidableLocaleList");
        throw new KotlinNothingValueException();
    }
}
