package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.m96;
import defpackage.mi2;
import defpackage.o8;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 2000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 1000;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 26214400;
    public static final int DEFAULT_MAX_BUFFER_FOR_LOCAL_PLAYBACK_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_SIZE = 210239488;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS_FOR_LOCAL_PLAYBACK = true;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD = 144179200;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK = 19660800;
    public static final com.google.common.collect.j<String> LOCAL_PLAYBACK_SCHEMES;
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferForLocalPlaybackUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackForLocalPlaybackUs;
    private final long bufferForPlaybackUs;
    private final ConcurrentHashMap<PlayerId, PlayerLoadingState> loadingStates;
    private final long maxBufferForLocalPlaybackUs;
    private final long maxBufferUs;
    private final long minBufferForLocalPlaybackUs;
    private final long minBufferUs;
    private final Timeline.Period period;
    private final com.google.common.collect.l<String, Integer> playerTargetBufferBytesOverwrites;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
    private final boolean retainBackBufferFromKeyframe;
    private final int targetBufferBytesOverwrite;
    private long threadId;
    private final Timeline.Window window;

    public static final class Builder {
        private DefaultAllocator allocator;
        private int backBufferDurationMs;
        private int bufferForPlaybackAfterRebufferForLocalPlaybackMs;
        private int bufferForPlaybackAfterRebufferMs;
        private int bufferForPlaybackForLocalPlaybackMs;
        private int bufferForPlaybackMs;
        private boolean buildCalled;
        private int maxBufferForLocalPlaybackMs;
        private int maxBufferMs;
        private int minBufferForLocalPlaybackMs;
        private int minBufferMs;
        private Boolean onlyGenericConfigurationMethodsCalled;
        private final HashMap<String, Integer> playerTargetBufferBytes;
        private boolean prioritizeTimeOverSizeThresholds;
        private boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
        private boolean retainBackBufferFromKeyframe;
        private int targetBufferBytes;

        public Builder() {
            HashMap<String, Integer> map = new HashMap<>();
            this.playerTargetBufferBytes = map;
            map.put(PlayerId.PRELOAD.name, Integer.valueOf(DefaultLoadControl.DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD));
            this.minBufferMs = 50000;
            this.minBufferForLocalPlaybackMs = 1000;
            this.maxBufferMs = 50000;
            this.maxBufferForLocalPlaybackMs = 50000;
            this.bufferForPlaybackMs = 1000;
            this.bufferForPlaybackForLocalPlaybackMs = 1000;
            this.bufferForPlaybackAfterRebufferMs = 2000;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = 1000;
            this.targetBufferBytes = -1;
            this.prioritizeTimeOverSizeThresholds = false;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = true;
            this.backBufferDurationMs = 0;
            this.retainBackBufferFromKeyframe = false;
        }

        public DefaultLoadControl build() {
            o8.r(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            Boolean bool = this.onlyGenericConfigurationMethodsCalled;
            if (bool != null && bool.booleanValue()) {
                this.minBufferForLocalPlaybackMs = this.minBufferMs;
                this.maxBufferForLocalPlaybackMs = this.maxBufferMs;
                this.bufferForPlaybackForLocalPlaybackMs = this.bufferForPlaybackMs;
                this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = this.bufferForPlaybackAfterRebufferMs;
                this.prioritizeTimeOverSizeThresholdsForLocalPlayback = this.prioritizeTimeOverSizeThresholds;
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.minBufferForLocalPlaybackMs, this.maxBufferMs, this.maxBufferForLocalPlaybackMs, this.bufferForPlaybackMs, this.bufferForPlaybackForLocalPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.bufferForPlaybackAfterRebufferForLocalPlaybackMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.prioritizeTimeOverSizeThresholdsForLocalPlayback, this.backBufferDurationMs, this.retainBackBufferFromKeyframe, this.playerTargetBufferBytes);
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            o8.r(!this.buildCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBackBuffer(int i, boolean z) {
            o8.r(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i, 0, "backBufferDurationMs", CommonUrlParts.Values.FALSE_INTEGER);
            this.backBufferDurationMs = i;
            this.retainBackBufferFromKeyframe = z;
            return this;
        }

        public Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
            o8.r(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i;
            this.maxBufferMs = i2;
            this.bufferForPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferMs = i4;
            this.minBufferForLocalPlaybackMs = i;
            this.maxBufferForLocalPlaybackMs = i2;
            this.bufferForPlaybackForLocalPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = i4;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setBufferDurationsMsForLocalPlayback(int i, int i2, int i3, int i4) {
            o8.r(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferForLocalPlaybackMs = i;
            this.maxBufferForLocalPlaybackMs = i2;
            this.bufferForPlaybackForLocalPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = i4;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setBufferDurationsMsForStreaming(int i, int i2, int i3, int i4) {
            o8.r(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i;
            this.maxBufferMs = i2;
            this.bufferForPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferMs = i4;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setPlayerTargetBufferBytes(String str, int i) {
            o8.r(!this.buildCalled);
            this.playerTargetBufferBytes.put(str, Integer.valueOf(i));
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            o8.r(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = Boolean.TRUE;
            }
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForLocalPlayback(boolean z) {
            o8.r(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForStreaming(boolean z) {
            o8.r(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            this.onlyGenericConfigurationMethodsCalled = Boolean.FALSE;
            return this;
        }

        public Builder setTargetBufferBytes(int i) {
            o8.r(!this.buildCalled);
            this.targetBufferBytes = i;
            return this;
        }
    }

    public static class PlayerLoadingState {
        private int allocatedCounts;
        public boolean isLoading;
        public int referenceCount = 1;
        public int targetBufferBytes;

        public synchronized void decreaseAllocatedCounts() {
            this.allocatedCounts--;
        }

        public synchronized int getAllocatedCounts() {
            return this.allocatedCounts;
        }

        public synchronized void increaseAllocatedCounts() {
            this.allocatedCounts++;
        }
    }

    static {
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
        Object[] objArr = {"file", FirebaseAnalytics.Param.CONTENT, "data", "android.resource", RawResourceDataSource.RAW_RESOURCE_SCHEME, "asset"};
        m96.b(6, objArr);
        LOCAL_PLAYBACK_SCHEMES = com.google.common.collect.j.k(6, objArr);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z, boolean z2, int i10, boolean z3, Map<String, Integer> map) {
        assertGreaterOrEqual(i5, 0, "bufferForPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
        assertGreaterOrEqual(i6, 0, "bufferForPlaybackForLocalPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
        assertGreaterOrEqual(i7, 0, "bufferForPlaybackAfterRebufferMs", CommonUrlParts.Values.FALSE_INTEGER);
        assertGreaterOrEqual(i8, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", CommonUrlParts.Values.FALSE_INTEGER);
        assertGreaterOrEqual(i, i5, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i2, i6, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        assertGreaterOrEqual(i, i7, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i2, i8, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        assertGreaterOrEqual(i3, i, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(i4, i2, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        assertGreaterOrEqual(i10, 0, "backBufferDurationMs", CommonUrlParts.Values.FALSE_INTEGER);
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.msToUs(i);
        this.minBufferForLocalPlaybackUs = Util.msToUs(i2);
        this.maxBufferUs = Util.msToUs(i3);
        this.maxBufferForLocalPlaybackUs = Util.msToUs(i4);
        this.bufferForPlaybackUs = Util.msToUs(i5);
        this.bufferForPlaybackForLocalPlaybackUs = Util.msToUs(i6);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(i7);
        this.bufferForPlaybackAfterRebufferForLocalPlaybackUs = Util.msToUs(i8);
        this.targetBufferBytesOverwrite = i9;
        this.prioritizeTimeOverSizeThresholds = z;
        this.prioritizeTimeOverSizeThresholdsForLocalPlayback = z2;
        this.backBufferDurationUs = Util.msToUs(i10);
        this.retainBackBufferFromKeyframe = z3;
        this.loadingStates = new ConcurrentHashMap<>();
        this.playerTargetBufferBytesOverwrites = com.google.common.collect.l.b(map);
        this.threadId = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertGreaterOrEqual(int i, int i2, String str, String str2) {
        o8.i(i >= i2, "%s cannot be less than %s", str, str2);
    }

    private long getBufferForPlaybackAfterRebufferUs(boolean z) {
        return z ? this.bufferForPlaybackAfterRebufferForLocalPlaybackUs : this.bufferForPlaybackAfterRebufferUs;
    }

    private long getBufferForPlaybackUs(boolean z) {
        return z ? this.bufferForPlaybackForLocalPlaybackUs : this.bufferForPlaybackUs;
    }

    private static int getDefaultBufferSize(int i, boolean z) {
        switch (i) {
            case -2:
                return 0;
            case -1:
                return 13107200;
            case 0:
                return DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                return z ? DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK : DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
                return 131072;
            case 4:
                return DEFAULT_IMAGE_BUFFER_SIZE;
            case 5:
            case 6:
                return 131072;
            default:
                mi2.b();
                return 0;
        }
    }

    private long getMaxBufferUs(boolean z) {
        return z ? this.maxBufferForLocalPlaybackUs : this.maxBufferUs;
    }

    private long getMinBufferUs(boolean z) {
        return z ? this.minBufferForLocalPlaybackUs : this.minBufferUs;
    }

    private int getTargetBufferBytes(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        playerLoadingState.getClass();
        return playerLoadingState.targetBufferBytes;
    }

    private int getTargetBufferBytesOverwrite(PlayerId playerId) {
        Integer num = this.playerTargetBufferBytesOverwrites.get(playerId.name);
        return (num == null || num.intValue() == -1) ? this.targetBufferBytesOverwrite : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalBufferBytesAllocated(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        playerLoadingState.getClass();
        return this.allocator.getIndividualAllocationLength() * playerLoadingState.getAllocatedCounts();
    }

    private boolean isLocalPlayback(LoadControl.Parameters parameters) {
        MediaItem.LocalConfiguration localConfiguration = parameters.timeline.getWindow(parameters.timeline.getPeriodByUid(parameters.mediaPeriodId.periodUid, this.period).windowIndex, this.window).mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return false;
        }
        String scheme = localConfiguration.uri.getScheme();
        return TextUtils.isEmpty(scheme) || LOCAL_PLAYBACK_SCHEMES.contains(scheme);
    }

    private boolean prioritizeTimeOverSizeThresholds(boolean z) {
        return z ? this.prioritizeTimeOverSizeThresholdsForLocalPlayback : this.prioritizeTimeOverSizeThresholds;
    }

    private void removePlayer(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState != null) {
            int i = playerLoadingState.referenceCount - 1;
            playerLoadingState.referenceCount = i;
            if (i == 0) {
                this.loadingStates.remove(playerId);
                updateAllocator();
            }
        }
    }

    private void resetPlayerLoadingState(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        playerLoadingState.getClass();
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(playerId);
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = 13107200;
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        playerLoadingState.isLoading = false;
    }

    private void updateAllocator() {
        boolean zIsEmpty = this.loadingStates.isEmpty();
        DefaultAllocator defaultAllocator = this.allocator;
        if (zIsEmpty) {
            defaultAllocator.reset();
        } else {
            defaultAllocator.setTargetBufferSize(calculateTotalTargetBufferBytes());
        }
    }

    public int calculateTargetBufferBytes(LoadControl.Parameters parameters, ExoTrackSelection[] exoTrackSelectionArr) {
        int iCalculateTargetBufferBytes = calculateTargetBufferBytes(exoTrackSelectionArr);
        if (iCalculateTargetBufferBytes != -1) {
            return iCalculateTargetBufferBytes;
        }
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        int defaultBufferSize = 0;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                defaultBufferSize += getDefaultBufferSize(exoTrackSelection.getTrackGroup().type, zIsLocalPlayback);
            }
        }
        return Util.constrainValue(defaultBufferSize, 13107200, DEFAULT_MAX_BUFFER_SIZE);
    }

    public int calculateTotalTargetBufferBytes() {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().targetBufferBytes;
        }
        return i;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator(PlayerId playerId) {
        return new PlayerIdFilteringAllocatorImpl(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs(PlayerId playerId) {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared(PlayerId playerId) {
        long id = Thread.currentThread().getId();
        long j = this.threadId;
        o8.s(j == -1 || j == id, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.threadId = id;
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState == null) {
            this.loadingStates.put(playerId, new PlayerLoadingState());
        } else {
            playerLoadingState.referenceCount++;
        }
        resetPlayerLoadingState(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased(PlayerId playerId) {
        removePlayer(playerId);
        if (this.loadingStates.isEmpty()) {
            this.threadId = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped(PlayerId playerId) {
        removePlayer(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onTracksSelected(LoadControl.Parameters parameters, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(parameters.playerId);
        PlayerLoadingState playerLoadingState = this.loadingStates.get(parameters.playerId);
        playerLoadingState.getClass();
        if (targetBufferBytesOverwrite == -1) {
            targetBufferBytesOverwrite = calculateTargetBufferBytes(parameters, exoTrackSelectionArr);
        }
        playerLoadingState.targetBufferBytes = targetBufferBytesOverwrite;
        updateAllocator();
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean retainBackBufferFromKeyframe(PlayerId playerId) {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinueLoading(LoadControl.Parameters parameters) {
        PlayerId playerId = parameters.playerId;
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        playerLoadingState.getClass();
        boolean z = getTotalBufferBytesAllocated(playerId) >= getTargetBufferBytes(playerId);
        if (playerId.equals(PlayerId.PRELOAD)) {
            return !z;
        }
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        long minBufferUs = getMinBufferUs(zIsLocalPlayback);
        long maxBufferUs = getMaxBufferUs(zIsLocalPlayback);
        float f = parameters.playbackSpeed;
        if (f > 1.0f) {
            minBufferUs = Math.min(Util.getMediaDurationForPlayoutDuration(minBufferUs, f), maxBufferUs);
        }
        long jMax = Math.max(minBufferUs, 500000L);
        long j = parameters.bufferedDurationUs;
        if (j < jMax) {
            boolean z2 = prioritizeTimeOverSizeThresholds(zIsLocalPlayback) || !z;
            playerLoadingState.isLoading = z2;
            if (!z2 && parameters.bufferedDurationUs < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j >= maxBufferUs || z) {
            playerLoadingState.isLoading = false;
        }
        return playerLoadingState.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinuePreloading(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j) {
        Iterator<PlayerLoadingState> it = this.loadingStates.values().iterator();
        while (it.hasNext()) {
            if (it.next().isLoading) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldStartPlayback(LoadControl.Parameters parameters) {
        boolean zIsLocalPlayback = isLocalPlayback(parameters);
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(parameters.bufferedDurationUs, parameters.playbackSpeed);
        long bufferForPlaybackAfterRebufferUs = parameters.rebuffering ? getBufferForPlaybackAfterRebufferUs(zIsLocalPlayback) : getBufferForPlaybackUs(zIsLocalPlayback);
        long j = parameters.targetLiveOffsetUs;
        if (j != C.TIME_UNSET) {
            bufferForPlaybackAfterRebufferUs = Math.min(j / 2, bufferForPlaybackAfterRebufferUs);
        }
        if (bufferForPlaybackAfterRebufferUs <= 0 || playoutDurationForMediaDuration >= bufferForPlaybackAfterRebufferUs) {
            return true;
        }
        return !prioritizeTimeOverSizeThresholds(zIsLocalPlayback) && getTotalBufferBytesAllocated(parameters.playerId) >= getTargetBufferBytes(parameters.playerId);
    }

    public final class PlayerIdFilteringAllocatorImpl implements PlayerIdAwareAllocator {
        private final HashMap<Allocation, PlayerId> allocationPlayerIdMap = new HashMap<>();
        private PlayerId playerId;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.playerId = playerId;
        }

        private void releaseInternal(Allocation allocation) {
            PlayerId playerIdRemove = this.allocationPlayerIdMap.remove(allocation);
            playerIdRemove.getClass();
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(playerIdRemove);
            if (playerLoadingState != null) {
                playerLoadingState.decreaseAllocatedCounts();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized Allocation allocate() {
            Allocation allocationAllocate;
            allocationAllocate = DefaultLoadControl.this.allocator.allocate();
            this.allocationPlayerIdMap.put(allocationAllocate, this.playerId);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(this.playerId);
            if (playerLoadingState != null) {
                playerLoadingState.increaseAllocatedCounts();
            }
            return allocationAllocate;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getIndividualAllocationLength() {
            return DefaultLoadControl.this.allocator.getIndividualAllocationLength();
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator, androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getTotalBytesAllocated() {
            return DefaultLoadControl.this.getTotalBufferBytesAllocated(this.playerId);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.allocator.release(allocationNode);
            while (allocationNode != null) {
                releaseInternal(allocationNode.getAllocation());
                allocationNode = allocationNode.next();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator
        public synchronized void setPlayerId(PlayerId playerId) {
            this.playerId = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void trim() {
            DefaultLoadControl.this.allocator.trim();
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocation allocation) {
            DefaultLoadControl.this.allocator.release(allocation);
            releaseInternal(allocation);
        }
    }

    @Deprecated
    public int calculateTargetBufferBytes(ExoTrackSelection[] exoTrackSelectionArr) {
        return -1;
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 1000, 50000, 50000, 1000, 1000, 2000, 1000, -1, false, true, 0, false);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z, boolean z2, int i10, boolean z3) {
        this(defaultAllocator, i, i2, i3, i4, i5, i6, i7, i8, i9, z, z2, i10, z3, com.google.common.collect.x.h);
    }
}
