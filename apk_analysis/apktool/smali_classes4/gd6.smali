.class public final synthetic Lgd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lod6;

.field public final synthetic c:Landroid/view/MotionEvent;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lod6;Landroid/view/MotionEvent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgd6;->b:Lod6;

    iput-object p2, p0, Lgd6;->c:Landroid/view/MotionEvent;

    iput-wide p3, p0, Lgd6;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lgd6;->b:Lod6;

    iget-object v1, p0, Lgd6;->c:Landroid/view/MotionEvent;

    iget-wide v2, p0, Lgd6;->d:J

    const-string p0, "Executor#OnTouchEventListener "

    :try_start_0
    iget-boolean v4, v0, Lod6;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {v0, v2, v3, v1, v4}, Lod6;->f(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {v0, v2, v3, v1, v4}, Lod6;->f(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :goto_1
    :try_start_2
    iget-object v0, v0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    throw p0
.end method
