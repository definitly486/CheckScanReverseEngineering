package androidx.webkit.internal;

import androidx.webkit.StartUpLocation;
import androidx.webkit.WebViewStartUpResult;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public class WebViewStartupResultImpl implements WebViewStartUpResult, BiConsumer<Integer, Object> {
    private Long mMaxTimePerTaskUiThreadMillis;
    private Long mTotalTimeUiThreadMillis;
    private List<StartUpLocation> mBlockingStartupLocations = new ArrayList();
    private List<StartUpLocation> mAsyncStartupLocations = new ArrayList();

    public static class StartUpLocationImpl implements StartUpLocation {
        private final Throwable mThrowable;

        public StartUpLocationImpl(Throwable th) {
            this.mThrowable = th;
        }

        @Override // androidx.webkit.StartUpLocation
        public Throwable getStackInformation() {
            return this.mThrowable;
        }
    }

    public WebViewStartupResultImpl(Consumer<BiConsumer<Integer, Object>> consumer) {
        consumer.accept(this);
    }

    @Override // java.util.function.BiConsumer
    public void accept(Integer num, Object obj) {
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            if (obj != null) {
                this.mTotalTimeUiThreadMillis = (Long) obj;
                return;
            }
            return;
        }
        if (iIntValue == 1) {
            if (obj != null) {
                this.mMaxTimePerTaskUiThreadMillis = (Long) obj;
                return;
            }
            return;
        }
        if (iIntValue == 2) {
            this.mBlockingStartupLocations.add(new StartUpLocationImpl((Throwable) obj));
            return;
        }
        if (iIntValue != 3) {
            if (num.intValue() >= 0) {
                return;
            }
            throw new UnsupportedOperationException("The current AndroidX version doesn't support this callback value: " + num);
        }
        if (!(obj instanceof List)) {
            this.mAsyncStartupLocations.add(new StartUpLocationImpl((Throwable) obj));
            return;
        }
        List list = (List) obj;
        if (list.isEmpty()) {
            return;
        }
        this.mAsyncStartupLocations.add(new StartUpLocationImpl((Throwable) list.get(0)));
    }

    @Override // androidx.webkit.WebViewStartUpResult
    public Long getMaxTimePerTaskInUiThreadMillis() {
        return this.mMaxTimePerTaskUiThreadMillis;
    }

    @Override // androidx.webkit.WebViewStartUpResult
    public List<StartUpLocation> getNonUiThreadBlockingStartUpLocations() {
        return this.mAsyncStartupLocations;
    }

    @Override // androidx.webkit.WebViewStartUpResult
    public Long getTotalTimeInUiThreadMillis() {
        return this.mTotalTimeUiThreadMillis;
    }

    @Override // androidx.webkit.WebViewStartUpResult
    public List<StartUpLocation> getUiThreadBlockingStartUpLocations() {
        return this.mBlockingStartupLocations;
    }
}
