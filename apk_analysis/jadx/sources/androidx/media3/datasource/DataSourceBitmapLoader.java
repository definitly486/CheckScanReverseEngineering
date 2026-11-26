package androidx.media3.datasource;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.common.util.Util;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a92;
import defpackage.kd8;
import defpackage.ld8;
import defpackage.nd5;
import defpackage.wr4;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final kd8<wr4> DEFAULT_EXECUTOR_SERVICE = ld8.a(new a92());
    private final DataSource.Factory dataSourceFactory;
    private final wr4 listeningExecutorService;
    private final boolean makeShared;
    private final int maximumOutputDimension;
    private final BitmapFactory.Options options;

    public static final class Builder {
        private final Context context;
        private DataSource.Factory dataSourceFactory;
        private wr4 listeningExecutorService;
        private boolean makeShared;
        private int maximumOutputDimension = -1;
        private BitmapFactory.Options options;

        public Builder(Context context) {
            this.context = context;
        }

        public DataSourceBitmapLoader build() {
            return new DataSourceBitmapLoader(this);
        }

        public Builder setBitmapFactoryOptions(BitmapFactory.Options options) {
            this.options = options;
            return this;
        }

        public Builder setDataSourceFactory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
            return this;
        }

        public Builder setExecutorService(wr4 wr4Var) {
            this.listeningExecutorService = wr4Var;
            return this;
        }

        public Builder setMakeShared(boolean z) {
            this.makeShared = z;
            return this;
        }

        public Builder setMaximumOutputDimension(int i) {
            this.maximumOutputDimension = i;
            return this;
        }
    }

    private DataSourceBitmapLoader(Builder builder) {
        wr4 wr4Var;
        this.dataSourceFactory = builder.dataSourceFactory != null ? builder.dataSourceFactory : new DefaultDataSource.Factory(builder.context);
        if (builder.listeningExecutorService != null) {
            wr4Var = builder.listeningExecutorService;
        } else {
            wr4Var = DEFAULT_EXECUTOR_SERVICE.get();
            wr4Var.getClass();
        }
        this.listeningExecutorService = wr4Var;
        this.options = builder.options;
        this.maximumOutputDimension = builder.maximumOutputDimension;
        this.makeShared = builder.makeShared;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$decodeBitmap$1(byte[] bArr) {
        return maybeAsShared(this.makeShared, BitmapUtil.decode(bArr, bArr.length, this.options, this.maximumOutputDimension));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$loadBitmap$2(Uri uri) {
        return load(this.dataSourceFactory.createDataSource(), uri, this.options, this.maximumOutputDimension, this.makeShared);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static wr4 lambda$static$0() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        if (executorServiceNewSingleThreadExecutor instanceof wr4) {
            return (wr4) executorServiceNewSingleThreadExecutor;
        }
        return executorServiceNewSingleThreadExecutor instanceof ScheduledExecutorService ? new nd5.b((ScheduledExecutorService) executorServiceNewSingleThreadExecutor) : new nd5.a(executorServiceNewSingleThreadExecutor);
    }

    private static Bitmap load(DataSource dataSource, Uri uri, BitmapFactory.Options options, int i, boolean z) {
        try {
            dataSource.open(new DataSpec(uri));
            byte[] toEnd = DataSourceUtil.readToEnd(dataSource);
            return maybeAsShared(z, BitmapUtil.decode(toEnd, toEnd.length, options, i));
        } finally {
            dataSource.close();
        }
    }

    private static Bitmap maybeAsShared(boolean z, Bitmap bitmap) {
        return z ? BitmapUtil.makeShared(bitmap) : bitmap;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(final byte[] bArr) {
        return this.listeningExecutorService.submit(new Callable() { // from class: b92
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.lambda$decodeBitmap$1(bArr);
            }
        });
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(final Uri uri) {
        return this.listeningExecutorService.submit(new Callable() { // from class: c92
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.b.lambda$loadBitmap$2(uri);
            }
        });
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public boolean supportsMimeType(String str) {
        return Util.isBitmapFactorySupportedMimeType(str);
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context) {
        this(new Builder(context));
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context, int i) {
        this(new Builder(context).setMaximumOutputDimension(i));
    }

    @Deprecated
    public DataSourceBitmapLoader(wr4 wr4Var, DataSource.Factory factory) {
        this(wr4Var, factory, null);
    }

    @Deprecated
    public DataSourceBitmapLoader(wr4 wr4Var, DataSource.Factory factory, BitmapFactory.Options options) {
        this(wr4Var, factory, options, -1);
    }

    @Deprecated
    public DataSourceBitmapLoader(wr4 wr4Var, DataSource.Factory factory, BitmapFactory.Options options, int i) {
        this.listeningExecutorService = wr4Var;
        this.dataSourceFactory = factory;
        this.options = options;
        this.maximumOutputDimension = i;
        this.makeShared = false;
    }
}
