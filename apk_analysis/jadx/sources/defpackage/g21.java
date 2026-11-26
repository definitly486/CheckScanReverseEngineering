package defpackage;

import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.offline.ProgressiveDownloader;
import com.google.firebase.inappmessaging.internal.CampaignCacheClient;
import com.wdullaer.materialdatetimepicker.GravitySnapHelper;
import com.wdullaer.materialdatetimepicker.date.DayPickerView;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g21 implements ze6, GravitySnapHelper.SnapListener, CacheWriter.ProgressListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ g21(Object obj) {
        this.b = obj;
    }

    @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
    public void onProgress(long j, long j2, long j3) {
        ((ProgressiveDownloader) this.b).onProgress(j, j2, j3);
    }

    @Override // com.wdullaer.materialdatetimepicker.GravitySnapHelper.SnapListener
    public void onSnap(int i) {
        ((DayPickerView) this.b).lambda$setUpRecyclerView$0(i);
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return ((CampaignCacheClient) this.b).isResponseValid((f73) obj);
    }
}
