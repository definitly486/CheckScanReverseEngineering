package yads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;

/* JADX INFO: loaded from: classes6.dex */
public final class nj0 {
    public final vz2 a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final mm[] i;

    public nj0(vz2 vz2Var, int i, int i2, int i3, int i4, int i5, int i6, int i7, mm[] mmVarArr) {
        this.a = vz2Var;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        this.h = i7;
        this.i = mmVarArr;
    }

    public final AudioTrack a(boolean z, am amVar, int i) {
        try {
            AudioTrack audioTrackB = b(z, amVar, i);
            int state = audioTrackB.getState();
            if (state == 1) {
                return audioTrackB;
            }
            try {
                audioTrackB.release();
            } catch (Exception unused) {
            }
            throw new qm(state, this.e, this.f, this.h, this.a, this.c == 1, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new qm(0, this.e, this.f, this.h, this.a, this.c == 1, e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final AudioTrack b(boolean z, am amVar, int i) {
        int i2;
        AudioAttributes audioAttributesBuild;
        AudioAttributes audioAttributesBuild2;
        int i3 = u56.a;
        int i4 = 0;
        if (i3 >= 29) {
            AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(this.e).setChannelMask(this.f).setEncoding(this.g).build();
            if (z) {
                audioAttributesBuild2 = new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
            } else {
                zl zlVar = amVar.g;
                if (zlVar == null) {
                    zlVar = new zl(amVar);
                    amVar.g = zlVar;
                }
                audioAttributesBuild2 = zlVar.a;
            }
            return new AudioTrack.Builder().setAudioAttributes(audioAttributesBuild2).setAudioFormat(audioFormatBuild).setTransferMode(1).setBufferSizeInBytes(this.h).setSessionId(i).setOffloadedPlayback(this.c == 1).build();
        }
        if (i3 >= 21) {
            if (z) {
                audioAttributesBuild = new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
            } else {
                zl zlVar2 = amVar.g;
                if (zlVar2 == null) {
                    zlVar2 = new zl(amVar);
                    amVar.g = zlVar2;
                }
                audioAttributesBuild = zlVar2.a;
            }
            return new AudioTrack(audioAttributesBuild, new AudioFormat.Builder().setSampleRate(this.e).setChannelMask(this.f).setEncoding(this.g).build(), this.h, 1, i);
        }
        int i5 = amVar.d;
        if (i5 != 13) {
            switch (i5) {
                case 2:
                    i2 = i4;
                    break;
                case 3:
                    i4 = 8;
                    i2 = i4;
                    break;
                case 4:
                    i4 = 4;
                    i2 = i4;
                    break;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    i4 = 5;
                    i2 = i4;
                    break;
                case 6:
                    i4 = 2;
                    i2 = i4;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 1;
        }
        if (i == 0) {
            return new AudioTrack(i2, this.e, this.f, this.g, this.h, 1);
        }
        return new AudioTrack(i2, this.e, this.f, this.g, this.h, 1, i);
    }
}
