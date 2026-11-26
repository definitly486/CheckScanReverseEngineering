package androidx.activity.result.contract;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.media.ApplicationMediaCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.camera.video.VideoSpec;
import androidx.core.content.ContextCompat;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import defpackage.ah;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.m05;
import defpackage.me0;
import defpackage.mx2;
import defpackage.n05;
import defpackage.ox2;
import defpackage.qn1;
import defpackage.ul2;
import defpackage.yr;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityResultContracts {

    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            Intent intentAddFlags = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", uri).addFlags(1).addFlags(2);
            intentAddFlags.getClass();
            return intentAddFlags;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i, Intent intent) {
            return Boolean.valueOf(i == -1);
        }
    }

    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            context.getClass();
            str.getClass();
            Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(str);
            type.getClass();
            return type;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            context.getClass();
            str.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", strArr).setType("*/*");
            type.getClass();
            return type;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", strArr).putExtra("android.intent.extra.ALLOW_MULTIPLE", true).setType("*/*");
            type.getClass();
            return type;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i, Intent intent) {
            List<Uri> clipDataUris$activity;
            if (i != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity = GetMultipleContents.Companion.getClipDataUris$activity(intent)) == null) ? kx2.b : clipDataUris$activity;
        }
    }

    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Void r2) {
            context.getClass();
            Intent type = new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/contact");
            type.getClass();
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static class PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {
        public static final String ACTION_SYSTEM_FALLBACK_PICK_IMAGES = "androidx.activity.result.contract.action.PICK_IMAGES";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR = "androidx.activity.result.contract.extra.PICK_IMAGES_ACCENT_COLOR";
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER = "androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER";
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB = "androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB";
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX = "androidx.activity.result.contract.extra.PICK_IMAGES_MAX";
        public static final String GMS_ACTION_PICK_IMAGES = "com.google.android.gms.provider.action.PICK_IMAGES";
        public static final String GMS_EXTRA_PICK_IMAGES_MAX = "com.google.android.gms.provider.extra.PICK_IMAGES_MAX";

        public static final class ImageAndVideo implements VisualMediaType {
            public static final ImageAndVideo INSTANCE = new ImageAndVideo();

            private ImageAndVideo() {
            }
        }

        /* JADX INFO: loaded from: classes5.dex */
        public static final class ImageOnly implements VisualMediaType {
            public static final ImageOnly INSTANCE = new ImageOnly();

            private ImageOnly() {
            }
        }

        public static final class SingleMimeType implements VisualMediaType {
            private final String mimeType;

            public SingleMimeType(String str) {
                str.getClass();
                this.mimeType = str;
            }

            public final String getMimeType() {
                return this.mimeType;
            }
        }

        public static final class VideoOnly implements VisualMediaType {
            public static final VideoOnly INSTANCE = new VideoOnly();

            private VideoOnly() {
            }
        }

        public interface VisualMediaType {
        }

        @ul2
        public static final boolean isPhotoPickerAvailable() {
            return Companion.isPhotoPickerAvailable();
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            MediaCapabilities mediaCapabilitiesForTranscoding;
            context.getClass();
            pickVisualMediaRequest.getClass();
            Companion companion = Companion;
            if (companion.isSystemPickerAvailable$activity()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
                intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", pickVisualMediaRequest.getDefaultTab().getValue());
                if (pickVisualMediaRequest.isCustomAccentColorApplied()) {
                    intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", pickVisualMediaRequest.getAccentColor());
                }
                if (Build.VERSION.SDK_INT >= 33 && (mediaCapabilitiesForTranscoding = pickVisualMediaRequest.getMediaCapabilitiesForTranscoding()) != null) {
                    intent.putExtra("android.provider.extra.MEDIA_CAPABILITIES", mediaCapabilitiesForTranscoding.toApplicationMediaCapabilities$activity());
                }
                return intent;
            }
            if (!companion.isSystemFallbackPickerAvailable$activity(context)) {
                Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent2.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
                if (intent2.getType() == null) {
                    intent2.setType("*/*");
                    intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", VideoSpec.MIME_TYPE_UNSPECIFIED});
                }
                return intent2;
            }
            ResolveInfo systemFallbackPicker$activity = companion.getSystemFallbackPicker$activity(context);
            if (systemFallbackPicker$activity == null) {
                ah.f("Required value was null.");
                return null;
            }
            ActivityInfo activityInfo = systemFallbackPicker$activity.activityInfo;
            Intent intent3 = new Intent(ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
            intent3.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
            intent3.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
            intent3.putExtra(EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB, pickVisualMediaRequest.getDefaultTab().getValue());
            if (pickVisualMediaRequest.isCustomAccentColorApplied()) {
                intent3.putExtra(EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR, pickVisualMediaRequest.getAccentColor());
            }
            return intent3;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            context.getClass();
            pickVisualMediaRequest.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent == null) {
                return null;
            }
            Uri data = intent.getData();
            return data == null ? (Uri) qn1.V(GetMultipleContents.Companion.getClipDataUris$activity(intent)) : data;
        }

        public static final class MediaCapabilities {
            public static final Companion Companion = new Companion(null);
            public static final int TYPE_DOLBY_VISION = 3;
            public static final int TYPE_HDR10 = 1;
            public static final int TYPE_HDR10_PLUS = 2;
            public static final int TYPE_HLG10 = 0;
            private Set<Integer> supportedHdrTypes = ox2.b;

            public static final class Builder {
                private Set<Integer> supportedHdrTypes = new LinkedHashSet();

                public final Builder addSupportedHdrType(int i) {
                    this.supportedHdrTypes.add(Integer.valueOf(i));
                    return this;
                }

                public final MediaCapabilities build() {
                    MediaCapabilities mediaCapabilities = new MediaCapabilities();
                    mediaCapabilities.setSupportedHdrTypes$activity(this.supportedHdrTypes);
                    return mediaCapabilities;
                }
            }

            public final Set<Integer> getSupportedHdrTypes() {
                return this.supportedHdrTypes;
            }

            public final void setSupportedHdrTypes$activity(Set<Integer> set) {
                set.getClass();
                this.supportedHdrTypes = set;
            }

            public final ApplicationMediaCapabilities toApplicationMediaCapabilities$activity() {
                ApplicationMediaCapabilities.Builder builder = new ApplicationMediaCapabilities.Builder();
                builder.addSupportedVideoMimeType(MimeTypes.VIDEO_H265);
                Iterator<T> it = this.supportedHdrTypes.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Number) it.next()).intValue();
                    if (iIntValue == 0) {
                        builder.addSupportedHdrType("android.media.feature.hdr.hlg");
                    } else if (iIntValue == 1) {
                        builder.addSupportedHdrType("android.media.feature.hdr.hdr10");
                    } else if (iIntValue == 2) {
                        builder.addSupportedHdrType("android.media.feature.hdr.hdr10_plus");
                    } else if (iIntValue == 3) {
                        builder.addSupportedHdrType("android.media.feature.hdr.dolby_vision");
                    }
                }
                ApplicationMediaCapabilities applicationMediaCapabilitiesBuild = builder.build();
                applicationMediaCapabilitiesBuild.getClass();
                return applicationMediaCapabilitiesBuild;
            }

            public static final class Companion {

                @Target({ElementType.PARAMETER, ElementType.TYPE_USE})
                @Retention(RetentionPolicy.SOURCE)
                public @interface HdrType {
                }

                public /* synthetic */ Companion(jh2 jh2Var) {
                    this();
                }

                private Companion() {
                }
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static /* synthetic */ void getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations() {
            }

            public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR$annotations() {
            }

            public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER$annotations() {
            }

            public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB$annotations() {
            }

            public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations() {
            }

            public final ResolveInfo getSystemFallbackPicker$activity(Context context) {
                context.getClass();
                return context.getPackageManager().resolveActivity(new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES), ParsableByteArray.INVALID_CODE_POINT);
            }

            public final String getVisualMimeType$activity(VisualMediaType visualMediaType) {
                visualMediaType.getClass();
                if (visualMediaType instanceof ImageOnly) {
                    return "image/*";
                }
                if (visualMediaType instanceof VideoOnly) {
                    return VideoSpec.MIME_TYPE_UNSPECIFIED;
                }
                if (visualMediaType instanceof SingleMimeType) {
                    return ((SingleMimeType) visualMediaType).getMimeType();
                }
                if (visualMediaType instanceof ImageAndVideo) {
                    return null;
                }
                me0.e();
                return null;
            }

            public final boolean isPhotoPickerAvailable(Context context) {
                context.getClass();
                return isSystemPickerAvailable$activity() || isSystemFallbackPickerAvailable$activity(context);
            }

            public final boolean isSystemFallbackPickerAvailable$activity(Context context) {
                context.getClass();
                return getSystemFallbackPicker$activity(context) != null;
            }

            public final boolean isSystemPickerAvailable$activity() {
                int i = Build.VERSION.SDK_INT;
                if (i >= 33) {
                    return true;
                }
                return i >= 30 && SdkExtensions.getExtensionVersion(30) >= 2;
            }

            private Companion() {
            }

            @ul2
            public final boolean isPhotoPickerAvailable() {
                return isSystemPickerAvailable$activity();
            }
        }

        public static abstract class DefaultTab {

            public static final class AlbumsTab extends DefaultTab {
                public static final AlbumsTab INSTANCE = new AlbumsTab();
                private static final int value = 0;

                private AlbumsTab() {
                    super(null);
                }

                @Override // androidx.activity.result.contract.ActivityResultContracts.PickVisualMedia.DefaultTab
                public int getValue() {
                    return value;
                }
            }

            public static final class PhotosTab extends DefaultTab {
                public static final PhotosTab INSTANCE = new PhotosTab();
                private static final int value = 1;

                private PhotosTab() {
                    super(null);
                }

                @Override // androidx.activity.result.contract.ActivityResultContracts.PickVisualMedia.DefaultTab
                public int getValue() {
                    return value;
                }
            }

            public /* synthetic */ DefaultTab(jh2 jh2Var) {
                this();
            }

            public abstract int getValue();

            private DefaultTab() {
            }
        }

        public static final boolean isPhotoPickerAvailable(Context context) {
            return Companion.isPhotoPickerAvailable(context);
        }
    }

    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            context.getClass();
            str.getClass();
            return RequestMultiplePermissions.Companion.createIntent$activity(new String[]{str});
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, String str) {
            context.getClass();
            str.getClass();
            if (ContextCompat.checkSelfPermission(context, str) == 0) {
                return new ActivityResultContract.SynchronousResult<>(Boolean.TRUE);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Boolean parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return Boolean.FALSE;
            }
            int[] intArrayExtra = intent.getIntArrayExtra(RequestMultiplePermissions.EXTRA_PERMISSION_GRANT_RESULTS);
            boolean z = false;
            if (intArrayExtra != null) {
                for (int i2 : intArrayExtra) {
                    if (i2 == 0) {
                        z = true;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            Intent intentAddFlags = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", uri).addFlags(1).addFlags(2);
            intentAddFlags.getClass();
            return intentAddFlags;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i, Intent intent) {
            return Boolean.valueOf(i == -1);
        }
    }

    @ul2
    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            Intent intentAddFlags = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", uri).addFlags(1).addFlags(2);
            intentAddFlags.getClass();
            return intentAddFlags;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Uri uri) {
            context.getClass();
            uri.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    private ActivityResultContracts() {
    }

    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {
        public static final Companion Companion = new Companion(null);

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(str).putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String str) {
            context.getClass();
            str.getClass();
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i, Intent intent) {
            List<Uri> clipDataUris$activity;
            if (i != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity = Companion.getClipDataUris$activity(intent)) == null) ? kx2.b : clipDataUris$activity;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final List<Uri> getClipDataUris$activity(Intent intent) {
                intent.getClass();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Uri data = intent.getData();
                if (data != null) {
                    linkedHashSet.add(data);
                }
                ClipData clipData = intent.getClipData();
                if (clipData == null && linkedHashSet.isEmpty()) {
                    return kx2.b;
                }
                if (clipData != null) {
                    int itemCount = clipData.getItemCount();
                    for (int i = 0; i < itemCount; i++) {
                        Uri uri = clipData.getItemAt(i).getUri();
                        if (uri != null) {
                            linkedHashSet.add(uri);
                        }
                    }
                }
                return new ArrayList(linkedHashSet);
            }

            private Companion() {
            }
        }
    }

    public static class PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {
        public static final Companion Companion = new Companion(null);
        private final int maxItems;

        public PickMultipleVisualMedia(int i) {
            this.maxItems = i;
            if (i > 1) {
                return;
            }
            fg.c("Max items must be higher than 1");
            throw null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            PickVisualMedia.MediaCapabilities mediaCapabilitiesForTranscoding;
            context.getClass();
            pickVisualMediaRequest.getClass();
            PickVisualMedia.Companion companion = PickVisualMedia.Companion;
            if (companion.isSystemPickerAvailable$activity()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
                int iMin = Math.min(this.maxItems, pickVisualMediaRequest.getMaxItems());
                if (iMin <= 1 || iMin > MediaStore.getPickImagesMaxLimit()) {
                    fg.c("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()");
                    return null;
                }
                intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", iMin);
                intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", pickVisualMediaRequest.getDefaultTab().getValue());
                intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", pickVisualMediaRequest.isOrderedSelection());
                if (pickVisualMediaRequest.isCustomAccentColorApplied()) {
                    intent.putExtra("android.provider.extra.PICK_IMAGES_ACCENT_COLOR", pickVisualMediaRequest.getAccentColor());
                }
                if (Build.VERSION.SDK_INT >= 33 && (mediaCapabilitiesForTranscoding = pickVisualMediaRequest.getMediaCapabilitiesForTranscoding()) != null) {
                    intent.putExtra("android.provider.extra.MEDIA_CAPABILITIES", mediaCapabilitiesForTranscoding.toApplicationMediaCapabilities$activity());
                }
                return intent;
            }
            if (!companion.isSystemFallbackPickerAvailable$activity(context)) {
                Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent2.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
                intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                if (intent2.getType() == null) {
                    intent2.setType("*/*");
                    intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", VideoSpec.MIME_TYPE_UNSPECIFIED});
                }
                return intent2;
            }
            ResolveInfo systemFallbackPicker$activity = companion.getSystemFallbackPicker$activity(context);
            if (systemFallbackPicker$activity == null) {
                ah.f("Required value was null.");
                return null;
            }
            ActivityInfo activityInfo = systemFallbackPicker$activity.activityInfo;
            Intent intent3 = new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
            intent3.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
            intent3.setType(companion.getVisualMimeType$activity(pickVisualMediaRequest.getMediaType()));
            int iMin2 = Math.min(this.maxItems, pickVisualMediaRequest.getMaxItems());
            if (iMin2 <= 1) {
                fg.c("Max items must be greater than 1");
                return null;
            }
            intent3.putExtra(PickVisualMedia.EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX, iMin2);
            intent3.putExtra(PickVisualMedia.EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_LAUNCH_TAB, pickVisualMediaRequest.getDefaultTab().getValue());
            intent3.putExtra(PickVisualMedia.EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_IN_ORDER, pickVisualMediaRequest.isOrderedSelection());
            if (pickVisualMediaRequest.isCustomAccentColorApplied()) {
                intent3.putExtra(PickVisualMedia.EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_ACCENT_COLOR, pickVisualMediaRequest.getAccentColor());
            }
            return intent3;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            context.getClass();
            pickVisualMediaRequest.getClass();
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i, Intent intent) {
            List<Uri> clipDataUris$activity;
            if (i != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity = GetMultipleContents.Companion.getClipDataUris$activity(intent)) == null) ? kx2.b : clipDataUris$activity;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final int getMaxItems$activity() {
                if (PickVisualMedia.Companion.isSystemPickerAvailable$activity()) {
                    return MediaStore.getPickImagesMaxLimit();
                }
                return Integer.MAX_VALUE;
            }

            private Companion() {
            }
        }

        public PickMultipleVisualMedia() {
            this(0, 1, null);
        }

        public /* synthetic */ PickMultipleVisualMedia(int i, int i2, jh2 jh2Var) {
            this((i2 & 1) != 0 ? Companion.getMaxItems$activity() : i);
        }
    }

    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {
        public static final String ACTION_REQUEST_PERMISSIONS = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_PERMISSIONS = "androidx.activity.result.contract.extra.PERMISSIONS";
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS";

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            return Companion.createIntent$activity(strArr);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> getSynchronousResult(Context context, String[] strArr) {
            context.getClass();
            strArr.getClass();
            if (strArr.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(mx2.b);
            }
            for (String str : strArr) {
                if (ContextCompat.checkSelfPermission(context, str) != 0) {
                    return null;
                }
            }
            int iB = m05.b(strArr.length);
            if (iB < 16) {
                iB = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
            for (String str2 : strArr) {
                linkedHashMap.put(str2, Boolean.TRUE);
            }
            return new ActivityResultContract.SynchronousResult<>(linkedHashMap);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Map<String, Boolean> parseResult(int i, Intent intent) {
            if (i == -1 && intent != null) {
                String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
                int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
                if (intArrayExtra != null && stringArrayExtra != null) {
                    ArrayList arrayList = new ArrayList(intArrayExtra.length);
                    for (int i2 : intArrayExtra) {
                        arrayList.add(Boolean.valueOf(i2 == 0));
                    }
                    return n05.k(qn1.z0(yr.G(stringArrayExtra), arrayList));
                }
            }
            return mx2.b;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Intent createIntent$activity(String[] strArr) {
                strArr.getClass();
                Intent intentPutExtra = new Intent(RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS).putExtra(RequestMultiplePermissions.EXTRA_PERMISSIONS, strArr);
                intentPutExtra.getClass();
                return intentPutExtra;
            }

            private Companion() {
            }
        }
    }

    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE";

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Intent intent) {
            context.getClass();
            intent.getClass();
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        public static final String ACTION_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST";
        public static final String EXTRA_SEND_INTENT_EXCEPTION = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION";

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
            context.getClass();
            intentSenderRequest.getClass();
            Intent intentPutExtra = new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            context.getClass();
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            if (uri != null) {
                intent.putExtra("android.provider.extra.INITIAL_URI", uri);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, Uri uri) {
            context.getClass();
            return null;
        }
    }

    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Void r2) {
            context.getClass();
            Intent intentAddFlags = new Intent("android.media.action.IMAGE_CAPTURE").addFlags(1).addFlags(2);
            intentAddFlags.getClass();
            return intentAddFlags;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Void r2) {
            context.getClass();
            return null;
        }
    }

    public static class CreateDocument extends ActivityResultContract<String, Uri> {
        private final String mimeType;

        public CreateDocument(String str) {
            str.getClass();
            this.mimeType = str;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent("android.intent.action.CREATE_DOCUMENT").setType(this.mimeType).putExtra("android.intent.extra.TITLE", str);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            context.getClass();
            str.getClass();
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (i != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @ul2
        public CreateDocument() {
            this("*/*");
        }
    }
}
