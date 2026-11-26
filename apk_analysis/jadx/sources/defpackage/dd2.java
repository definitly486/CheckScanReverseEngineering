package defpackage;

import android.view.SurfaceView;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.exoplayer.hls.HlsDataSourceFactory;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.util.ArrayList;
import yads.yx;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class dd2 implements DebugViewProvider, HlsPlaylistTracker.Factory, yx {
    public static Object b(int i, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.Factory
    public HlsPlaylistTracker createTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory, CmcdConfiguration cmcdConfiguration, kd8 kd8Var) {
        return new DefaultHlsPlaylistTracker(hlsDataSourceFactory, loadErrorHandlingPolicy, hlsPlaylistParserFactory, cmcdConfiguration, kd8Var);
    }

    @Override // androidx.media3.common.DebugViewProvider
    public SurfaceView getDebugPreviewSurfaceView(int i, int i2) {
        return DebugViewProvider.lambda$static$0(i, i2);
    }
}
