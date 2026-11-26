.class public final Lfm;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;


# direct methods
.method public constructor <init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    iput p1, p0, Lfm;->b:I

    iput-object p2, p0, Lfm;->c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lfm;->c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, p0, Lfm;->c:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget-object v0, p2, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lfm;->b:I

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lem;

    invoke-direct {v0, p0, p2, p1}, Lem;-><init>(ILcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
