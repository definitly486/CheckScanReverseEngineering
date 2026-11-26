.class public final Lcom/my/target/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/my/target/g;

.field public c:Lcom/my/target/n$a;

.field public d:I

.field public e:F


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/g$a;->b:Lcom/my/target/g;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/g;->getPosition()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/my/target/g$a;->b:Lcom/my/target/g;

    invoke-virtual {v1}, Lcom/my/target/g;->getDuration()F

    move-result v1

    iget v2, p0, Lcom/my/target/g$a;->e:F

    cmpl-float v2, v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v0, p0, Lcom/my/target/g$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/g$a;->d:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/my/target/g$a;->c:Lcom/my/target/n$a;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/my/target/n$a;->d(FF)V

    :cond_2
    iput v0, p0, Lcom/my/target/g$a;->e:F

    iget v0, p0, Lcom/my/target/g$a;->d:I

    if-lez v0, :cond_3

    iput v3, p0, Lcom/my/target/g$a;->d:I

    move v0, v3

    :cond_3
    :goto_0
    const/16 v1, 0x32

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/my/target/g$a;->c:Lcom/my/target/n$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/my/target/n$a;->j()V

    :cond_4
    iput v3, p0, Lcom/my/target/g$a;->d:I

    :cond_5
    :goto_1
    return-void
.end method
