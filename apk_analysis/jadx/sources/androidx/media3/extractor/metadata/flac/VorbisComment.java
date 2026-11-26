package androidx.media3.extractor.metadata.flac;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import defpackage.fa4;
import defpackage.go2;
import defpackage.zg;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class VorbisComment implements Metadata.Entry {
    public final String key;
    public final String value;

    public VorbisComment(String str, String str2) {
        this.key = go2.j(str);
        this.value = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            VorbisComment vorbisComment = (VorbisComment) obj;
            if (this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.value.hashCode() + zg.b(527, 31, this.key);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.key;
        str.getClass();
        switch (str) {
            case "TOTALTRACKS":
                Integer numA0 = fa4.a0(this.value);
                if (numA0 != null) {
                    builder.setTotalTrackCount(numA0);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer numA1 = fa4.a0(this.value);
                if (numA1 != null) {
                    builder.setTotalDiscCount(numA1);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer numA2 = fa4.a0(this.value);
                if (numA2 != null) {
                    builder.setTrackNumber(numA2);
                    break;
                }
                break;
            case "ALBUM":
                builder.setAlbumTitle(this.value);
                break;
            case "GENRE":
                builder.setGenre(this.value);
                break;
            case "TITLE":
                builder.setTitle(this.value);
                break;
            case "DESCRIPTION":
                builder.setDescription(this.value);
                break;
            case "DISCNUMBER":
                Integer numA3 = fa4.a0(this.value);
                if (numA3 != null) {
                    builder.setDiscNumber(numA3);
                    break;
                }
                break;
            case "ALBUMARTIST":
                builder.setAlbumArtist(this.value);
                break;
            case "ARTIST":
                builder.setArtist(this.value);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.key + "=" + this.value;
    }
}
