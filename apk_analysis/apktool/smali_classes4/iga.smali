.class public final synthetic Liga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/my/target/wj;

.field public final synthetic c:Lt2a;

.field public final synthetic d:Lhga;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/wj;Lt2a;Lhga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liga;->b:Lcom/my/target/wj;

    iput-object p2, p0, Liga;->c:Lt2a;

    iput-object p3, p0, Liga;->d:Lhga;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    sget v0, Lcom/my/target/wj;->k:I

    iget-object v0, p0, Liga;->b:Lcom/my/target/wj;

    iget-object v1, v0, Lcom/my/target/wj;->b:Lcom/my/target/p1;

    iget-object v2, p0, Liga;->c:Lt2a;

    iget-boolean v2, v2, Lt2a;->h:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, -0x1

    if-eq p2, v3, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_1

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Liga;->d:Lhga;

    invoke-virtual {p0, p1}, Lhga;->onClick(Landroid/view/View;)V

    return v3

    :cond_3
    const p0, -0x3a1508

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return v3
.end method
