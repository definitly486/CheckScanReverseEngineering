package androidx.media3.exoplayer.offline;

import android.util.SparseArray;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.hls.offline.HlsDownloader;
import defpackage.fg;
import defpackage.h2;
import defpackage.jh;
import defpackage.o86;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultDownloaderFactory implements DownloaderFactory {
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final Executor executor;
    private final SparseArray<SegmentDownloaderFactory> segmentDownloaderFactories;

    public DefaultDownloaderFactory(CacheDataSource.Factory factory, Executor executor) {
        factory.getClass();
        this.cacheDataSourceFactory = factory;
        executor.getClass();
        this.executor = executor;
        this.segmentDownloaderFactories = new SparseArray<>();
    }

    private Downloader createSegmentDownloader(DownloadRequest downloadRequest, int i) {
        SegmentDownloaderFactory segmentDownloaderFactory = getSegmentDownloaderFactory(i, this.cacheDataSourceFactory);
        MediaItem mediaItemBuild = new MediaItem.Builder().setUri(downloadRequest.uri).setStreamKeys(downloadRequest.streamKeys).setCustomCacheKey(downloadRequest.customCacheKey).build();
        DownloadRequest.TimeRange timeRange = downloadRequest.timeRange;
        if (timeRange != null) {
            segmentDownloaderFactory.setStartPositionUs(timeRange.startPositionUs).setDurationUs(downloadRequest.timeRange.durationUs);
        }
        return segmentDownloaderFactory.setExecutor(this.executor).create(mediaItemBuild);
    }

    private static SegmentDownloaderFactory createSegmentDownloaderFactory(Class<? extends SegmentDownloaderFactory> cls, CacheDataSource.Factory factory) {
        try {
            return cls.getConstructor(CacheDataSource.Factory.class).newInstance(factory);
        } catch (Exception e) {
            h2.e("Downloader factory missing", e);
            return null;
        }
    }

    private SegmentDownloaderFactory getSegmentDownloaderFactory(int i, CacheDataSource.Factory factory) {
        if (Util.contains(this.segmentDownloaderFactories, i)) {
            return this.segmentDownloaderFactories.get(i);
        }
        try {
            return loadSegmentDownloaderFactory(i, factory);
        } catch (ClassNotFoundException e) {
            h2.e(jh.b(i, "Module missing for content type "), e);
            return null;
        }
    }

    private SegmentDownloaderFactory loadSegmentDownloaderFactory(int i, CacheDataSource.Factory factory) {
        SegmentDownloaderFactory segmentDownloaderFactoryCreateSegmentDownloaderFactory;
        if (i == 0) {
            segmentDownloaderFactoryCreateSegmentDownloaderFactory = createSegmentDownloaderFactory(Class.forName("androidx.media3.exoplayer.dash.offline.DashDownloader$Factory").asSubclass(SegmentDownloaderFactory.class), factory);
        } else if (i == 1) {
            segmentDownloaderFactoryCreateSegmentDownloaderFactory = createSegmentDownloaderFactory(Class.forName("androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader$Factory").asSubclass(SegmentDownloaderFactory.class), factory);
        } else {
            if (i != 2) {
                fg.c(jh.b(i, "Unsupported type: "));
                return null;
            }
            segmentDownloaderFactoryCreateSegmentDownloaderFactory = createSegmentDownloaderFactory(HlsDownloader.Factory.class.asSubclass(SegmentDownloaderFactory.class), factory);
        }
        this.segmentDownloaderFactories.put(i, segmentDownloaderFactoryCreateSegmentDownloaderFactory);
        return segmentDownloaderFactoryCreateSegmentDownloaderFactory;
    }

    @Override // androidx.media3.exoplayer.offline.DownloaderFactory
    public Downloader createDownloader(DownloadRequest downloadRequest) {
        int iInferContentTypeForUriAndMimeType = Util.inferContentTypeForUriAndMimeType(downloadRequest.uri, downloadRequest.mimeType);
        if (iInferContentTypeForUriAndMimeType == 0 || iInferContentTypeForUriAndMimeType == 1 || iInferContentTypeForUriAndMimeType == 2) {
            return createSegmentDownloader(downloadRequest, iInferContentTypeForUriAndMimeType);
        }
        if (iInferContentTypeForUriAndMimeType == 4) {
            DownloadRequest.ByteRange byteRange = downloadRequest.byteRange;
            return new ProgressiveDownloader(new MediaItem.Builder().setUri(downloadRequest.uri).setCustomCacheKey(downloadRequest.customCacheKey).build(), this.cacheDataSourceFactory, this.executor, byteRange != null ? byteRange.offset : 0L, byteRange != null ? byteRange.length : -1L);
        }
        fg.c(jh.b(iInferContentTypeForUriAndMimeType, "Unsupported type: "));
        return null;
    }

    @Deprecated
    public DefaultDownloaderFactory(CacheDataSource.Factory factory) {
        this(factory, new o86());
    }
}
