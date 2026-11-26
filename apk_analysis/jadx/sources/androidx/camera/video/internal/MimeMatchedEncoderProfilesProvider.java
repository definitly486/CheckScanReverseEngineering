package androidx.camera.video.internal;

import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.VideoSpec;
import defpackage.aa4;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MimeMatchedEncoderProfilesProvider implements EncoderProfilesProvider {
    private final String audioMime;
    private final EncoderProfilesProvider baseProvider;
    private final Map<Integer, EncoderProfilesProxy> profilesCache;
    private final String videoMime;

    public MimeMatchedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, String str, String str2) {
        encoderProfilesProvider.getClass();
        str.getClass();
        str2.getClass();
        this.baseProvider = encoderProfilesProvider;
        this.videoMime = str;
        this.audioMime = str2;
        this.profilesCache = new LinkedHashMap();
    }

    private final EncoderProfilesProxy filterProfiles(EncoderProfilesProxy encoderProfilesProxy) {
        if (aa4.e(this.videoMime, VideoSpec.MIME_TYPE_UNSPECIFIED) && aa4.e(this.audioMime, AudioSpec.MIME_TYPE_UNSPECIFIED)) {
            return encoderProfilesProxy;
        }
        List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles = encoderProfilesProxy.getVideoProfiles();
        videoProfiles.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : videoProfiles) {
            EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) obj;
            if (aa4.e(this.videoMime, VideoSpec.MIME_TYPE_UNSPECIFIED) || aa4.e(videoProfileProxy.getMediaType(), this.videoMime)) {
                arrayList.add(obj);
            }
        }
        List<EncoderProfilesProxy.AudioProfileProxy> audioProfiles = encoderProfilesProxy.getAudioProfiles();
        audioProfiles.getClass();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : audioProfiles) {
            EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = (EncoderProfilesProxy.AudioProfileProxy) obj2;
            if (aa4.e(this.audioMime, AudioSpec.MIME_TYPE_UNSPECIFIED) || aa4.e(audioProfileProxy.getMediaType(), this.audioMime)) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList.size() == encoderProfilesProxy.getVideoProfiles().size() && arrayList2.size() == encoderProfilesProxy.getAudioProfiles().size()) {
            return encoderProfilesProxy;
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            return null;
        }
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(encoderProfilesProxy.getDefaultDurationSeconds(), encoderProfilesProxy.getRecommendedFileFormat(), arrayList2, arrayList);
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        EncoderProfilesProxy encoderProfilesProxy;
        synchronized (this.profilesCache) {
            try {
                Map<Integer, EncoderProfilesProxy> map = this.profilesCache;
                Integer numValueOf = Integer.valueOf(i);
                EncoderProfilesProxy encoderProfilesProxyFilterProfiles = map.get(numValueOf);
                if (encoderProfilesProxyFilterProfiles == null) {
                    EncoderProfilesProxy all = this.baseProvider.getAll(i);
                    encoderProfilesProxyFilterProfiles = all != null ? filterProfiles(all) : null;
                    map.put(numValueOf, encoderProfilesProxyFilterProfiles);
                }
                encoderProfilesProxy = encoderProfilesProxyFilterProfiles;
            } catch (Throwable th) {
                throw th;
            }
        }
        return encoderProfilesProxy;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getAll(i) != null;
    }

    public /* synthetic */ MimeMatchedEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, String str, String str2, int i, jh2 jh2Var) {
        this(encoderProfilesProvider, (i & 2) != 0 ? VideoSpec.MIME_TYPE_UNSPECIFIED : str, (i & 4) != 0 ? AudioSpec.MIME_TYPE_UNSPECIFIED : str2);
    }
}
