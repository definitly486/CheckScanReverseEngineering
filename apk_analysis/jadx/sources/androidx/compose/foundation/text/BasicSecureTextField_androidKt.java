package androidx.compose.foundation.text;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import androidx.compose.foundation.text.BasicSecureTextField_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.os.HandlerCompat;
import defpackage.nl3;
import defpackage.we;

/* JADX INFO: loaded from: classes.dex */
public final class BasicSecureTextField_androidKt {
    private static final nl3<Context, ContentResolverForSecureTextField> DefaultContentResolverForSecureTextField;
    private static final String TAG = "BasicSecureTextField";
    private static nl3<? super Context, ? extends ContentResolverForSecureTextField> contentResolverForSecureTextField;

    static {
        we weVar = new we(1);
        DefaultContentResolverForSecureTextField = weVar;
        contentResolverForSecureTextField = weVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1] */
    public static final BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1 DefaultContentResolverForSecureTextField$lambda$0(Context context) {
        final ContentResolver contentResolver = context.getContentResolver();
        return new ContentResolverForSecureTextField() { // from class: androidx.compose.foundation.text.BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1
            @Override // androidx.compose.foundation.text.ContentResolverForSecureTextField
            public boolean getShowPassword() {
                try {
                    return Settings.System.getInt(contentResolver, "show_password") > 0;
                } catch (Exception e) {
                    Log.w("BasicSecureTextField", "Failed to fetch show password setting, using value: true", e);
                    return true;
                }
            }

            @Override // androidx.compose.foundation.text.ContentResolverForSecureTextField
            public void registerContentObserver(Uri uri, boolean z, ContentObserver contentObserver) {
                contentResolver.registerContentObserver(uri, z, contentObserver);
            }

            @Override // androidx.compose.foundation.text.ContentResolverForSecureTextField
            public void unregisterContentObserver(ContentObserver contentObserver) {
                contentResolver.unregisterContentObserver(contentObserver);
            }
        };
    }

    public static final nl3<Context, ContentResolverForSecureTextField> getContentResolverForSecureTextField() {
        return contentResolverForSecureTextField;
    }

    public static /* synthetic */ void getContentResolverForSecureTextField$annotations() {
    }

    public static final boolean platformAllowsRevealLastTyped(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1015272320, i, -1, "androidx.compose.foundation.text.platformAllowsRevealLastTyped (BasicSecureTextField.android.kt:38)");
        }
        Object obj = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        Object obj2 = contentResolverForSecureTextField;
        boolean zChanged = composer.changed(obj2) | composer.changed(obj);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = (ContentResolverForSecureTextField) contentResolverForSecureTextField.invoke(obj);
            composer.updateRememberedValue(objRememberedValue);
        }
        final ContentResolverForSecureTextField contentResolverForSecureTextField2 = (ContentResolverForSecureTextField) objRememberedValue;
        boolean zChanged2 = composer.changed(contentResolverForSecureTextField2);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(contentResolverForSecureTextField2.getShowPassword()), null, 2, null);
            composer.updateRememberedValue(objRememberedValue2);
        }
        final MutableState mutableState = (MutableState) objRememberedValue2;
        boolean zChanged3 = composer.changed(contentResolverForSecureTextField2);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChanged3 || objRememberedValue3 == Composer.Companion.getEmpty()) {
            final Handler handlerCreateAsync = HandlerCompat.createAsync(Looper.getMainLooper());
            objRememberedValue3 = new ContentObserver(handlerCreateAsync) { // from class: androidx.compose.foundation.text.BasicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    BasicSecureTextField_androidKt.platformAllowsRevealLastTyped$lambda$3(mutableState, contentResolverForSecureTextField2.getShowPassword());
                }
            };
            composer.updateRememberedValue(objRememberedValue3);
        }
        final BasicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1 basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1 = (BasicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1) objRememberedValue3;
        boolean zChangedInstance = composer.changedInstance(contentResolverForSecureTextField2) | composer.changedInstance(basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue4 == Composer.Companion.getEmpty()) {
            objRememberedValue4 = new nl3() { // from class: jf0
                @Override // defpackage.nl3
                public final Object invoke(Object obj3) {
                    return BasicSecureTextField_androidKt.platformAllowsRevealLastTyped$lambda$5$0(contentResolverForSecureTextField2, basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1, (DisposableEffectScope) obj3);
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        EffectsKt.DisposableEffect(contentResolverForSecureTextField2, basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1, (nl3) objRememberedValue4, composer, 0);
        boolean zPlatformAllowsRevealLastTyped$lambda$2 = platformAllowsRevealLastTyped$lambda$2(mutableState);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return zPlatformAllowsRevealLastTyped$lambda$2;
    }

    private static final boolean platformAllowsRevealLastTyped$lambda$2(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void platformAllowsRevealLastTyped$lambda$3(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult platformAllowsRevealLastTyped$lambda$5$0(final ContentResolverForSecureTextField contentResolverForSecureTextField2, final BasicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1 basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1, DisposableEffectScope disposableEffectScope) {
        contentResolverForSecureTextField2.registerContentObserver(Settings.System.getUriFor("show_password"), false, basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1);
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.BasicSecureTextField_androidKt$platformAllowsRevealLastTyped$lambda$5$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                contentResolverForSecureTextField2.unregisterContentObserver(basicSecureTextField_androidKt$platformAllowsRevealLastTyped$settingsObserver$1$1);
            }
        };
    }

    public static final void resetContentResolverForSecureTextField() {
        contentResolverForSecureTextField = DefaultContentResolverForSecureTextField;
    }

    public static final void setContentResolverForSecureTextField(nl3<? super Context, ? extends ContentResolverForSecureTextField> nl3Var) {
        contentResolverForSecureTextField = nl3Var;
    }
}
