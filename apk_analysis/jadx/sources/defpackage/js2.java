package defpackage;

import android.graphics.drawable.AnimatedImageDrawable;
import android.os.Bundle;
import androidx.camera.camera2.pipe.FrameReference;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.compose.runtime.Composer;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import java.lang.reflect.Constructor;
import yads.dd0;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.s92;
import yads.vz2;
import yads.xk0;
import yads.zk0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class js2 implements FrameDistributor.FrameStartedListener, ListenerSet.Event, l66, jv, dd0, xk0 {
    public static String b(StringBuilder sb, float f, char c) {
        sb.append(f);
        sb.append(c);
        return sb.toString();
    }

    public static /* synthetic */ void c(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static void d(bm3 bm3Var, Composer composer, int i) {
        bm3Var.invoke(composer, Integer.valueOf(i));
        composer.endNode();
        composer.endReplaceGroup();
    }

    public static /* bridge */ /* synthetic */ boolean e(Object obj) {
        return obj instanceof AnimatedImageDrawable;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return s92.a(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((Player.Listener) obj).onRenderedFirstFrame();
    }

    @Override // androidx.camera.camera2.pipe.internal.FrameDistributor.FrameStartedListener
    public void onFrameStarted(FrameReference frameReference) {
        frameReference.getClass();
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return vz2.a(bundle);
    }

    @Override // yads.xk0
    public Constructor a() {
        return zk0.c();
    }
}
