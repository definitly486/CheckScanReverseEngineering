.class public final Lcom/my/target/i1;
.super Ln7a;
.source "SourceFile"


# instance fields
.field public final f:Lcom/my/target/m1$b;

.field public g:Ln4a;


# direct methods
.method public constructor <init>(Lcom/my/target/x0;Ls5a;JLn4a;Lcom/my/target/m1$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ln7a;-><init>(Lcom/my/target/x0;Ls5a;J)V

    iput-object p5, p0, Lcom/my/target/i1;->g:Ln4a;

    iput-object p6, p0, Lcom/my/target/i1;->f:Lcom/my/target/m1$b;

    return-void
.end method


# virtual methods
.method public final a(ZFLandroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Ln7a;->e(Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/my/target/g3;->a:Ls5a;

    iget-object p2, p1, Ls5a;->c:Lpp9;

    const/16 v0, 0x1770

    invoke-virtual {p2, v0}, Lpp9;->c(I)V

    invoke-static {p3}, Ll3a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/my/target/i1;->g:Ln4a;

    invoke-static {p3, p2}, Lcom/my/target/m1;->c(Ln4a;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/my/target/i1;->f:Lcom/my/target/m1$b;

    invoke-static {p1, p2}, Lcom/my/target/m1;->f(Ls5a;Lcom/my/target/m1$b;)V

    iget-object p1, p1, Ls5a;->b:Ljava/util/List;

    invoke-static {p1}, Ln4a;->i(Ljava/util/List;)Z

    iget-boolean p1, p0, Lcom/my/target/g3;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/my/target/g3;->b:Lcom/my/target/x0;

    iget-object p1, p1, Lcom/my/target/x0;->l:Lcom/my/target/x0$a;

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/my/target/x0$a;->a()V

    :cond_3
    const-string p1, "ViewabilityTracker: ShowStatTracker"

    const-string p2, "Show tracked, kill self"

    invoke-static {p1, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/my/target/i1;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lcom/my/target/g3;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/i1;->g:Ln4a;

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln7a;->e:J

    return-void
.end method
