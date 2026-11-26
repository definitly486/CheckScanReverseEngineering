package androidx.webkit.internal;

import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import java.util.List;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class ProfileStoreImpl implements ProfileStore {
    private static ProfileStore sInstance;
    private final ProfileStoreBoundaryInterface mProfileStoreImpl;

    private ProfileStoreImpl() {
        this.mProfileStoreImpl = null;
    }

    public static ProfileStore getInstance() {
        ProfileStore profileStore = sInstance;
        if (profileStore != null) {
            return profileStore;
        }
        ProfileStoreImpl profileStoreImpl = new ProfileStoreImpl(WebViewGlueCommunicator.getFactory().getProfileStore());
        sInstance = profileStoreImpl;
        return profileStoreImpl;
    }

    @Override // androidx.webkit.ProfileStore
    public boolean deleteProfile(String str) {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return this.mProfileStoreImpl.deleteProfile(str);
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ProfileStore
    public List<String> getAllProfileNames() {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return this.mProfileStoreImpl.getAllProfileNames();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ProfileStore
    public Profile getOrCreateProfile(String str) {
        if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            return new ProfileImpl((ProfileBoundaryInterface) kt0.a(ProfileBoundaryInterface.class, this.mProfileStoreImpl.getOrCreateProfile(str)));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ProfileStore
    public Profile getProfile(String str) {
        if (!WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
        InvocationHandler profile = this.mProfileStoreImpl.getProfile(str);
        if (profile != null) {
            return new ProfileImpl((ProfileBoundaryInterface) kt0.a(ProfileBoundaryInterface.class, profile));
        }
        return null;
    }

    private ProfileStoreImpl(ProfileStoreBoundaryInterface profileStoreBoundaryInterface) {
        this.mProfileStoreImpl = profileStoreBoundaryInterface;
    }
}
