.class public final Lyads/ia3;
.super Lyads/ja3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    const/16 v1, 0x7d7

    invoke-direct {p0, v0, p1, v1}, Lyads/ja3;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    return-void
.end method
