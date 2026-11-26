package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qd3 {
    public static pd3 a(byte[] bArr) {
        if (bArr.length < 12) {
            return pd3.UNKNOWN;
        }
        if (bArr.length >= 8 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71 && bArr[4] == 13 && bArr[5] == 10 && bArr[6] == 26 && bArr[7] == 10) {
            return pd3.PNG;
        }
        if (bArr.length >= 3 && bArr[0] == -1 && bArr[1] == -40 && bArr[2] == -1) {
            return pd3.JPEG;
        }
        return (bArr.length >= 4 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56) ? pd3.GIF : pd3.UNKNOWN;
    }
}
