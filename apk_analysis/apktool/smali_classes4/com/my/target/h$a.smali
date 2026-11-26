.class public final Lcom/my/target/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/ExoPlayer;

.field public c:Lcom/my/target/n$a;

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/h$a;->b:Landroidx/media3/exoplayer/ExoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/my/target/h$a;->b:Landroidx/media3/exoplayer/ExoPlayer;

    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v0, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/my/target/h$a;->e:F

    cmpl-float v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v0, p0, Lcom/my/target/h$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/h$a;->d:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/my/target/h$a;->c:Lcom/my/target/n$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, v0}, Lcom/my/target/n$a;->d(FF)V

    :cond_1
    iput v1, p0, Lcom/my/target/h$a;->e:F

    iget v0, p0, Lcom/my/target/h$a;->d:I

    if-lez v0, :cond_2

    iput v3, p0, Lcom/my/target/h$a;->d:I

    move v0, v3

    :cond_2
    :goto_0
    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/my/target/h$a;->c:Lcom/my/target/n$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/my/target/n$a;->j()V

    :cond_3
    iput v3, p0, Lcom/my/target/h$a;->d:I

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExoVideoPlayer: Error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/h$a;->c:Lcom/my/target/n$a;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
