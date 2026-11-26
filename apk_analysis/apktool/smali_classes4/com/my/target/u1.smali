.class public final Lcom/my/target/u1;
.super Lcom/my/target/g3;
.source "SourceFile"


# instance fields
.field public final d:Lcom/my/target/m1$b;

.field public final e:Ls5a;


# direct methods
.method public constructor <init>(Lcom/my/target/x0;Ls5a;Ls5a;Lcom/my/target/m1$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/my/target/g3;-><init>(Lcom/my/target/x0;Ls5a;)V

    iput-object p3, p0, Lcom/my/target/u1;->e:Ls5a;

    iput-object p4, p0, Lcom/my/target/u1;->d:Lcom/my/target/m1$b;

    return-void
.end method


# virtual methods
.method public final a(ZFLandroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/g3;->a:Ls5a;

    iget-object v1, p0, Lcom/my/target/u1;->d:Lcom/my/target/m1$b;

    invoke-static {v0, v1}, Lcom/my/target/m1;->f(Ls5a;Lcom/my/target/m1$b;)V

    iget-object v2, p0, Lcom/my/target/u1;->e:Ls5a;

    invoke-static {v2, v1}, Lcom/my/target/m1;->f(Ls5a;Lcom/my/target/m1$b;)V

    const-string v1, "ViewabilityTracker: RenderStatTracker"

    const-string v3, "Render tracked, kill self"

    invoke-static {v1, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Ls5a;->b:Ljava/util/List;

    invoke-static {v0}, Ln4a;->i(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Ls5a;->b:Ljava/util/List;

    invoke-static {v0}, Ln4a;->i(Ljava/util/List;)Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/g3;->b()V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
