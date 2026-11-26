package androidx.camera.video.internal.config;

import android.os.Build;
import androidx.camera.core.DynamicRange;
import androidx.media3.common.MimeTypes;
import defpackage.b36;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.j59;
import defpackage.n05;
import defpackage.ru2;
import defpackage.su2;
import defpackage.tu2;
import defpackage.u00;
import defpackage.u96;
import defpackage.uu2;
import defpackage.vu2;
import defpackage.ws0;
import defpackage.wu2;
import defpackage.xi1;
import defpackage.yc2;
import defpackage.yr;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeFormatComboRegistry {
    public static final DynamicRangeFormatComboRegistry INSTANCE;
    private static final String MIMETYPE_AUDIO_OPUS_GATED;
    private static final String MIMETYPE_VIDEO_APV_GATED;
    private static final String MIMETYPE_VIDEO_AV1_GATED;
    private static final String MIMETYPE_VIDEO_DOLBY_VISION_GATED;
    private static final String MIMETYPE_VIDEO_HEVC_GATED;
    private static final String MIMETYPE_VIDEO_VP9_GATED;
    private static final cl4 registries$delegate;
    private static final cl4 standardMp4Audios$delegate;
    private static final cl4 standardWebmAudios$delegate;

    static {
        DynamicRangeFormatComboRegistry dynamicRangeFormatComboRegistry = new DynamicRangeFormatComboRegistry();
        INSTANCE = dynamicRangeFormatComboRegistry;
        MIMETYPE_VIDEO_HEVC_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.VIDEO_H265, 24);
        MIMETYPE_VIDEO_VP9_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.VIDEO_VP9, 24);
        MIMETYPE_AUDIO_OPUS_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.AUDIO_OPUS, 29);
        MIMETYPE_VIDEO_DOLBY_VISION_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.VIDEO_DOLBY_VISION, 33);
        MIMETYPE_VIDEO_AV1_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.VIDEO_AV1, 34);
        MIMETYPE_VIDEO_APV_GATED = dynamicRangeFormatComboRegistry.takeIf(MimeTypes.VIDEO_APV, 36);
        registries$delegate = new fh8(new ru2(0));
        standardMp4Audios$delegate = new fh8(new su2(0));
        standardWebmAudios$delegate = new fh8(new tu2(0));
    }

    private DynamicRangeFormatComboRegistry() {
    }

    private final FormatComboRegistry buildDolbyVisionRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new u00(2));
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildDolbyVisionRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(u96.j(MIMETYPE_VIDEO_DOLBY_VISION_GATED), INSTANCE.getStandardMp4Audios());
        return j59.a;
    }

    private final FormatComboRegistry buildHdr10PlusRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new uu2(0));
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildHdr10PlusRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(yr.G(new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED}), INSTANCE.getStandardMp4Audios());
        return j59.a;
    }

    private final FormatComboRegistry buildHdr10Registry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new ws0(2));
        builder.container(1, new yc2(1));
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildHdr10Registry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(yr.G(new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildHdr10Registry$lambda$0$1(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(u96.j(MIMETYPE_VIDEO_VP9_GATED), INSTANCE.getStandardWebmAudios());
        return j59.a;
    }

    private final FormatComboRegistry buildHlgRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new vu2(0));
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildHlgRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(yr.G(new String[]{MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return j59.a;
    }

    private final FormatComboRegistry buildSdrRegistry() {
        FormatComboRegistry.Builder builder = new FormatComboRegistry.Builder();
        builder.container(0, new wu2(0));
        builder.container(1, new xi1(1));
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildSdrRegistry$lambda$0$0(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(yr.G(new String[]{"video/avc", MimeTypes.VIDEO_MP4V, MimeTypes.VIDEO_H263, MIMETYPE_VIDEO_HEVC_GATED, MIMETYPE_VIDEO_DOLBY_VISION_GATED, MIMETYPE_VIDEO_AV1_GATED, MIMETYPE_VIDEO_APV_GATED}), INSTANCE.getStandardMp4Audios());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 buildSdrRegistry$lambda$0$1(FormatComboRegistry.Builder.ContainerScope containerScope) {
        containerScope.getClass();
        containerScope.support(yr.G(new String[]{MimeTypes.VIDEO_VP8, MIMETYPE_VIDEO_VP9_GATED}), INSTANCE.getStandardWebmAudios());
        return j59.a;
    }

    private final Map<DynamicRange, FormatComboRegistry> getRegistries() {
        return (Map) registries$delegate.getValue();
    }

    private final List<String> getStandardMp4Audios() {
        return (List) standardMp4Audios$delegate.getValue();
    }

    private final List<String> getStandardWebmAudios() {
        return (List) standardWebmAudios$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map registries_delegate$lambda$0() {
        DynamicRange dynamicRange = DynamicRange.SDR;
        DynamicRangeFormatComboRegistry dynamicRangeFormatComboRegistry = INSTANCE;
        return n05.f(new b36(dynamicRange, dynamicRangeFormatComboRegistry.buildSdrRegistry()), new b36(DynamicRange.HLG_10_BIT, dynamicRangeFormatComboRegistry.buildHlgRegistry()), new b36(DynamicRange.HDR10_10_BIT, dynamicRangeFormatComboRegistry.buildHdr10Registry()), new b36(DynamicRange.HDR10_PLUS_10_BIT, dynamicRangeFormatComboRegistry.buildHdr10PlusRegistry()), new b36(DynamicRange.DOLBY_VISION_8_BIT, dynamicRangeFormatComboRegistry.buildDolbyVisionRegistry()), new b36(DynamicRange.DOLBY_VISION_10_BIT, dynamicRangeFormatComboRegistry.buildDolbyVisionRegistry()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List standardMp4Audios_delegate$lambda$0() {
        return yr.G(new String[]{"audio/mp4a-latm", MimeTypes.AUDIO_AMR_NB, MimeTypes.AUDIO_AMR_WB});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List standardWebmAudios_delegate$lambda$0() {
        return yr.G(new String[]{MimeTypes.AUDIO_VORBIS, MIMETYPE_AUDIO_OPUS_GATED});
    }

    private final String takeIf(String str, int i) {
        if (Build.VERSION.SDK_INT >= i) {
            return str;
        }
        return null;
    }

    public final Set<DynamicRange> getDynamicRangesForVideoMime(String str) {
        str.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<DynamicRange, FormatComboRegistry> entry : getRegistries().entrySet()) {
            DynamicRange key = entry.getKey();
            if (!entry.getValue().getCombosForVideo(str).isEmpty()) {
                linkedHashSet.add(key);
            }
        }
        return linkedHashSet;
    }

    public final FormatComboRegistry getRegistry(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        return getRegistries().get(dynamicRange);
    }
}
