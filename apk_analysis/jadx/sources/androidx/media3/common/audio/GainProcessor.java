package androidx.media3.common.audio;

import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import defpackage.j2;
import defpackage.o8;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class GainProcessor extends BaseAudioProcessor {
    private final GainProvider gainProvider;
    private long readFrames;

    public interface GainProvider {
        float getGainFactorAtSamplePosition(long j, int i);

        long isUnityUntil(long j, int i);
    }

    public GainProcessor(GainProvider gainProvider) {
        gainProvider.getClass();
        this.gainProvider = gainProvider;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return (!super.isActive() || Objects.equals(this.inputAudioFormat, AudioProcessor.AudioFormat.NOT_SET) || this.gainProvider.isUnityUntil(0L, this.inputAudioFormat.sampleRate) == Long.MIN_VALUE) ? false : true;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i = audioFormat.encoding;
        if (i == 2 || i == 4) {
            return audioFormat;
        }
        throw new AudioProcessor.UnhandledAudioFormatException("Invalid PCM encoding. Expected 16 bit PCM or float PCM.", audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onFlush(AudioProcessor.StreamMetadata streamMetadata) {
        this.readFrames = Util.durationUsToSampleCount(streamMetadata.positionOffsetUs, this.inputAudioFormat.sampleRate);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onReset() {
        this.readFrames = 0L;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        o8.s(!Objects.equals(this.inputAudioFormat, AudioProcessor.AudioFormat.NOT_SET), "Audio processor must be configured and flushed before calling queueInput().");
        if (byteBuffer.hasRemaining()) {
            o8.f(byteBuffer.remaining() % this.inputAudioFormat.bytesPerFrame == 0, "Queued an incomplete frame.");
            ByteBuffer byteBufferReplaceOutputBuffer = replaceOutputBuffer(byteBuffer.remaining());
            while (byteBuffer.hasRemaining()) {
                float gainFactorAtSamplePosition = this.gainProvider.getGainFactorAtSamplePosition(this.readFrames, this.inputAudioFormat.sampleRate);
                if (gainFactorAtSamplePosition != 1.0f) {
                    int i = 0;
                    while (true) {
                        AudioProcessor.AudioFormat audioFormat = this.inputAudioFormat;
                        if (i >= audioFormat.channelCount) {
                            this.readFrames++;
                            break;
                        }
                        int i2 = audioFormat.encoding;
                        if (i2 == 2) {
                            byteBufferReplaceOutputBuffer.putShort((short) (byteBuffer.getShort() * gainFactorAtSamplePosition));
                        } else {
                            if (i2 != 4) {
                                j2.c(this.inputAudioFormat.encoding, "Unexpected PCM encoding: ");
                                return;
                            }
                            byteBufferReplaceOutputBuffer.putFloat(byteBuffer.getFloat() * gainFactorAtSamplePosition);
                        }
                        i++;
                    }
                } else {
                    int iLimit = byteBuffer.limit();
                    long jIsUnityUntil = this.gainProvider.isUnityUntil(this.readFrames, this.inputAudioFormat.sampleRate);
                    o8.s(jIsUnityUntil != C.TIME_UNSET, "Expected a valid end boundary for unity region.");
                    if (jIsUnityUntil != Long.MIN_VALUE) {
                        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + ((int) ((jIsUnityUntil - this.readFrames) * ((long) this.inputAudioFormat.bytesPerFrame)))));
                    }
                    this.readFrames += (long) (byteBuffer.remaining() / this.inputAudioFormat.bytesPerFrame);
                    byteBufferReplaceOutputBuffer.put(byteBuffer);
                    byteBuffer.limit(iLimit);
                }
            }
            byteBufferReplaceOutputBuffer.flip();
        }
    }
}
