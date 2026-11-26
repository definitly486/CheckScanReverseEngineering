package androidx.media3.exoplayer.hls;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.util.LongSparseArray;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.collect.w;
import defpackage.ah;
import defpackage.ch;
import defpackage.fg;
import defpackage.le2;
import defpackage.mi2;
import defpackage.o8;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public final class HlsInterstitialsAdsLoader implements AdsLoader {
    private static final String TAG = "HlsInterstitiaAdsLoader";
    private static final int TARGET_DURATION_MULTIPLIER = 3;
    private final ContentMediaSourceAdDataHolder contentMediaSourceAdDataHolder;
    private final DataSource.Factory dataSourceFactory;
    private boolean isReleased;
    private final List<Listener> listeners;
    private Loader loader;
    private PlayerMessage pendingAssetListResolutionMessage;
    private ExoPlayer player;
    private final PlayerListener playerListener;
    private final Map<Object, AdPlaybackState> resumptionStates;

    public static class AdsResumptionState {
        private static final String FIELD_ADS_ID = Util.intToStringMaxRadix(0);
        private static final String FIELD_AD_PLAYBACK_STATE = Util.intToStringMaxRadix(1);
        private final AdPlaybackState adPlaybackState;
        public final String adsId;

        public AdsResumptionState(String str, AdPlaybackState adPlaybackState) {
            o8.e(str.equals(adPlaybackState.adsId));
            this.adsId = str;
            this.adPlaybackState = adPlaybackState;
        }

        public static AdsResumptionState fromBundle(Bundle bundle) {
            String string = bundle.getString(FIELD_ADS_ID);
            string.getClass();
            Bundle bundle2 = bundle.getBundle(FIELD_AD_PLAYBACK_STATE);
            bundle2.getClass();
            return new AdsResumptionState(string, AdPlaybackState.fromBundle(bundle2).withAdsId(string));
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AdsResumptionState)) {
                return false;
            }
            AdsResumptionState adsResumptionState = (AdsResumptionState) obj;
            return Objects.equals(this.adsId, adsResumptionState.adsId) && Objects.equals(this.adPlaybackState, adsResumptionState.adPlaybackState);
        }

        public int hashCode() {
            return Objects.hash(this.adsId, this.adPlaybackState);
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putString(FIELD_ADS_ID, this.adsId);
            bundle.putBundle(FIELD_AD_PLAYBACK_STATE, this.adPlaybackState.toBundle());
            return bundle;
        }
    }

    public static final class Asset {
        public final long durationUs;
        public final Uri uri;

        public Asset(Uri uri, long j) {
            this.uri = uri;
            this.durationUs = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Asset)) {
                return false;
            }
            Asset asset = (Asset) obj;
            return this.durationUs == asset.durationUs && Objects.equals(this.uri, asset.uri);
        }

        public int hashCode() {
            return Objects.hash(this.uri, Long.valueOf(this.durationUs));
        }
    }

    public static final class AssetList {
        static final AssetList EMPTY;
        public final com.google.common.collect.j<Asset> assets;
        public final AdPlaybackState.SkipInfo skipInfo;
        public final com.google.common.collect.j<StringAttribute> stringAttributes;

        static {
            com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
            w wVar = w.f;
            EMPTY = new AssetList(wVar, wVar, null);
        }

        public AssetList(com.google.common.collect.j<Asset> jVar, com.google.common.collect.j<StringAttribute> jVar2, AdPlaybackState.SkipInfo skipInfo) {
            this.assets = jVar;
            this.stringAttributes = jVar2;
            this.skipInfo = skipInfo;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AssetList)) {
                return false;
            }
            AssetList assetList = (AssetList) obj;
            return Objects.equals(this.assets, assetList.assets) && Objects.equals(this.stringAttributes, assetList.stringAttributes) && Objects.equals(this.skipInfo, assetList.skipInfo);
        }

        public int hashCode() {
            return Objects.hash(this.assets, this.stringAttributes, this.skipInfo);
        }
    }

    public static class AssetListData {
        private final int adGroupIndex;
        private final int adIndexInAdGroup;
        private final Object adsId;
        private final HlsMediaPlaylist.Interstitial interstitial;
        private final MediaItem mediaItem;
        private final long targetDurationUs;

        public AssetListData(MediaItem mediaItem, Object obj, HlsMediaPlaylist.Interstitial interstitial, int i, int i2, long j) {
            o8.e(interstitial.assetListUri != null);
            this.mediaItem = mediaItem;
            this.adsId = obj;
            this.adGroupIndex = i;
            this.adIndexInAdGroup = i2;
            this.targetDurationUs = j;
            this.interstitial = interstitial;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AssetListData)) {
                return false;
            }
            AssetListData assetListData = (AssetListData) obj;
            return this.adGroupIndex == assetListData.adGroupIndex && this.adIndexInAdGroup == assetListData.adIndexInAdGroup && this.targetDurationUs == assetListData.targetDurationUs && Objects.equals(this.mediaItem, assetListData.mediaItem) && Objects.equals(this.adsId, assetListData.adsId) && Objects.equals(this.interstitial, assetListData.interstitial);
        }

        public int hashCode() {
            return (int) ((((long) (((((this.interstitial.hashCode() + ((this.adsId.hashCode() + (this.mediaItem.hashCode() * 31)) * 31)) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup)) * 31) + this.targetDurationUs);
        }
    }

    public static final class ContentMediaSourceAdDataHolder {
        private final Map<Object, AdsLoader.EventListener> activeEventListeners = new HashMap();
        private final Map<Object, AdPlaybackState> activeAdPlaybackStates = new HashMap();
        private final Map<Object, Set<String>> insertedInterstitialIds = new HashMap();
        private final Map<Object, TreeMap<Long, AssetListData>> unresolvedAssetLists = new HashMap();
        private final Set<Object> contentSourceAwaitingFirstAdToStart = new HashSet();
        private final Set<Object> unsupportedAdsIds = new HashSet();

        public void addInsertedInterstitialId(Object obj, String str) {
            Set<String> set = this.insertedInterstitialIds.get(obj);
            if (set != null) {
                set.add(str);
            }
        }

        public void addUnsupportedContentMediaSource(Object obj) {
            this.unsupportedAdsIds.add(obj);
        }

        public boolean awaitingFirstAdToStartFor(Object obj) {
            return this.contentSourceAwaitingFirstAdToStart.contains(obj);
        }

        public AdPlaybackState getAdPlaybackState(Object obj) {
            return this.activeAdPlaybackStates.get(obj);
        }

        public Collection<AdPlaybackState> getAdPlaybackStates() {
            return this.activeAdPlaybackStates.values();
        }

        public AdsLoader.EventListener getEventListener(Object obj) {
            return this.activeEventListeners.get(obj);
        }

        public int getUnresolvedAssetListCount(Object obj) {
            TreeMap<Long, AssetListData> treeMap = this.unresolvedAssetLists.get(obj);
            if (treeMap != null) {
                return treeMap.size();
            }
            return 0;
        }

        public Map<Long, AssetListData> getUnresolvedAssetLists(Object obj) {
            return this.unresolvedAssetLists.get(obj);
        }

        public boolean isIdle() {
            return this.activeEventListeners.isEmpty();
        }

        public boolean isInsertedInterstitialId(Object obj, String str) {
            Set<String> set = this.insertedInterstitialIds.get(obj);
            return set != null && set.contains(str);
        }

        public boolean isManagedContentSource(Object obj) {
            return this.activeAdPlaybackStates.containsKey(obj);
        }

        public boolean isStartedContentMediaSource(Object obj) {
            return this.activeEventListeners.containsKey(obj);
        }

        public boolean isUnsupportedContentMediaSource(Object obj) {
            return this.unsupportedAdsIds.contains(obj);
        }

        public void notifyAdStarted(Object obj) {
            this.contentSourceAwaitingFirstAdToStart.remove(obj);
        }

        public AdPlaybackState putAdPlaybackState(Object obj, AdPlaybackState adPlaybackState) {
            return this.activeAdPlaybackStates.put(obj, adPlaybackState);
        }

        public AdsLoader.EventListener startContentSource(Object obj, AdsLoader.EventListener eventListener) {
            this.insertedInterstitialIds.put(obj, new HashSet());
            this.unresolvedAssetLists.put(obj, new TreeMap<>());
            this.contentSourceAwaitingFirstAdToStart.add(obj);
            return this.activeEventListeners.put(obj, eventListener);
        }

        public AdPlaybackState stopContentSource(Object obj) {
            this.activeEventListeners.remove(obj);
            this.insertedInterstitialIds.remove(obj);
            this.unresolvedAssetLists.remove(obj);
            this.unsupportedAdsIds.remove(obj);
            this.contentSourceAwaitingFirstAdToStart.remove(obj);
            return this.activeAdPlaybackStates.remove(obj);
        }
    }

    public interface Listener {
        default void onAdCompleted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onAdSkipped(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onAdStarted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onAssetListLoadCompleted(MediaItem mediaItem, Object obj, int i, int i2, AssetList assetList) {
        }

        default void onAssetListLoadFailed(MediaItem mediaItem, Object obj, int i, int i2, IOException iOException, boolean z) {
        }

        default void onAssetListLoadStarted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onContentTimelineChanged(MediaItem mediaItem, Object obj, Timeline timeline) {
        }

        default void onMetadata(MediaItem mediaItem, Object obj, int i, int i2, Metadata metadata) {
        }

        default void onPrepareCompleted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onPrepareError(MediaItem mediaItem, Object obj, int i, int i2, IOException iOException) {
        }

        default void onStart(MediaItem mediaItem, Object obj, AdViewProvider adViewProvider) {
        }

        default void onStop(MediaItem mediaItem, Object obj, AdPlaybackState adPlaybackState) {
        }
    }

    public class PlayerListener implements Player.Listener {
        private final Timeline.Period period;

        private PlayerListener() {
            this.period = new Timeline.Period();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void lambda$onPlaybackStateChanged$4(Player player, Object obj, Listener listener) {
            MediaItem currentMediaItem = player.getCurrentMediaItem();
            currentMediaItem.getClass();
            listener.onAdStarted(currentMediaItem, obj, player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void lambda$onPositionDiscontinuity$1(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            MediaItem mediaItem = positionInfo.mediaItem;
            mediaItem.getClass();
            listener.onAdStarted(mediaItem, obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void lambda$onPositionDiscontinuity$2(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            MediaItem mediaItem = positionInfo.mediaItem;
            mediaItem.getClass();
            listener.onAdStarted(mediaItem, obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void lambda$onPositionDiscontinuity$3(Player.PositionInfo positionInfo, Object obj, Listener listener) {
            MediaItem mediaItem = positionInfo.mediaItem;
            mediaItem.getClass();
            listener.onAdSkipped(mediaItem, obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }

        private void markAdAsPlayedAndNotifyListeners(final MediaItem mediaItem, final Object obj, final int i, final int i2) {
            AdPlaybackState adPlaybackState = HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
            if (adPlaybackState == null || adPlaybackState.getAdGroup(i).states[i2] != 1) {
                return;
            }
            HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withPlayedAd(i, i2));
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.k
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj2) {
                    ((HlsInterstitialsAdsLoader.Listener) obj2).onAdCompleted(mediaItem, obj, i, i2);
                }
            });
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(final Metadata metadata) {
            ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (exoPlayer == null || !exoPlayer.isPlayingAd()) {
                return;
            }
            exoPlayer.getCurrentTimeline().getPeriod(exoPlayer.getCurrentPeriodIndex(), this.period);
            final Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.isManagedContentSource(obj)) {
                return;
            }
            final MediaItem currentMediaItem = exoPlayer.getCurrentMediaItem();
            currentMediaItem.getClass();
            final int currentAdGroupIndex = exoPlayer.getCurrentAdGroupIndex();
            final int currentAdIndexInAdGroup = exoPlayer.getCurrentAdIndexInAdGroup();
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.l
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj2) {
                    ((HlsInterstitialsAdsLoader.Listener) obj2).onMetadata(currentMediaItem, obj, currentAdGroupIndex, currentAdIndexInAdGroup, metadata);
                }
            });
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i) {
            final ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (i == 3 && exoPlayer != null && exoPlayer.isPlayingAd()) {
                exoPlayer.getCurrentTimeline().getPeriod(exoPlayer.getCurrentPeriodIndex(), this.period);
                final Object obj = this.period.adPlaybackState.adsId;
                if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.awaitingFirstAdToStartFor(obj)) {
                    return;
                }
                HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.notifyAdStarted(obj);
                HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.j
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj2) {
                        HlsInterstitialsAdsLoader.PlayerListener.lambda$onPlaybackStateChanged$4(exoPlayer, obj, (HlsInterstitialsAdsLoader.Listener) obj2);
                    }
                });
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(final Player.PositionInfo positionInfo, final Player.PositionInfo positionInfo2, int i) {
            if (HlsInterstitialsAdsLoader.this.player == null || positionInfo.mediaItem == null || positionInfo2.mediaItem == null || i == 4 || i == 6 || i == 5) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
                return;
            }
            Timeline currentTimeline = HlsInterstitialsAdsLoader.this.player.getCurrentTimeline();
            currentTimeline.getPeriod(positionInfo2.periodIndex, this.period);
            final Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.isManagedContentSource(obj)) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
                return;
            }
            if (i == 0) {
                int i2 = positionInfo.adGroupIndex;
                if (i2 != -1) {
                    markAdAsPlayedAndNotifyListeners(positionInfo.mediaItem, obj, i2, positionInfo.adIndexInAdGroup);
                }
                if (positionInfo2.adIndexInAdGroup != -1) {
                    HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.notifyAdStarted(obj);
                    HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.g
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj2) {
                            HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$1(positionInfo2, obj, (HlsInterstitialsAdsLoader.Listener) obj2);
                        }
                    });
                    return;
                }
                return;
            }
            if (i != 1 && i != 2) {
                if (positionInfo.adGroupIndex == -1 || i != 3) {
                    return;
                }
                HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.i
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj2) {
                        HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$3(positionInfo, obj, (HlsInterstitialsAdsLoader.Listener) obj2);
                    }
                });
                return;
            }
            long jMsToUs = Util.msToUs(positionInfo2.contentPositionMs);
            long unresolvedAssetListWindowPositionForContentPositionUs = HlsInterstitialsAdsLoader.this.getUnresolvedAssetListWindowPositionForContentPositionUs(jMsToUs, currentTimeline, positionInfo2.periodIndex);
            HlsInterstitialsAdsLoader.this.maybeExecuteOrSetNextAssetListResolutionMessage(obj, currentTimeline, positionInfo2.mediaItemIndex, -this.period.positionInWindowUs, unresolvedAssetListWindowPositionForContentPositionUs != C.TIME_UNSET ? unresolvedAssetListWindowPositionForContentPositionUs : jMsToUs);
            if (positionInfo.adIndexInAdGroup != -1 || positionInfo2.adIndexInAdGroup == -1) {
                return;
            }
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.h
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj2) {
                    HlsInterstitialsAdsLoader.PlayerListener.lambda$onPositionDiscontinuity$2(positionInfo2, obj, (HlsInterstitialsAdsLoader.Listener) obj2);
                }
            });
        }

        @Override // androidx.media3.common.Player.Listener
        public void onTimelineChanged(Timeline timeline, int i) {
            if (timeline.isEmpty()) {
                HlsInterstitialsAdsLoader.this.cancelPendingAssetListResolutionMessage();
            }
        }
    }

    public static class RunnableAtPosition implements Runnable {
        public final long adStartTimeUs;
        private final Runnable runnable;
        private final long targetDurationUs;

        public RunnableAtPosition(long j, long j2, Runnable runnable) {
            this.adStartTimeUs = j;
            this.targetDurationUs = j2;
            this.runnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runnable.run();
        }
    }

    public static final class StringAttribute {
        public final String name;
        public final String value;

        public StringAttribute(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StringAttribute)) {
                return false;
            }
            StringAttribute stringAttribute = (StringAttribute) obj;
            return Objects.equals(this.name, stringAttribute.name) && Objects.equals(this.value, stringAttribute.value);
        }

        public int hashCode() {
            return Objects.hash(this.name, this.value);
        }
    }

    public HlsInterstitialsAdsLoader(DataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.playerListener = new PlayerListener();
        this.contentMediaSourceAdDataHolder = new ContentMediaSourceAdDataHolder();
        this.resumptionStates = new HashMap();
        this.listeners = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPendingAssetListResolutionMessage() {
        PlayerMessage playerMessage = this.pendingAssetListResolutionMessage;
        if (playerMessage != null) {
            playerMessage.cancel();
            this.pendingAssetListResolutionMessage = null;
        }
    }

    private LongSparseArray<List<HlsMediaPlaylist.Interstitial>> filterAndSortWithResolvedStartPositions(com.google.common.collect.j<HlsMediaPlaylist.Interstitial> jVar, Object obj, HlsMediaPlaylist hlsMediaPlaylist, long j, boolean z) {
        LongSparseArray<List<HlsMediaPlaylist.Interstitial>> longSparseArray = new LongSparseArray<>();
        for (int i = 0; i < jVar.size(); i++) {
            HlsMediaPlaylist.Interstitial interstitial = jVar.get(i);
            if (!this.contentMediaSourceAdDataHolder.isInsertedInterstitialId(obj, interstitial.id) && (!z || !interstitial.cue.contains("POST"))) {
                long jResolveInterstitialStartTimeUs = resolveInterstitialStartTimeUs(interstitial, hlsMediaPlaylist, j);
                List<HlsMediaPlaylist.Interstitial> arrayList = longSparseArray.indexOfKey(jResolveInterstitialStartTimeUs) < 0 ? new ArrayList<>() : longSparseArray.get(jResolveInterstitialStartTimeUs);
                longSparseArray.put(jResolveInterstitialStartTimeUs, arrayList);
                arrayList.add(interstitial);
            }
        }
        return longSparseArray;
    }

    private AdPlaybackState getAdPlaybackState() {
        Object obj;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return null;
        }
        Timeline currentTimeline = exoPlayer.getCurrentTimeline();
        if (currentTimeline.isEmpty() || (obj = currentTimeline.getPeriod(exoPlayer.getCurrentPeriodIndex(), new Timeline.Period()).adPlaybackState.adsId) == null) {
            return null;
        }
        return this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
    }

    public static long getClosestSegmentBoundaryUs(long j, HlsMediaPlaylist hlsMediaPlaylist) {
        long j2;
        long j3 = j - hlsMediaPlaylist.startTimeUs;
        if (j3 <= 0 || hlsMediaPlaylist.segments.isEmpty()) {
            return hlsMediaPlaylist.startTimeUs;
        }
        long j4 = hlsMediaPlaylist.durationUs;
        if (j3 >= j4) {
            return hlsMediaPlaylist.startTimeUs + j4;
        }
        int size = hlsMediaPlaylist.segments.size() - 1;
        int i = 0;
        int iB = 0;
        while (i <= size) {
            iB = defpackage.k.b(size, i, 2, i);
            HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(iB);
            long j5 = segment.relativeStartTimeUs;
            long j6 = segment.durationUs + j5;
            if (j3 >= j5 && j3 <= j6) {
                break;
            }
            if (j3 < j5) {
                size = iB - 1;
            } else {
                i = iB + 1;
            }
        }
        HlsMediaPlaylist.Segment segment2 = hlsMediaPlaylist.segments.get(iB);
        long j7 = segment2.relativeStartTimeUs;
        long j8 = j3 - j7;
        long jAbs = Math.abs(j3 - (j7 + segment2.durationUs));
        long j9 = hlsMediaPlaylist.startTimeUs;
        if (j8 < jAbs) {
            j2 = segment2.relativeStartTimeUs;
        } else {
            j9 += segment2.relativeStartTimeUs;
            j2 = segment2.durationUs;
        }
        return j9 + j2;
    }

    private Loader getLoader() {
        Loader loader = this.loader;
        if (loader != null) {
            return loader;
        }
        Loader loader2 = new Loader("HLS-interstitials");
        this.loader = loader2;
        return loader2;
    }

    private static int getLowestValidAdGroupInsertionIndex(AdPlaybackState adPlaybackState) {
        int i = adPlaybackState.adGroupCount;
        while (true) {
            i--;
            int i2 = adPlaybackState.removedAdGroupCount;
            if (i < i2) {
                return i2;
            }
            for (int i3 : adPlaybackState.getAdGroup(i).states) {
                if (i3 != 0) {
                    return i + 1;
                }
            }
        }
    }

    private RunnableAtPosition getNextAssetResolution(Object obj, long j) {
        Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(obj);
        unresolvedAssetLists.getClass();
        final Map<Long, AssetListData> map = unresolvedAssetLists;
        for (final Long l : map.keySet()) {
            if (j <= l.longValue()) {
                final AssetListData assetListData = map.get(l);
                assetListData.getClass();
                return new RunnableAtPosition(l.longValue(), assetListData.targetDurationUs, new Runnable() { // from class: androidx.media3.exoplayer.hls.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.lambda$getNextAssetResolution$7(map, l, assetListData);
                    }
                });
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getUnresolvedAssetListWindowPositionForContentPositionUs(long j, Timeline timeline, int i) {
        int adGroupIndexForPositionUs;
        Timeline.Period period = timeline.getPeriod(i, new Timeline.Period());
        long j2 = j - period.positionInWindowUs;
        AdPlaybackState adPlaybackState = period.adPlaybackState;
        if (adPlaybackState.adsId != null && (adGroupIndexForPositionUs = adPlaybackState.getAdGroupIndexForPositionUs(j2, C.TIME_UNSET)) != -1) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(adGroupIndexForPositionUs);
            Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(adPlaybackState.adsId);
            if (unresolvedAssetLists != null && unresolvedAssetLists.containsKey(Long.valueOf(adGroup.timeUs))) {
                return adGroup.timeUs - timeline.getWindow(period.windowIndex, new Timeline.Window()).positionInFirstPeriodUs;
            }
        }
        return C.TIME_UNSET;
    }

    private AdPlaybackState insertOrUpdateInterstitialInAdGroup(MediaItem mediaItem, HlsMediaPlaylist.Interstitial interstitial, AdPlaybackState adPlaybackState, int i, long j) {
        long[] jArr;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        if (adGroup.getIndexOfAdId(interstitial.id) != -1) {
            return adPlaybackState;
        }
        int iMax = Math.max(adGroup.count, 0);
        long jResolveInterstitialDurationUs = resolveInterstitialDurationUs(interstitial, C.TIME_UNSET);
        if (iMax == 0) {
            jArr = new long[1];
        } else {
            long[] jArr2 = adGroup.durationsUs;
            long[] jArr3 = new long[jArr2.length + 1];
            System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
            jArr = jArr3;
        }
        jArr[jArr.length - 1] = jResolveInterstitialDurationUs;
        long j2 = interstitial.resumeOffsetUs;
        if (j2 != C.TIME_UNSET) {
            jResolveInterstitialDurationUs = j2;
        } else if (jResolveInterstitialDurationUs == C.TIME_UNSET) {
            jResolveInterstitialDurationUs = 0;
        }
        AdPlaybackState adPlaybackStateWithContentResumeOffsetUs = adPlaybackState.withAdCount(i, iMax + 1).withAdId(i, iMax, interstitial.id).withAdDurationsUs(i, jArr).withContentResumeOffsetUs(i, adGroup.contentResumeOffsetUs + jResolveInterstitialDurationUs);
        if (interstitial.skipControlDurationUs != C.TIME_UNSET || interstitial.skipControlOffsetUs != C.TIME_UNSET || interstitial.skipControlLabelId != null) {
            adPlaybackStateWithContentResumeOffsetUs = adPlaybackStateWithContentResumeOffsetUs.withAdSkipInfo(i, iMax, new AdPlaybackState.SkipInfo(interstitial.skipControlOffsetUs, interstitial.skipControlDurationUs, interstitial.skipControlLabelId));
        }
        AdPlaybackState adPlaybackState2 = adPlaybackStateWithContentResumeOffsetUs;
        if (interstitial.assetUri != null) {
            return adPlaybackState2.withAvailableAdMediaItem(i, iMax, new MediaItem.Builder().setUri(interstitial.assetUri).setMimeType(MimeTypes.APPLICATION_M3U8).build());
        }
        Object obj = adPlaybackState2.adsId;
        obj.getClass();
        Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(obj);
        unresolvedAssetLists.getClass();
        Map<Long, AssetListData> map = unresolvedAssetLists;
        long j3 = adGroup.timeUs;
        if (j3 == Long.MIN_VALUE) {
            j3 = Long.MAX_VALUE;
        }
        map.put(Long.valueOf(j3), new AssetListData(mediaItem, obj, interstitial, i, iMax, j));
        return adPlaybackState2;
    }

    private static boolean isHlsMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        localConfiguration.getClass();
        return Objects.equals(localConfiguration.mimeType, MimeTypes.APPLICATION_M3U8) || Util.inferContentType(localConfiguration.uri) == 2;
    }

    private static boolean isLiveMediaItem(MediaItem mediaItem, Timeline timeline) {
        int firstWindowIndex = timeline.getFirstWindowIndex(false);
        Timeline.Window window = new Timeline.Window();
        while (firstWindowIndex != -1) {
            timeline.getWindow(firstWindowIndex, window);
            if (window.mediaItem.equals(mediaItem)) {
                return window.isLive();
            }
            firstWindowIndex = timeline.getNextWindowIndex(firstWindowIndex, 0, false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getNextAssetResolution$7(Map map, Long l, AssetListData assetListData) {
        if (map.remove(l) != null) {
            startLoadingAssetList(assetListData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleContentTimelineChanged$1(AdsMediaSource adsMediaSource, Object obj, Timeline timeline, Listener listener) {
        listener.onContentTimelineChanged(adsMediaSource.getMediaItem(), obj, timeline);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareComplete$2(AdsMediaSource adsMediaSource, Object obj, int i, int i2, Listener listener) {
        listener.onPrepareCompleted(adsMediaSource.getMediaItem(), obj, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareError$3(AdsMediaSource adsMediaSource, Object obj, int i, int i2, IOException iOException, Listener listener) {
        listener.onPrepareError(adsMediaSource.getMediaItem(), obj, i, i2, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startLoadingAssetList$5(AssetListData assetListData, Listener listener) {
        listener.onAssetListLoadStarted(assetListData.mediaItem, assetListData.adsId, assetListData.adGroupIndex, assetListData.adIndexInAdGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$stop$4(AdsMediaSource adsMediaSource, AdPlaybackState adPlaybackState, Listener listener) {
        MediaItem mediaItem = adsMediaSource.getMediaItem();
        Object adsId = adsMediaSource.getAdsId();
        adPlaybackState.getClass();
        listener.onStop(mediaItem, adsId, adPlaybackState);
    }

    private AdPlaybackState mapInterstitialsForLive(MediaItem mediaItem, HlsMediaPlaylist hlsMediaPlaylist, AdPlaybackState adPlaybackState, long j, long j2) {
        int i;
        boolean z;
        AdPlaybackState adPlaybackStateInsertOrUpdateInterstitialInAdGroup = adPlaybackState;
        Object obj = adPlaybackStateInsertOrUpdateInterstitialInAdGroup.adsId;
        obj.getClass();
        LongSparseArray<List<HlsMediaPlaylist.Interstitial>> longSparseArrayFilterAndSortWithResolvedStartPositions = filterAndSortWithResolvedStartPositions(hlsMediaPlaylist.interstitials, obj, hlsMediaPlaylist, j2, true);
        int i2 = 0;
        while (i2 < longSparseArrayFilterAndSortWithResolvedStartPositions.size()) {
            long jKeyAt = longSparseArrayFilterAndSortWithResolvedStartPositions.keyAt(i2);
            List<HlsMediaPlaylist.Interstitial> list = longSparseArrayFilterAndSortWithResolvedStartPositions.get(jKeyAt);
            int i3 = 0;
            while (i3 < list.size()) {
                HlsMediaPlaylist.Interstitial interstitial = list.get(i3);
                long j3 = jKeyAt - hlsMediaPlaylist.startTimeUs;
                if (j3 >= 0) {
                    i = i2;
                    if ((hlsMediaPlaylist.targetDurationUs * 3) + hlsMediaPlaylist.durationUs >= j3) {
                        long j4 = j + j3;
                        int i4 = adPlaybackStateInsertOrUpdateInterstitialInAdGroup.adGroupCount;
                        int i5 = i4 - 1;
                        int i6 = i4 - 2;
                        while (true) {
                            int i7 = i5;
                            i5 = i6;
                            if (i5 >= adPlaybackStateInsertOrUpdateInterstitialInAdGroup.removedAdGroupCount) {
                                long j5 = adPlaybackStateInsertOrUpdateInterstitialInAdGroup.getAdGroup(i5).timeUs;
                                if (j5 == j4) {
                                    z = false;
                                    break;
                                }
                                if (j5 < j4) {
                                    i5++;
                                } else {
                                    i6 = i5 - 1;
                                }
                            } else {
                                i5 = i7;
                            }
                            z = true;
                            break;
                        }
                        if (z) {
                            if (i5 < getLowestValidAdGroupInsertionIndex(adPlaybackStateInsertOrUpdateInterstitialInAdGroup)) {
                                Log.w(TAG, "Skipping insertion of interstitial attempted to be inserted behind an already initialized ad group.");
                            } else {
                                adPlaybackStateInsertOrUpdateInterstitialInAdGroup = adPlaybackStateInsertOrUpdateInterstitialInAdGroup.withNewAdGroup(i5, j4);
                            }
                        }
                        adPlaybackStateInsertOrUpdateInterstitialInAdGroup = insertOrUpdateInterstitialInAdGroup(mediaItem, interstitial, adPlaybackStateInsertOrUpdateInterstitialInAdGroup, i5, hlsMediaPlaylist.targetDurationUs);
                        this.contentMediaSourceAdDataHolder.addInsertedInterstitialId(obj, interstitial.id);
                    }
                } else {
                    i = i2;
                }
                i3++;
                i2 = i;
            }
            i2++;
        }
        return adPlaybackStateInsertOrUpdateInterstitialInAdGroup;
    }

    private AdPlaybackState mapInterstitialsForVod(MediaItem mediaItem, HlsMediaPlaylist hlsMediaPlaylist, AdPlaybackState adPlaybackState, long j, long j2, long j3) {
        AdPlaybackState adPlaybackStateWithNewAdGroup = adPlaybackState;
        o8.e(adPlaybackStateWithNewAdGroup.adGroupCount == adPlaybackStateWithNewAdGroup.removedAdGroupCount);
        com.google.common.collect.j<HlsMediaPlaylist.Interstitial> jVar = hlsMediaPlaylist.interstitials;
        Object obj = adPlaybackStateWithNewAdGroup.adsId;
        obj.getClass();
        LongSparseArray<List<HlsMediaPlaylist.Interstitial>> longSparseArrayFilterAndSortWithResolvedStartPositions = filterAndSortWithResolvedStartPositions(jVar, obj, hlsMediaPlaylist, j2, false);
        long j4 = hlsMediaPlaylist.startTimeUs + j2;
        long j5 = j4 + j;
        for (int i = 0; i < longSparseArrayFilterAndSortWithResolvedStartPositions.size(); i++) {
            List<HlsMediaPlaylist.Interstitial> list = longSparseArrayFilterAndSortWithResolvedStartPositions.get(longSparseArrayFilterAndSortWithResolvedStartPositions.keyAt(i));
            for (int i2 = 0; i2 < list.size(); i2++) {
                HlsMediaPlaylist.Interstitial interstitial = list.get(i2);
                long jResolveInterstitialStartTimeUs = resolveInterstitialStartTimeUs(interstitial, hlsMediaPlaylist, j3);
                if (jResolveInterstitialStartTimeUs < j4 && interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE)) {
                    jResolveInterstitialStartTimeUs = j4;
                } else if (jResolveInterstitialStartTimeUs <= j5 || !interstitial.cue.contains("POST")) {
                    if (jResolveInterstitialStartTimeUs < j4 || j5 < jResolveInterstitialStartTimeUs) {
                    }
                } else {
                    jResolveInterstitialStartTimeUs = j5;
                }
                long j6 = j5 == jResolveInterstitialStartTimeUs ? Long.MIN_VALUE : jResolveInterstitialStartTimeUs - hlsMediaPlaylist.startTimeUs;
                int adGroupIndexForPositionUs = adPlaybackStateWithNewAdGroup.getAdGroupIndexForPositionUs(j6, hlsMediaPlaylist.durationUs);
                if (adGroupIndexForPositionUs == -1) {
                    adGroupIndexForPositionUs = adPlaybackStateWithNewAdGroup.removedAdGroupCount;
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(adGroupIndexForPositionUs, j6);
                } else if (adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).timeUs != j6) {
                    adGroupIndexForPositionUs++;
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(adGroupIndexForPositionUs, j6);
                }
                adPlaybackStateWithNewAdGroup = insertOrUpdateInterstitialInAdGroup(mediaItem, interstitial, adPlaybackStateWithNewAdGroup, adGroupIndexForPositionUs, hlsMediaPlaylist.targetDurationUs);
                ContentMediaSourceAdDataHolder contentMediaSourceAdDataHolder = this.contentMediaSourceAdDataHolder;
                Object obj2 = adPlaybackStateWithNewAdGroup.adsId;
                obj2.getClass();
                contentMediaSourceAdDataHolder.addInsertedInterstitialId(obj2, interstitial.id);
            }
        }
        return adPlaybackStateWithNewAdGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeExecuteOrSetNextAssetListResolutionMessage(Object obj, Timeline timeline, int i, long j, long j2) {
        Loader loader = this.loader;
        if (loader == null || !loader.isLoading()) {
            cancelPendingAssetListResolutionMessage();
            Timeline.Window window = timeline.getWindow(i, new Timeline.Window());
            long j3 = j2 + j;
            final RunnableAtPosition nextAssetResolution = getNextAssetResolution(obj, j3);
            if (nextAssetResolution == null) {
                return;
            }
            long j4 = nextAssetResolution.adStartTimeUs;
            if (j4 == Long.MAX_VALUE) {
                j4 = window.durationUs;
            }
            long jMax = Math.max(j3, j4 - (nextAssetResolution.targetDurationUs * 3));
            if (jMax - j3 < 200000) {
                nextAssetResolution.run();
                return;
            }
            long jMax2 = jMax - j;
            AdPlaybackState adPlaybackState = this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
            adPlaybackState.getClass();
            int adGroupIndexForPositionUs = adPlaybackState.getAdGroupIndexForPositionUs(jMax, timeline.getPeriod(0, new Timeline.Period()).durationUs);
            if (adGroupIndexForPositionUs != -1) {
                AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(adGroupIndexForPositionUs);
                jMax2 = Math.max(jMax2, (adGroup.timeUs + adGroup.contentResumeOffsetUs) - j);
            }
            ExoPlayer exoPlayer = this.player;
            exoPlayer.getClass();
            PlayerMessage payload = exoPlayer.createMessage(new PlayerMessage.Target() { // from class: androidx.media3.exoplayer.hls.c
                @Override // androidx.media3.exoplayer.PlayerMessage.Target
                public final void handleMessage(int i2, Object obj2) {
                    nextAssetResolution.run();
                }
            }).setPayload(window.mediaItem);
            Looper looperMyLooper = Looper.myLooper();
            looperMyLooper.getClass();
            PlayerMessage position = payload.setLooper(looperMyLooper).setPosition(Math.max(Util.usToMs(jMax2), 0L));
            this.pendingAssetListResolutionMessage = position;
            position.send();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAssetResolutionFailed(Object obj, int i, int i2) {
        AdPlaybackState adPlaybackState = this.contentMediaSourceAdDataHolder.getAdPlaybackState(obj);
        if (adPlaybackState == null) {
            return;
        }
        putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withAdLoadError(i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListeners(Consumer<Listener> consumer) {
        for (int i = 0; i < this.listeners.size(); i++) {
            consumer.accept(this.listeners.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean putAndNotifyAdPlaybackStateUpdate(Object obj, AdPlaybackState adPlaybackState) {
        if (adPlaybackState.equals(this.contentMediaSourceAdDataHolder.putAdPlaybackState(obj, adPlaybackState))) {
            return false;
        }
        AdsLoader.EventListener eventListener = this.contentMediaSourceAdDataHolder.getEventListener(obj);
        if (eventListener != null) {
            eventListener.onAdPlaybackState(adPlaybackState);
            return true;
        }
        this.contentMediaSourceAdDataHolder.stopContentSource(obj);
        return false;
    }

    private void removeUnresolvedAssetListOfAdGroup(AdPlaybackState adPlaybackState, AdPlaybackState.AdGroup adGroup) {
        o8.e(adPlaybackState.adsId != null);
        Map<Long, AssetListData> unresolvedAssetLists = this.contentMediaSourceAdDataHolder.getUnresolvedAssetLists(adPlaybackState.adsId);
        if (unresolvedAssetLists != null) {
            long j = adGroup.timeUs;
            if (j == Long.MIN_VALUE) {
                j = Long.MAX_VALUE;
            }
            unresolvedAssetLists.remove(Long.valueOf(j));
        }
    }

    private static long resolveInterstitialDurationUs(HlsMediaPlaylist.Interstitial interstitial, long j) {
        long j2 = interstitial.playoutLimitUs;
        if (j2 != C.TIME_UNSET) {
            return j2;
        }
        long j3 = interstitial.durationUs;
        if (j3 != C.TIME_UNSET) {
            return j3;
        }
        long j4 = interstitial.endDateUnixUs;
        if (j4 != C.TIME_UNSET) {
            return j4 - interstitial.startDateUnixUs;
        }
        long j5 = interstitial.plannedDurationUs;
        return j5 != C.TIME_UNSET ? j5 : j;
    }

    private static long resolveInterstitialStartTimeUs(HlsMediaPlaylist.Interstitial interstitial, HlsMediaPlaylist hlsMediaPlaylist, long j) {
        if (interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE)) {
            return hlsMediaPlaylist.startTimeUs + j;
        }
        if (interstitial.cue.contains("POST")) {
            return hlsMediaPlaylist.startTimeUs + hlsMediaPlaylist.durationUs;
        }
        if (interstitial.snapTypes.contains(HlsMediaPlaylist.Interstitial.SNAP_TYPE_OUT)) {
            return getClosestSegmentBoundaryUs(interstitial.startDateUnixUs, hlsMediaPlaylist);
        }
        if (!interstitial.snapTypes.contains(HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN)) {
            return interstitial.startDateUnixUs;
        }
        long jResolveInterstitialDurationUs = interstitial.resumeOffsetUs;
        if (jResolveInterstitialDurationUs == C.TIME_UNSET) {
            jResolveInterstitialDurationUs = resolveInterstitialDurationUs(interstitial, 0L);
        }
        return getClosestSegmentBoundaryUs(interstitial.startDateUnixUs + jResolveInterstitialDurationUs, hlsMediaPlaylist) - jResolveInterstitialDurationUs;
    }

    private void startLoadingAssetList(final AssetListData assetListData) {
        cancelPendingAssetListResolutionMessage();
        Loader loader = getLoader();
        DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
        Uri uri = assetListData.interstitial.assetListUri;
        uri.getClass();
        loader.startLoading(new ParsingLoadable(dataSourceCreateDataSource, uri, 6, new AssetListParser()), new LoaderCallback(assetListData), 1);
        notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.b
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                HlsInterstitialsAdsLoader.lambda$startLoadingAssetList$5(assetListData, (HlsInterstitialsAdsLoader.Listener) obj);
            }
        });
    }

    public void addAdResumptionState(Object obj, AdPlaybackState adPlaybackState) {
        o8.e(!adPlaybackState.endsWithLivePostrollPlaceHolder());
        if (!this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(obj)) {
            this.resumptionStates.put(obj, adPlaybackState.copy().withAdsId(obj));
            return;
        }
        Log.w(TAG, "Attempting to add an ad resumption state for an adsId that is currently active. adsId=" + obj);
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void clearAllAdResumptionStates() {
        this.resumptionStates.clear();
    }

    public com.google.common.collect.j<AdsResumptionState> getAdsResumptionStates() {
        com.google.common.collect.j.a aVar = new com.google.common.collect.j.a();
        for (AdPlaybackState adPlaybackState : this.contentMediaSourceAdDataHolder.getAdPlaybackStates()) {
            boolean zEndsWithLivePostrollPlaceHolder = adPlaybackState.endsWithLivePostrollPlaceHolder();
            if (zEndsWithLivePostrollPlaceHolder || !(adPlaybackState.adsId instanceof String)) {
                Object obj = adPlaybackState.adsId;
                Log.i(TAG, zEndsWithLivePostrollPlaceHolder ? "getAdsResumptionStates(): ignoring active ad playback state of live stream. adsId=" + obj : "getAdsResumptionStates(): ignoring active ad playback state when creating resumption states. `adsId` is not of type String: " + Util.castNonNull(obj).getClass());
            } else {
                aVar.c(new AdsResumptionState((String) adPlaybackState.adsId, adPlaybackState.copy()));
            }
        }
        return aVar.g();
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public boolean handleContentTimelineChanged(final AdsMediaSource adsMediaSource, Timeline timeline) {
        AdPlaybackState adPlaybackState;
        final Timeline timeline2;
        final Object obj;
        AdPlaybackState adPlaybackStateMapInterstitialsForVod;
        HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader = this;
        Object adsId = adsMediaSource.getAdsId();
        boolean z = hlsInterstitialsAdsLoader.isReleased;
        ContentMediaSourceAdDataHolder contentMediaSourceAdDataHolder = hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder;
        if (z) {
            AdsLoader.EventListener eventListener = contentMediaSourceAdDataHolder.getEventListener(adsId);
            if (eventListener != null) {
                AdPlaybackState adPlaybackStateStopContentSource = hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.stopContentSource(adsId);
                adPlaybackStateStopContentSource.getClass();
                if (adPlaybackStateStopContentSource.equals(AdPlaybackState.NONE)) {
                    eventListener.onAdPlaybackState(new AdPlaybackState(adsId, new long[0]));
                    return false;
                }
            }
        } else {
            AdPlaybackState adPlaybackState2 = contentMediaSourceAdDataHolder.getAdPlaybackState(adsId);
            adPlaybackState2.getClass();
            AdPlaybackState adPlaybackState3 = AdPlaybackState.NONE;
            if (adPlaybackState2.equals(adPlaybackState3) || adPlaybackState2.endsWithLivePostrollPlaceHolder()) {
                if (adPlaybackState2.equals(adPlaybackState3)) {
                    adPlaybackState2 = new AdPlaybackState(adsId, new long[0]);
                    if (isLiveMediaItem(adsMediaSource.getMediaItem(), timeline)) {
                        adPlaybackState2 = adPlaybackState2.withLivePostrollPlaceholderAppended(false);
                    }
                }
                Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
                Object obj2 = window.manifest;
                if (obj2 instanceof HlsManifest) {
                    HlsMediaPlaylist hlsMediaPlaylist = ((HlsManifest) obj2).mediaPlaylist;
                    int unresolvedAssetListCount = hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.getUnresolvedAssetListCount(adsId);
                    boolean zIsLive = window.isLive();
                    AdPlaybackState adPlaybackState4 = adPlaybackState2;
                    MediaItem mediaItem = window.mediaItem;
                    if (zIsLive) {
                        adPlaybackStateMapInterstitialsForVod = hlsInterstitialsAdsLoader.mapInterstitialsForLive(mediaItem, hlsMediaPlaylist, adPlaybackState4, window.positionInFirstPeriodUs, window.defaultPositionUs);
                        hlsInterstitialsAdsLoader = this;
                    } else {
                        hlsInterstitialsAdsLoader = this;
                        adPlaybackStateMapInterstitialsForVod = hlsInterstitialsAdsLoader.mapInterstitialsForVod(mediaItem, hlsMediaPlaylist, adPlaybackState4, window.durationUs, window.positionInFirstPeriodUs, window.defaultPositionUs);
                    }
                    AdPlaybackState adPlaybackState5 = adPlaybackStateMapInterstitialsForVod;
                    ExoPlayer exoPlayer = hlsInterstitialsAdsLoader.player;
                    if (unresolvedAssetListCount == hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.getUnresolvedAssetListCount(adsId) || exoPlayer == null || !Objects.equals(window.mediaItem, exoPlayer.getCurrentMediaItem())) {
                        timeline2 = timeline;
                        obj = adsId;
                    } else {
                        int currentPeriodIndex = exoPlayer.getCurrentPeriodIndex();
                        long jMsToUs = Util.msToUs(exoPlayer.getContentPosition());
                        Timeline.Period period = exoPlayer.getCurrentTimeline().getPeriod(currentPeriodIndex, new Timeline.Period());
                        long j = -period.positionInWindowUs;
                        if (period.isPlaceholder) {
                            long j2 = window.durationUs;
                            if (jMsToUs >= j2) {
                                jMsToUs = j2 - 1;
                            }
                            if (window.isLive()) {
                                jMsToUs = window.defaultPositionUs;
                            }
                            int adGroupIndexForPositionUs = adPlaybackState5.getAdGroupIndexForPositionUs(jMsToUs, window.isLive() ? C.TIME_UNSET : window.durationUs);
                            if (adGroupIndexForPositionUs != -1) {
                                jMsToUs = adPlaybackState5.getAdGroup(adGroupIndexForPositionUs).timeUs;
                            }
                            j = window.positionInFirstPeriodUs;
                        }
                        timeline2 = timeline;
                        obj = adsId;
                        hlsInterstitialsAdsLoader.maybeExecuteOrSetNextAssetListResolutionMessage(obj, timeline2, 0, j, jMsToUs);
                    }
                    adPlaybackState = adPlaybackState5;
                } else {
                    adPlaybackState = adPlaybackState2;
                    timeline2 = timeline;
                    obj = adsId;
                }
                boolean zPutAndNotifyAdPlaybackStateUpdate = hlsInterstitialsAdsLoader.putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState);
                if (!hlsInterstitialsAdsLoader.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(obj)) {
                    hlsInterstitialsAdsLoader.notifyListeners(new Consumer() { // from class: iw3
                        @Override // androidx.media3.common.util.Consumer
                        public final void accept(Object obj3) {
                            HlsInterstitialsAdsLoader.lambda$handleContentTimelineChanged$1(adsMediaSource, obj, timeline2, (HlsInterstitialsAdsLoader.Listener) obj3);
                        }
                    });
                }
                return zPutAndNotifyAdPlaybackStateUpdate;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareComplete(final AdsMediaSource adsMediaSource, final int i, final int i2) {
        final Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased || this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId)) {
            return;
        }
        notifyListeners(new Consumer() { // from class: kw3
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                HlsInterstitialsAdsLoader.lambda$handlePrepareComplete$2(adsMediaSource, adsId, i, i2, (HlsInterstitialsAdsLoader.Listener) obj);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareError(final AdsMediaSource adsMediaSource, final int i, final int i2, final IOException iOException) {
        final Object adsId = adsMediaSource.getAdsId();
        AdPlaybackState adPlaybackState = this.contentMediaSourceAdDataHolder.getAdPlaybackState(adsId);
        adPlaybackState.getClass();
        putAndNotifyAdPlaybackStateUpdate(adsId, adPlaybackState.withAdLoadError(i, i2));
        if (this.isReleased || this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId)) {
            return;
        }
        notifyListeners(new Consumer() { // from class: hw3
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                HlsInterstitialsAdsLoader.lambda$handlePrepareError$3(adsMediaSource, adsId, i, i2, iOException, (HlsInterstitialsAdsLoader.Listener) obj);
            }
        });
    }

    public boolean isReleased() {
        return this.isReleased;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void release() {
        if (this.contentMediaSourceAdDataHolder.isIdle()) {
            this.player = null;
        }
        clearAllAdResumptionStates();
        cancelPendingAssetListResolutionMessage();
        Loader loader = this.loader;
        if (loader != null) {
            loader.release();
            this.loader = null;
        }
        this.isReleased = true;
    }

    public boolean removeAdResumptionState(Object obj) {
        return this.resumptionStates.remove(obj) != null;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setPlayer(Player player) {
        boolean z = true;
        o8.r(!this.isReleased);
        o8.e(player == null || (player instanceof ExoPlayer));
        if (Objects.equals(this.player, player)) {
            return;
        }
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && !this.contentMediaSourceAdDataHolder.isIdle()) {
            exoPlayer.removeListener(this.playerListener);
        }
        if (player != null && !this.contentMediaSourceAdDataHolder.isIdle()) {
            z = false;
        }
        o8.r(z);
        this.player = (ExoPlayer) player;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setSupportedContentTypes(int... iArr) {
        for (int i : iArr) {
            if (i == 2) {
                return;
            }
        }
        mi2.b();
    }

    public void setWithAvailableAdGroup(int i) {
        MediaItem mediaItem;
        o8.r(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState == null) {
            return;
        }
        o8.e(i < adPlaybackState.adGroupCount);
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
        int i2 = 0;
        while (true) {
            int[] iArr = adGroup.states;
            if (i2 >= iArr.length) {
                Object obj = adPlaybackState.adsId;
                obj.getClass();
                putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState);
                removeUnresolvedAssetListOfAdGroup(adPlaybackState, adGroup);
                return;
            }
            int i3 = iArr[i2];
            if ((i3 == 3 || i3 == 2) && (mediaItem = adGroup.mediaItems[i2]) != null) {
                o8.r(mediaItem != null);
                adPlaybackState = adPlaybackState.withAvailableAdMediaItem(i, i2, mediaItem);
            }
            i2++;
        }
    }

    public void setWithAvailableAdMediaItem(int i, int i2, MediaItem mediaItem) {
        o8.r(this.player != null);
        if (mediaItem != null) {
            o8.e(isHlsMediaItem(mediaItem));
        }
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            o8.e(i < adPlaybackState.adGroupCount);
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
            o8.e(i2 < adGroup.count);
            if (mediaItem == null) {
                mediaItem = adGroup.mediaItems[i2];
                o8.r(mediaItem != null);
            }
            if (adGroup.states[i2] != 1) {
                AdPlaybackState adPlaybackStateWithAvailableAdMediaItem = adPlaybackState.withAvailableAdMediaItem(i, i2, mediaItem);
                Object obj = adPlaybackStateWithAvailableAdMediaItem.adsId;
                obj.getClass();
                putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackStateWithAvailableAdMediaItem);
                removeUnresolvedAssetListOfAdGroup(adPlaybackStateWithAvailableAdMediaItem, adGroup);
            }
        }
    }

    public void setWithSkippedAd(int i, int i2) {
        o8.r(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            o8.e(i < adPlaybackState.adGroupCount);
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
            o8.e(i2 < adGroup.count);
            int i3 = adGroup.states[i2];
            if (i3 == 3 || i3 == 4) {
                Log.w(TAG, "ignoring request to set ad for state AD_STATE_SKIPPED for played or failed ad at adGroupIndex=" + i + ", adIndexInAgGroup=" + i2);
                return;
            }
            if (i3 != 2) {
                AdPlaybackState adPlaybackStateWithSkippedAd = adPlaybackState.withSkippedAd(i, i2);
                Object obj = adPlaybackStateWithSkippedAd.adsId;
                obj.getClass();
                putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackStateWithSkippedAd);
                removeUnresolvedAssetListOfAdGroup(adPlaybackStateWithSkippedAd, adGroup);
            }
        }
    }

    public void setWithSkippedAdGroup(int i) {
        o8.r(this.player != null);
        AdPlaybackState adPlaybackState = getAdPlaybackState();
        if (adPlaybackState != null) {
            o8.e(i < adPlaybackState.adGroupCount);
            AdPlaybackState adPlaybackStateWithSkippedAdGroup = adPlaybackState.withSkippedAdGroup(i);
            AdPlaybackState.AdGroup adGroup = adPlaybackStateWithSkippedAdGroup.getAdGroup(i);
            Object obj = adPlaybackStateWithSkippedAdGroup.adsId;
            obj.getClass();
            putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackStateWithSkippedAdGroup);
            removeUnresolvedAssetListOfAdGroup(adPlaybackStateWithSkippedAdGroup, adGroup);
        }
    }

    public void skipCurrentAd() {
        this.player.getClass();
        if (this.player.isPlayingAd()) {
            setWithSkippedAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
        }
    }

    public void skipCurrentAdGroup() {
        this.player.getClass();
        if (this.player.isPlayingAd()) {
            setWithSkippedAdGroup(this.player.getCurrentAdGroupIndex());
        }
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void start(AdsMediaSource adsMediaSource, DataSpec dataSpec, final Object obj, final AdViewProvider adViewProvider, AdsLoader.EventListener eventListener) {
        if (this.isReleased) {
            eventListener.onAdPlaybackState(new AdPlaybackState(obj, new long[0]));
            return;
        }
        if (this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(obj)) {
            ah.f(ch.c(obj, "media item with adsId='", "' already started. Make sure adsIds are unique within the same playlist."));
            return;
        }
        if (this.contentMediaSourceAdDataHolder.isIdle()) {
            ExoPlayer exoPlayer = this.player;
            o8.l(exoPlayer, "setPlayer(Player) needs to be called");
            exoPlayer.addListener(this.playerListener);
        }
        this.contentMediaSourceAdDataHolder.startContentSource(obj, eventListener);
        final MediaItem mediaItem = adsMediaSource.getMediaItem();
        if (!isHlsMediaItem(mediaItem)) {
            Log.w(TAG, "Unsupported media item. Playing without ads for adsId=" + obj);
            putAndNotifyAdPlaybackStateUpdate(obj, new AdPlaybackState(obj, new long[0]));
            this.contentMediaSourceAdDataHolder.addUnsupportedContentMediaSource(obj);
            return;
        }
        if ((obj instanceof String) && this.resumptionStates.containsKey(obj)) {
            AdPlaybackState adPlaybackStateRemove = this.resumptionStates.remove(obj);
            adPlaybackStateRemove.getClass();
            putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackStateRemove);
        } else {
            this.contentMediaSourceAdDataHolder.putAdPlaybackState(obj, AdPlaybackState.NONE);
        }
        notifyListeners(new Consumer() { // from class: jw3
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj2) {
                ((HlsInterstitialsAdsLoader.Listener) obj2).onStart(mediaItem, obj, adViewProvider);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void stop(AdsMediaSource adsMediaSource, AdsLoader.EventListener eventListener) {
        Object adsId = adsMediaSource.getAdsId();
        int i = 1;
        o8.r(this.contentMediaSourceAdDataHolder.isStartedContentMediaSource(adsId) || this.isReleased);
        boolean zIsUnsupportedContentMediaSource = this.contentMediaSourceAdDataHolder.isUnsupportedContentMediaSource(adsId);
        AdPlaybackState adPlaybackStateStopContentSource = this.contentMediaSourceAdDataHolder.stopContentSource(adsId);
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null && this.contentMediaSourceAdDataHolder.isIdle()) {
            exoPlayer.removeListener(this.playerListener);
            if (this.isReleased) {
                this.player = null;
            }
        }
        if (!this.isReleased && !zIsUnsupportedContentMediaSource) {
            if (adPlaybackStateStopContentSource != null && (adsId instanceof String) && this.resumptionStates.containsKey(adsId)) {
                this.resumptionStates.put(adsId, adPlaybackStateStopContentSource);
            }
            notifyListeners(new le2(i, adsMediaSource, adPlaybackStateStopContentSource));
        }
        if (this.pendingAssetListResolutionMessage == null || !adsMediaSource.getMediaItem().equals(((PlayerMessage) Util.castNonNull(this.pendingAssetListResolutionMessage)).getPayload())) {
            return;
        }
        cancelPendingAssetListResolutionMessage();
    }

    public class LoaderCallback implements Loader.Callback<ParsingLoadable<AssetList>> {
        private final AssetListData assetListData;
        private final Timeline.Window window = new Timeline.Window();

        public LoaderCallback(AssetListData assetListData) {
            this.assetListData = assetListData;
        }

        private void handleAssetResolutionFailed(final IOException iOException, final boolean z) {
            HlsInterstitialsAdsLoader.this.notifyAssetResolutionFailed(this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup);
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.d
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    this.b.lambda$handleAssetResolutionFailed$2(iOException, z, (HlsInterstitialsAdsLoader.Listener) obj);
                }
            });
            maybeContinueAssetResolution();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$handleAssetResolutionFailed$2(IOException iOException, boolean z, Listener listener) {
            listener.onAssetListLoadFailed(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, iOException, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLoadCompleted$0(Listener listener) {
            listener.onAssetListLoadFailed(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, null, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLoadCompleted$1(AssetList assetList, Listener listener) {
            listener.onAssetListLoadCompleted(this.assetListData.mediaItem, this.assetListData.adsId, this.assetListData.adGroupIndex, this.assetListData.adIndexInAdGroup, assetList);
        }

        private void maybeContinueAssetResolution() {
            ExoPlayer exoPlayer = HlsInterstitialsAdsLoader.this.player;
            if (exoPlayer == null || exoPlayer.getPlaybackState() == 1 || !this.assetListData.mediaItem.equals(exoPlayer.getCurrentMediaItem())) {
                return;
            }
            long jMsToUs = Util.msToUs(exoPlayer.getContentPosition());
            Timeline currentTimeline = exoPlayer.getCurrentTimeline();
            int currentMediaItemIndex = exoPlayer.getCurrentMediaItemIndex();
            HlsInterstitialsAdsLoader.this.maybeExecuteOrSetNextAssetListResolutionMessage(this.assetListData.adsId, currentTimeline, currentMediaItemIndex, currentTimeline.getWindow(currentMediaItemIndex, this.window).positionInFirstPeriodUs, jMsToUs);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<AssetList> parsingLoadable, long j, long j2) {
            final AssetList result = parsingLoadable.getResult();
            AdPlaybackState adPlaybackState = HlsInterstitialsAdsLoader.this.contentMediaSourceAdDataHolder.getAdPlaybackState(this.assetListData.adsId);
            if ((adPlaybackState != null ? adPlaybackState.getAdGroup(this.assetListData.adGroupIndex).states[this.assetListData.adIndexInAdGroup] : 4) != 0) {
                maybeContinueAssetResolution();
                HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.e
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        this.b.lambda$onLoadCompleted$0((HlsInterstitialsAdsLoader.Listener) obj);
                    }
                });
                return;
            }
            int i = 0;
            if (result == null || result.assets.isEmpty()) {
                handleAssetResolutionFailed(new IOException("empty asset list"), false);
                return;
            }
            adPlaybackState.getClass();
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(this.assetListData.adGroupIndex);
            long j3 = adGroup.durationsUs[this.assetListData.adIndexInAdGroup];
            long j4 = C.TIME_UNSET;
            long j5 = 0;
            long j6 = j3 != C.TIME_UNSET ? adGroup.durationsUs[this.assetListData.adIndexInAdGroup] : 0L;
            int i2 = adGroup.count;
            if (result.assets.size() > 1) {
                adPlaybackState = adPlaybackState.withAdCount(this.assetListData.adGroupIndex, (result.assets.size() + i2) - 1);
                adGroup = adPlaybackState.getAdGroup(this.assetListData.adGroupIndex);
            }
            int i3 = this.assetListData.adIndexInAdGroup;
            long[] jArr = (long[]) adGroup.durationsUs.clone();
            while (i < result.assets.size()) {
                Asset asset = result.assets.get(i);
                if (i > 0) {
                    i3 = (i2 + i) - 1;
                }
                long j7 = j4;
                long j8 = asset.durationUs;
                jArr[i3] = j8;
                j5 += j8;
                adPlaybackState = adPlaybackState.withAvailableAdMediaItem(this.assetListData.adGroupIndex, i3, new MediaItem.Builder().setUri(asset.uri).setMimeType(MimeTypes.APPLICATION_M3U8).build());
                if (result.skipInfo != null) {
                    adPlaybackState = adPlaybackState.withAdSkipInfo(this.assetListData.adGroupIndex, i3, result.skipInfo);
                }
                i++;
                j4 = j7;
            }
            long j9 = j4;
            AdPlaybackState adPlaybackStateWithAdDurationsUs = adPlaybackState.withAdDurationsUs(this.assetListData.adGroupIndex, jArr);
            if (this.assetListData.interstitial.resumeOffsetUs == j9) {
                adPlaybackStateWithAdDurationsUs = adPlaybackStateWithAdDurationsUs.withContentResumeOffsetUs(this.assetListData.adGroupIndex, (adPlaybackStateWithAdDurationsUs.getAdGroup(this.assetListData.adGroupIndex).contentResumeOffsetUs - j6) + j5);
            }
            HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(this.assetListData.adsId, adPlaybackStateWithAdDurationsUs);
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.f
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    this.b.lambda$onLoadCompleted$1(result, (HlsInterstitialsAdsLoader.Listener) obj);
                }
            });
            maybeContinueAssetResolution();
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<AssetList> parsingLoadable, long j, long j2, boolean z) {
            handleAssetResolutionFailed(null, true);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<AssetList> parsingLoadable, long j, long j2, IOException iOException, int i) {
            handleAssetResolutionFailed(iOException, false);
            return Loader.DONT_RETRY;
        }
    }

    public HlsInterstitialsAdsLoader(Context context) {
        this(new DefaultDataSource.Factory(context));
    }

    public void addAdResumptionState(AdsResumptionState adsResumptionState) {
        addAdResumptionState(adsResumptionState.adsId, adsResumptionState.adPlaybackState);
    }

    public static final class AdsMediaSourceFactory implements MediaSource.Factory {
        private final AdViewProvider adViewProvider;
        private final HlsInterstitialsAdsLoader adsLoader;
        private final MediaSource.Factory mediaSourceFactory;

        private AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, Context context, MediaSource.Factory factory, AdViewProvider adViewProvider) {
            boolean z = true;
            o8.e((context == null && factory == null) ? false : true);
            this.adsLoader = hlsInterstitialsAdsLoader;
            if (factory == null) {
                context.getClass();
                factory = new HlsMediaSource.Factory(new DefaultDataSource.Factory(context));
            }
            this.mediaSourceFactory = factory;
            this.adViewProvider = adViewProvider;
            for (int i : factory.getSupportedTypes()) {
                if (i == 2) {
                    o8.r(z);
                }
            }
            z = false;
            o8.r(z);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource createMediaSource(MediaItem mediaItem) {
            mediaItem.localConfiguration.getClass();
            MediaSource mediaSourceCreateMediaSource = this.mediaSourceFactory.createMediaSource(mediaItem);
            MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
            if (adsConfiguration == null) {
                return mediaSourceCreateMediaSource;
            }
            if (!(adsConfiguration.adsId instanceof String)) {
                fg.c("Please use an AdsConfiguration with an adsId of type String when using HlsInterstitialsAdsLoader");
                return null;
            }
            DataSpec dataSpec = new DataSpec(mediaItem.localConfiguration.adsConfiguration.adTagUri);
            Object obj = mediaItem.localConfiguration.adsConfiguration.adsId;
            obj.getClass();
            return new AdsMediaSource(mediaSourceCreateMediaSource, dataSpec, obj, this.mediaSourceFactory, this.adsLoader, this.adViewProvider, false);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, MediaSource.Factory factory) {
            this(hlsInterstitialsAdsLoader, null, factory, adViewProvider);
        }

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, Context context) {
            this(hlsInterstitialsAdsLoader, context, null, adViewProvider);
        }
    }
}
