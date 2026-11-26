package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.GraphicsContext;
import defpackage.gh4;
import defpackage.ll3;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalsKt$LocalGraphicsContext$1 extends gh4 implements ll3<GraphicsContext> {
    public static final CompositionLocalsKt$LocalGraphicsContext$1 INSTANCE = new CompositionLocalsKt$LocalGraphicsContext$1();

    public CompositionLocalsKt$LocalGraphicsContext$1() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final GraphicsContext invoke() {
        CompositionLocalsKt.noLocalProvidedFor("LocalGraphicsContext");
        throw new KotlinNothingValueException();
    }
}
