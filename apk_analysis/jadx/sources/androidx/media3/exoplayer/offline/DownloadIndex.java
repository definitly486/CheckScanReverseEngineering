package androidx.media3.exoplayer.offline;

/* JADX INFO: loaded from: classes3.dex */
public interface DownloadIndex {
    Download getDownload(String str);

    DownloadCursor getDownloads(int... iArr);
}
