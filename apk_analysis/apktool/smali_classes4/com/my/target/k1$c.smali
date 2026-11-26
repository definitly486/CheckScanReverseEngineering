.class public final Lcom/my/target/k1$c;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/my/target/k1;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/my/target/k1;)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput p1, p0, Lcom/my/target/k1$c;->b:I

    iput-object p2, p0, Lcom/my/target/k1$c;->a:Lcom/my/target/k1;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    iget-object p0, p0, Lcom/my/target/k1$c;->a:Lcom/my/target/k1;

    iget-object v0, p0, Lcom/my/target/k1;->b:Lcom/my/target/ra;

    iget v1, p0, Lcom/my/target/k1;->i:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/my/target/ra;->h:Lcom/my/target/e6;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    iget-boolean v0, p0, Lcom/my/target/r;->e:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/my/target/r;->e:Z

    return-void

    :cond_3
    iget-object p0, v0, Lcom/my/target/ra;->e:Lcom/my/target/fk;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/my/target/ra;->g:Lcom/my/target/e6;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lcom/my/target/k1$c;->b:I

    sub-int/2addr p2, p1

    iget-object p0, p0, Lcom/my/target/k1$c;->a:Lcom/my/target/k1;

    iget-object v0, p0, Lcom/my/target/k1;->e:Lcom/my/target/fk;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/my/target/fk;->setProgress(F)V

    invoke-virtual {v0, p1}, Lcom/my/target/fk;->setDigit(I)V

    iget-object p0, p0, Lcom/my/target/k1;->c:Lcom/my/target/u0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
