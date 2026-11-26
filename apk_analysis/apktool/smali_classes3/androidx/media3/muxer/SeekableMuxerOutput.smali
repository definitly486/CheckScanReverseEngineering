.class public interface abstract Landroidx/media3/muxer/SeekableMuxerOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public static of(Ljava/io/FileOutputStream;)Landroidx/media3/muxer/SeekableMuxerOutput;
    .locals 1

    .line 11
    new-instance v0, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;

    invoke-direct {v0, p0}, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;-><init>(Ljava/io/FileOutputStream;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Landroidx/media3/muxer/SeekableMuxerOutput;
    .locals 2

    new-instance v0, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media3/muxer/FileOutputStreamSeekableMuxerOutput;-><init>(Ljava/io/FileOutputStream;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPosition()J
.end method

.method public abstract getSize()J
.end method

.method public abstract setPosition(J)V
.end method

.method public abstract truncate(J)V
.end method
