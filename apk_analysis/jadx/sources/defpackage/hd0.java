package defpackage;

import android.net.Uri;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.FlacStreamMetadata;
import com.google.firebase.crashlytics.internal.CrashlyticsRemoteConfigListener;
import com.google.firebase.crashlytics.internal.RemoteConfigDeferredProxy;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hd0 implements w08, xl3, BinarySearchSeeker.SeekTimestampConverter, Deferred.DeferredHandler {
    public final /* synthetic */ Object b;

    public /* synthetic */ hd0(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (hd1) ((nl3) this.b).invoke(obj);
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        aVar.onSuccess((Uri) this.b);
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        RemoteConfigDeferredProxy.lambda$setupListener$0((CrashlyticsRemoteConfigListener) this.b, provider);
    }

    @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
    public long timeUsToTargetTime(long j) {
        return ((FlacStreamMetadata) this.b).getSampleNumber(j);
    }
}
