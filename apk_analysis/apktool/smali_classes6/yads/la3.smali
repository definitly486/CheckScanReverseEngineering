.class public final Lyads/la3;
.super Lyads/ja3;
.source "SourceFile"


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(ILyads/xc0;Ljava/util/Map;)V
    .locals 1

    const-string p3, "Response code: "

    invoke-static {p1, p3}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x7d4

    invoke-direct {p0, p3, p2, v0}, Lyads/ja3;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    iput p1, p0, Lyads/la3;->e:I

    return-void
.end method
