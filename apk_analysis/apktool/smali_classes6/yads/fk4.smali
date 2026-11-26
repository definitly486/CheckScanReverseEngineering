.class public final Lyads/fk4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fg5;

.field public final b:Lyads/df4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 7

    move-object v0, p4

    check-cast v0, Lyads/do6;

    iget-object v0, v0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v0, v0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v0

    new-instance v1, Lyads/j90;

    invoke-direct {v1, v0}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v0, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance p1, Lyads/fg5;

    invoke-direct {p1, p4}, Lyads/fg5;-><init>(Lyads/bf5;)V

    new-instance v1, Lyads/df4;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lyads/df4;-><init>(Landroid/content/Context;Ly22;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fk4;->a:Lyads/fg5;

    iput-object v1, p0, Lyads/fk4;->b:Lyads/df4;

    sget-object p0, Lyads/hk4;->c:Lyads/hk4;

    iput-object p0, v4, Lyads/e4;->f:Lyads/hk4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;Lyads/ek4;Lyads/d95;)V
    .locals 8

    iget-object v0, p1, Lyads/d9;->t:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lyads/vg4;

    if-eqz v4, :cond_0

    invoke-interface {p3, v4}, Lyads/d95;->a(Lyads/vg4;)V

    iget-object p3, p0, Lyads/fk4;->a:Lyads/fg5;

    invoke-virtual {p3, p1}, Lyads/fg5;->a(Lyads/d9;)Lyads/of4;

    move-result-object v5

    new-instance v6, Lyads/qi4;

    invoke-direct {v6, p2}, Lyads/qi4;-><init>(Lyads/ek4;)V

    iget-object v2, p0, Lyads/fk4;->b:Lyads/df4;

    iget-object p0, v2, Lyads/df4;->d:Ly22;

    new-instance v1, Lyads/cf4;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lyads/cf4;-><init>(Lyads/df4;Lyads/d9;Lyads/vg4;Lyads/of4;Lyads/ye4;Le02;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void

    :cond_0
    sget-object p0, Lyads/o8;->c:Lyads/m4;

    invoke-interface {p2, p0}, Lyads/ek4;->a(Lyads/m4;)V

    invoke-interface {p3}, Lyads/d95;->a()V

    return-void
.end method
