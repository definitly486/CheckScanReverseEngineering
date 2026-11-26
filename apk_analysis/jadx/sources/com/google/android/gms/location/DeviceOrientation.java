package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzeo;
import defpackage.lg;
import defpackage.mi2;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public class DeviceOrientation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceOrientation> CREATOR = new zzl();
    public final float[] b;
    public final float c;
    public final float d;
    public final long e;
    public final byte f;
    public final float g;
    public final float h;

    public DeviceOrientation(float[] fArr, float f, float f2, long j, byte b, float f3, float f4) {
        a(fArr);
        if (j < 0) {
            mi2.b();
            throw null;
        }
        this.b = fArr;
        float f5 = f % 360.0f;
        this.c = f5 < 0.0f ? f5 + 360.0f : f5;
        this.d = Math.max(0.0f, Math.min(f2, 180.0f));
        this.g = f3;
        this.h = Math.max(0.0f, Math.min(f4, 180.0f));
        this.e = j;
        this.f = (byte) (((byte) (((byte) (b | 16)) | 4)) | 8);
    }

    public static void a(float[] fArr) {
        zzeo.zza(fArr != null && fArr.length == 4, "Input attitude array should be of length 4.");
        zzeo.zza((Float.isNaN(fArr[0]) || Float.isNaN(fArr[1]) || Float.isNaN(fArr[2]) || Float.isNaN(fArr[3])) ? false : true, "Input attitude cannot contain NaNs.");
    }

    @Pure
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceOrientation)) {
            return false;
        }
        DeviceOrientation deviceOrientation = (DeviceOrientation) obj;
        return Float.compare(this.c, deviceOrientation.c) == 0 && Float.compare(this.d, deviceOrientation.d) == 0 && (zza() == deviceOrientation.zza() && (!zza() || Float.compare(this.g, deviceOrientation.g) == 0)) && (hasConservativeHeadingErrorDegrees() == deviceOrientation.hasConservativeHeadingErrorDegrees() && (!hasConservativeHeadingErrorDegrees() || Float.compare(getConservativeHeadingErrorDegrees(), deviceOrientation.getConservativeHeadingErrorDegrees()) == 0)) && this.e == deviceOrientation.e && Arrays.equals(this.b, deviceOrientation.b);
    }

    @Pure
    public float[] getAttitude() {
        return (float[]) this.b.clone();
    }

    @Pure
    public float getConservativeHeadingErrorDegrees() {
        return this.h;
    }

    @Pure
    public long getElapsedRealtimeNs() {
        return this.e;
    }

    @Pure
    public float getHeadingDegrees() {
        return this.c;
    }

    @Pure
    public float getHeadingErrorDegrees() {
        return this.d;
    }

    @Pure
    public boolean hasConservativeHeadingErrorDegrees() {
        return (this.f & 64) != 0;
    }

    @Pure
    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.c), Float.valueOf(this.d), Float.valueOf(this.h), Long.valueOf(this.e), this.b, Byte.valueOf(this.f));
    }

    @Pure
    public String toString() {
        StringBuilder sb = new StringBuilder("DeviceOrientation[attitude=");
        sb.append(Arrays.toString(this.b));
        sb.append(", headingDegrees=");
        sb.append(this.c);
        sb.append(", headingErrorDegrees=");
        sb.append(this.d);
        if (hasConservativeHeadingErrorDegrees()) {
            sb.append(", conservativeHeadingErrorDegrees=");
            sb.append(this.h);
        }
        sb.append(", elapsedRealtimeNs=");
        return lg.f(sb, this.e, ']');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloatArray(parcel, 1, getAttitude(), false);
        SafeParcelWriter.writeFloat(parcel, 4, getHeadingDegrees());
        SafeParcelWriter.writeFloat(parcel, 5, getHeadingErrorDegrees());
        SafeParcelWriter.writeLong(parcel, 6, getElapsedRealtimeNs());
        SafeParcelWriter.writeByte(parcel, 7, this.f);
        SafeParcelWriter.writeFloat(parcel, 8, this.g);
        SafeParcelWriter.writeFloat(parcel, 9, getConservativeHeadingErrorDegrees());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Pure
    public final boolean zza() {
        return (this.f & 32) != 0;
    }

    public static final class Builder {
        public final float[] a;
        public float b;
        public float c;
        public long d;
        public byte e;
        public float f;
        public float g;

        public Builder(DeviceOrientation deviceOrientation) {
            this.e = (byte) 0;
            DeviceOrientation.a(deviceOrientation.b);
            float[] fArr = deviceOrientation.b;
            this.a = Arrays.copyOf(fArr, fArr.length);
            setHeadingDegrees(deviceOrientation.c);
            setHeadingErrorDegrees(deviceOrientation.d);
            setConservativeHeadingErrorDegrees(deviceOrientation.h);
            setElapsedRealtimeNs(deviceOrientation.e);
            this.f = deviceOrientation.g;
            this.e = deviceOrientation.f;
        }

        public DeviceOrientation build() {
            return new DeviceOrientation(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public Builder clearConservativeHeadingErrorDegrees() {
            this.g = 180.0f;
            int i = this.e & (-65);
            this.f = 0.0f;
            this.e = (byte) (((byte) i) & (-33));
            return this;
        }

        public Builder setAttitude(float[] fArr) {
            DeviceOrientation.a(fArr);
            System.arraycopy(fArr, 0, this.a, 0, fArr.length);
            return this;
        }

        public Builder setConservativeHeadingErrorDegrees(float f) {
            boolean z = false;
            if (f >= 0.0f && f <= 180.0f) {
                z = true;
            }
            zzeo.zza(z, "conservativeHeadingErrorDegrees should be between 0 and 180.");
            this.g = f;
            this.e = (byte) (this.e | 64);
            Parcelable.Creator<DeviceOrientation> creator = DeviceOrientation.CREATOR;
            this.f = f < 180.0f ? (float) (2.0d / (1.0d - Math.cos(Math.toRadians(f)))) : 0.0f;
            this.e = (byte) (this.e | 32);
            return this;
        }

        public Builder setElapsedRealtimeNs(long j) {
            zzeo.zza(j >= 0, "elapsedRealtimeNs should be greater than or equal to 0.");
            this.d = j;
            return this;
        }

        public Builder setHeadingDegrees(float f) {
            boolean z = false;
            if (f >= 0.0f && f < 360.0f) {
                z = true;
            }
            zzeo.zza(z, "headingDegrees should be greater than or equal to 0 and less than 360.");
            this.b = f;
            return this;
        }

        public Builder setHeadingErrorDegrees(float f) {
            boolean z = false;
            if (f >= 0.0f && f <= 180.0f) {
                z = true;
            }
            zzeo.zza(z, "headingErrorDegrees should be between 0 and 180.");
            this.c = f;
            return this;
        }

        public Builder(float[] fArr, float f, float f2, long j) {
            this.e = (byte) 0;
            DeviceOrientation.a(fArr);
            this.a = Arrays.copyOf(fArr, fArr.length);
            setHeadingDegrees(f);
            setHeadingErrorDegrees(f2);
            setElapsedRealtimeNs(j);
            this.f = 0.0f;
            this.g = 180.0f;
            this.e = (byte) 0;
        }
    }
}
