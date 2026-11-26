package androidx.camera.video;

import android.location.Location;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public abstract class OutputOptions {
    public static final int DURATION_UNLIMITED = 0;
    public static final int FILE_SIZE_UNLIMITED = 0;
    private final OutputOptionsInternal mOutputOptionsInternal;

    public static abstract class Builder<T extends OutputOptions, B> {
        final OutputOptionsInternal.Builder<?> mRootInternalBuilder;

        public Builder(OutputOptionsInternal.Builder<?> builder) {
            this.mRootInternalBuilder = builder;
            builder.setFileSizeLimit(0L);
            builder.setDurationLimitMillis(0L);
        }

        public abstract T build();

        /* JADX WARN: Multi-variable type inference failed */
        public B setDurationLimitMillis(long j) {
            Preconditions.checkArgument(j >= 0, "The specified duration limit can't be negative.");
            this.mRootInternalBuilder.setDurationLimitMillis(j);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public B setFileSizeLimit(long j) {
            Preconditions.checkArgument(j >= 0, "The specified file size limit can't be negative.");
            this.mRootInternalBuilder.setFileSizeLimit(j);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public B setLocation(Location location) {
            if (location != null) {
                boolean z = false;
                Preconditions.checkArgument(location.getLatitude() >= -90.0d && location.getLatitude() <= 90.0d, "Latitude must be in the range [-90, 90]");
                if (location.getLongitude() >= -180.0d && location.getLongitude() <= 180.0d) {
                    z = true;
                }
                Preconditions.checkArgument(z, "Longitude must be in the range [-180, 180]");
            }
            this.mRootInternalBuilder.setLocation(location);
            return this;
        }
    }

    public static abstract class OutputOptionsInternal {

        public static abstract class Builder<B> {
            public abstract OutputOptionsInternal build();

            public abstract B setDurationLimitMillis(long j);

            public abstract B setFileSizeLimit(long j);

            public abstract B setLocation(Location location);
        }

        public abstract long getDurationLimitMillis();

        public abstract long getFileSizeLimit();

        public abstract Location getLocation();
    }

    public OutputOptions(OutputOptionsInternal outputOptionsInternal) {
        this.mOutputOptionsInternal = outputOptionsInternal;
    }

    public long getDurationLimitMillis() {
        return this.mOutputOptionsInternal.getDurationLimitMillis();
    }

    public long getFileSizeLimit() {
        return this.mOutputOptionsInternal.getFileSizeLimit();
    }

    public Location getLocation() {
        return this.mOutputOptionsInternal.getLocation();
    }
}
