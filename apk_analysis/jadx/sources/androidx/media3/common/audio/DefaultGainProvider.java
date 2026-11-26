package androidx.media3.common.audio;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.audio.DefaultGainProvider;
import androidx.media3.common.util.Util;
import com.google.common.collect.e0;
import com.google.common.collect.q;
import defpackage.bh;
import defpackage.ch;
import defpackage.dh;
import defpackage.eh;
import defpackage.gx6;
import defpackage.l72;
import defpackage.lm3;
import defpackage.mh2;
import defpackage.o8;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultGainProvider implements GainProcessor.GainProvider {
    private static final float GAIN_UNSET = -3.4028235E38f;
    private final float defaultGain;
    private final e0<Long, lm3<Pair<Long, Integer>, Float>> gainMap;
    public static final FadeProvider FADE_IN_LINEAR = new bh();
    public static final FadeProvider FADE_OUT_LINEAR = new ch();
    public static final FadeProvider FADE_IN_EQUAL_POWER = new dh();
    public static final FadeProvider FADE_OUT_EQUAL_POWER = new eh();

    public static final class Builder {
        private final float defaultGain;
        private final e0<Long, lm3<Pair<Long, Integer>, Float>> gainMap;

        public Builder(float f) {
            e0<Long, lm3<Pair<Long, Integer>, Float>> e0Var = new e0<>();
            this.gainMap = e0Var;
            this.defaultGain = f;
            e0Var.c(gx6.d, new mh2());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Float lambda$addFadeAt$1(long j, FadeProvider fadeProvider, long j2, Pair pair) {
            int iIntValue = ((Integer) pair.second).intValue();
            return Float.valueOf(fadeProvider.getGainFactorAt(((Long) pair.first).longValue() - Util.durationUsToSampleCount(j, iIntValue), Util.durationUsToSampleCount(j2, iIntValue)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Float lambda$new$0(Pair pair) {
            return Float.valueOf(-3.4028235E38f);
        }

        public Builder addFadeAt(final long j, final long j2, final FadeProvider fadeProvider) {
            o8.e(j >= 0);
            o8.e(j2 > 1);
            this.gainMap.c(new gx6<>(new l72.d(Long.valueOf(j)), new l72.d(Long.valueOf(j + j2))), new lm3() { // from class: nh2
                @Override // defpackage.lm3
                public final Object apply(Object obj) {
                    return DefaultGainProvider.Builder.lambda$addFadeAt$1(j, fadeProvider, j2, (Pair) obj);
                }
            });
            return this;
        }

        public DefaultGainProvider build() {
            return new DefaultGainProvider(this.gainMap, this.defaultGain);
        }
    }

    public interface FadeProvider {
        float getGainFactorAt(long j, long j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DefaultGainProvider(e0<Long, lm3<Pair<Long, Integer>, Float>> e0Var, float f) {
        e0<Long, lm3<Pair<Long, Integer>, Float>> e0Var2 = new e0<>();
        this.gainMap = e0Var2;
        q.c cVar = (q.c) e0Var.a();
        new q.c.a();
        Iterator itA = cVar.a();
        while (itA.hasNext()) {
            Map.Entry entry = (Map.Entry) itA.next();
            e0Var2.c((gx6) entry.getKey(), entry.getValue());
        }
        this.defaultGain = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$0(long j, long j2) {
        return j / j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$1(long j, long j2) {
        return (j2 - j) / j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$2(long j, long j2) {
        return (float) Math.sin((j * 1.5707963267948966d) / j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$3(long j, long j2) {
        return (float) Math.cos((j * 1.5707963267948966d) / j2);
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public float getGainFactorAtSamplePosition(long j, int i) {
        o8.r(i > 0);
        o8.e(j >= 0);
        Map.Entry entryB = this.gainMap.b(Long.valueOf(Util.sampleCountToDurationUs(j, i)));
        lm3 lm3Var = (lm3) (entryB == null ? null : entryB.getValue());
        lm3Var.getClass();
        float fFloatValue = ((Float) lm3Var.apply(Pair.create(Long.valueOf(j), Integer.valueOf(i)))).floatValue();
        return fFloatValue == -3.4028235E38f ? this.defaultGain : fFloatValue;
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public long isUnityUntil(long j, int i) {
        o8.r(i > 0);
        o8.e(j >= 0);
        Map.Entry entryB = this.gainMap.b(Long.valueOf(Util.sampleCountToDurationUs(j, i)));
        entryB.getClass();
        float fFloatValue = ((Float) ((lm3) entryB.getValue()).apply(Pair.create(Long.valueOf(j), Integer.valueOf(i)))).floatValue();
        if (fFloatValue == 1.0f) {
            return j + 1;
        }
        if (this.defaultGain != 1.0f || fFloatValue != -3.4028235E38f) {
            return C.TIME_UNSET;
        }
        if (((gx6) entryB.getKey()).c != l72.a.c) {
            return Util.durationUsToSampleCount(((Long) ((gx6) entryB.getKey()).c.f()).longValue(), i);
        }
        return Long.MIN_VALUE;
    }
}
