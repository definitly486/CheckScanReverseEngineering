.class public abstract Lcom/my/target/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls5a;

.field public final b:Lcom/my/target/x0;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/my/target/x0;Ls5a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/g3;->c:Z

    iput-object p1, p0, Lcom/my/target/g3;->b:Lcom/my/target/x0;

    iput-object p2, p0, Lcom/my/target/g3;->a:Ls5a;

    return-void
.end method


# virtual methods
.method public abstract a(ZFLandroid/content/Context;)V
.end method

.method public b()V
    .locals 5

    iget-boolean v0, p0, Lcom/my/target/g3;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/my/target/g3;->b:Lcom/my/target/x0;

    iget-object v1, v0, Lcom/my/target/x0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/my/target/x0;->d:Z

    if-eqz v1, :cond_3

    const-string v1, "ViewabilityTracker"

    const-string v2, "statTrackers are empty and shouldStopOnShow = true, stop tracking"

    invoke-static {v1, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/x0;->e()V

    :cond_3
    iput-boolean v3, p0, Lcom/my/target/g3;->c:Z

    const-string p0, "ViewabilityTracker: StatTracker"

    const-string v0, "i\'m killed"

    invoke-static {p0, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
