package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class PickVisualMediaRequestKt {
    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.MediaCapabilities mediaCapabilities, long j, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
        visualMediaType.getClass();
        defaultTab.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).setMaxItems(i).setOrderedSelection(z).setDefaultTab(defaultTab).setAccentColor(j).setMediaCapabilitiesForTranscoding(mediaCapabilities).build();
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.MediaCapabilities mediaCapabilities, long j, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType2 = visualMediaType;
        if ((i2 & 8) != 0) {
            i = ActivityResultContracts.PickMultipleVisualMedia.Companion.getMaxItems$activity();
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 32) != 0) {
            defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(mediaCapabilities, j, visualMediaType2, i3, z2, defaultTab);
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            i = ActivityResultContracts.PickMultipleVisualMedia.Companion.getMaxItems$activity();
        }
        return PickVisualMediaRequest(visualMediaType, i);
    }

    @ul2
    public static final /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i) {
        visualMediaType.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).setMaxItems(i).build();
    }

    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
        visualMediaType.getClass();
        defaultTab.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).setMaxItems(i).setOrderedSelection(z).setDefaultTab(defaultTab).build();
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            i = ActivityResultContracts.PickMultipleVisualMedia.Companion.getMaxItems$activity();
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        if ((i2 & 8) != 0) {
            defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(visualMediaType, i, z, defaultTab);
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(long j, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType2 = visualMediaType;
        if ((i2 & 4) != 0) {
            i = ActivityResultContracts.PickMultipleVisualMedia.Companion.getMaxItems$activity();
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(j, visualMediaType2, i3, z2, defaultTab);
    }

    public static final PickVisualMediaRequest PickVisualMediaRequest(long j, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
        visualMediaType.getClass();
        defaultTab.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).setMaxItems(i).setOrderedSelection(z).setDefaultTab(defaultTab).setAccentColor(j).build();
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.MediaCapabilities mediaCapabilities, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        if ((i2 & 4) != 0) {
            i = ActivityResultContracts.PickMultipleVisualMedia.Companion.getMaxItems$activity();
        }
        if ((i2 & 8) != 0) {
            z = false;
        }
        if ((i2 & 16) != 0) {
            defaultTab = ActivityResultContracts.PickVisualMedia.DefaultTab.PhotosTab.INSTANCE;
        }
        return PickVisualMediaRequest(mediaCapabilities, visualMediaType, i, z, defaultTab);
    }

    public static /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest$default(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, Object obj) {
        if ((i & 1) != 0) {
            visualMediaType = ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE;
        }
        return PickVisualMediaRequest(visualMediaType);
    }

    public static final PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.MediaCapabilities mediaCapabilities, ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType, int i, boolean z, ActivityResultContracts.PickVisualMedia.DefaultTab defaultTab) {
        visualMediaType.getClass();
        defaultTab.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).setMaxItems(i).setOrderedSelection(z).setDefaultTab(defaultTab).setMediaCapabilitiesForTranscoding(mediaCapabilities).build();
    }

    @ul2
    public static final /* synthetic */ PickVisualMediaRequest PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.VisualMediaType visualMediaType) {
        visualMediaType.getClass();
        return new PickVisualMediaRequest.Builder().setMediaType(visualMediaType).build();
    }
}
