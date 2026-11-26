package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.DataReader;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import defpackage.hv0;
import defpackage.o8;
import defpackage.wb4;
import defpackage.yr4;
import java.io.EOFException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    private Extractor extractor;
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$init$0(Extractor extractor) {
        return extractor.getUnderlyingImplementation().getClass().getSimpleName();
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        Extractor extractor = this.extractor;
        if (extractor == null) {
            return;
        }
        Extractor underlyingImplementation = extractor.getUnderlyingImplementation();
        if (underlyingImplementation instanceof Mp3Extractor) {
            ((Mp3Extractor) underlyingImplementation).disableSeeking();
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0050  */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void init(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j, long j2, ExtractorOutput extractorOutput) throws UnrecognizedInputFormatException {
        Extractor extractor;
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataReader, j, j2);
        this.extractorInput = defaultExtractorInput;
        if (this.extractor != null) {
            return;
        }
        Extractor[] extractorArrCreateExtractors = this.extractorsFactory.createExtractors(uri, map);
        com.google.common.collect.j.a aVarM = com.google.common.collect.j.m(extractorArrCreateExtractors.length);
        if (extractorArrCreateExtractors.length == 1) {
            extractor = extractorArrCreateExtractors[0];
            this.extractor = extractor;
        } else {
            for (Extractor extractor2 : extractorArrCreateExtractors) {
                try {
                    if (extractor2.sniff(defaultExtractorInput)) {
                        this.extractor = extractor2;
                        defaultExtractorInput.resetPeekPosition();
                        break;
                    }
                    aVarM.e(extractor2.getSniffFailureDetails());
                    boolean z = this.extractor != null || defaultExtractorInput.getPosition() == j;
                    o8.r(z);
                    defaultExtractorInput.resetPeekPosition();
                } catch (EOFException unused) {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j) {
                    }
                } catch (Throwable th) {
                    o8.r(this.extractor != null || defaultExtractorInput.getPosition() == j);
                    defaultExtractorInput.resetPeekPosition();
                    throw th;
                }
                o8.r(z);
                defaultExtractorInput.resetPeekPosition();
            }
            Extractor extractor3 = this.extractor;
            if (extractor3 == null) {
                String str = "None of the available extractors (" + new wb4(", ").b(yr4.c(com.google.common.collect.j.p(extractorArrCreateExtractors), new hv0())) + ") could read the stream.";
                uri.getClass();
                throw new UnrecognizedInputFormatException(str, uri, aVarM.g());
            }
            extractor = extractor3;
        }
        extractor.init(extractorOutput);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) {
        Extractor extractor = this.extractor;
        extractor.getClass();
        ExtractorInput extractorInput = this.extractorInput;
        extractorInput.getClass();
        return extractor.read(extractorInput, positionHolder);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        Extractor extractor = this.extractor;
        extractor.getClass();
        extractor.seek(j, j2);
    }
}
