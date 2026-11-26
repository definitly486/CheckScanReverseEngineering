package androidx.compose.runtime.retain;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.b11;
import defpackage.f80;
import defpackage.h67;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.uj;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RetainedEffectKt {
    private static final RetainedEffectScope InternalRetainedEffectScope = new RetainedEffectScope();
    private static final String RetainedEffectNoParamError = "RetainedEffect must provide one or more 'key' parameters that define the identity of the RetainedEffect and determine when its previous effect should be disposed and a new effect started for the new key.";

    public static final void RetainedEffect(Object obj, nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(45580315, i, -1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:138)");
        }
        Object[] objArr = {obj};
        boolean z = (((i & 112) ^ 48) > 32 && composer.changed(nl3Var)) || (i & 48) == 32;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new f80(nl3Var, 5);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainKt.retain(1776543431, Arrays.copyOf(objArr, 1), (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainedEffectImpl RetainedEffect$lambda$0$0(nl3 nl3Var) {
        return new RetainedEffectImpl(nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainedEffectImpl RetainedEffect$lambda$1$0(nl3 nl3Var) {
        return new RetainedEffectImpl(nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainedEffectImpl RetainedEffect$lambda$2$0(nl3 nl3Var) {
        return new RetainedEffectImpl(nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RetainedEffectImpl RetainedEffect$lambda$3$0(nl3 nl3Var) {
        return new RetainedEffectImpl(nl3Var);
    }

    @ul2
    public static final void RetainedEffect(nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(829391227, i, -1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:87)");
        }
        throw new IllegalStateException(RetainedEffectNoParamError);
    }

    public static final void RetainedEffect(Object obj, Object obj2, nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-593547589, i, -1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:190)");
        }
        Object[] objArr = {obj, obj2};
        boolean z = (((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(nl3Var)) || (i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new uj(nl3Var, 6);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainKt.retain(1776543431, Arrays.copyOf(objArr, 2), (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void RetainedEffect(Object obj, Object obj2, Object obj3, nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(130977115, i, -1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:243)");
        }
        Object[] objArr = {obj, obj2, obj3};
        boolean z = (((i & 7168) ^ 3072) > 2048 && composer.changed(nl3Var)) || (i & 3072) == 2048;
        Object objRememberedValue = composer.rememberedValue();
        int i2 = 3;
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new b11(nl3Var, i2);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainKt.retain(1776543431, Arrays.copyOf(objArr, 3), (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void RetainedEffect(Object[] objArr, nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(712993160, i, -1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:293)");
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        int i2 = 0;
        boolean z = (((i & 112) ^ 48) > 32 && composer.changed(nl3Var)) || (i & 48) == 32;
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new h67(nl3Var, i2);
            composer.updateRememberedValue(objRememberedValue);
        }
        RetainKt.retain(1776543431, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length), (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
