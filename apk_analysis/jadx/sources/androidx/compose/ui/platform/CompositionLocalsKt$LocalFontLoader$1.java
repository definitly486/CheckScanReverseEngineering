package androidx.compose.ui.platform;

import androidx.compose.ui.text.font.Font;
import defpackage.gh4;
import defpackage.ll3;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalsKt$LocalFontLoader$1 extends gh4 implements ll3<Font.ResourceLoader> {
    public static final CompositionLocalsKt$LocalFontLoader$1 INSTANCE = new CompositionLocalsKt$LocalFontLoader$1();

    public CompositionLocalsKt$LocalFontLoader$1() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final Font.ResourceLoader invoke() {
        CompositionLocalsKt.noLocalProvidedFor("LocalFontLoader");
        throw new KotlinNothingValueException();
    }
}
