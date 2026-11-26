.class public final Lyads/sm;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Z

.field public final d:Lyads/vz2;


# direct methods
.method public constructor <init>(ILyads/vz2;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    invoke-static {p1, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lyads/sm;->c:Z

    iput p1, p0, Lyads/sm;->b:I

    iput-object p2, p0, Lyads/sm;->d:Lyads/vz2;

    return-void
.end method
