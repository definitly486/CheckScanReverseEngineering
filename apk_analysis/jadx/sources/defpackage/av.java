package defpackage;

import android.os.Bundle;
import androidx.compose.runtime.ComposerKt;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import java.io.IOException;
import kotlin.KotlinNothingValueException;
import yads.hs1;
import yads.j04;
import yads.jv;
import yads.kv;
import yads.l66;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class av implements ListenerSet.Event, l66, jv {
    public static KotlinNothingValueException b(String str) {
        ComposerKt.composeRuntimeError(str);
        return new KotlinNothingValueException();
    }

    public static /* synthetic */ void c(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void d(String str, double d) {
        throw new IllegalArgumentException(str + d);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return hs1.c(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AudioOutputProvider.Listener) obj).onFormatSupportChanged();
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return j04.a(bundle);
    }
}
