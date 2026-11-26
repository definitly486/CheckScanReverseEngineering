.class public final synthetic Lz87;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo22;

.field public final synthetic b:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lo22;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz87;->a:Lo22;

    iput-object p2, p0, Lz87;->b:Lbm3;

    return-void
.end method


# virtual methods
.method public final a(Lvp1$a;)V
    .locals 3

    sget-object v0, Lgx2;->b:Lgx2;

    const/4 v1, 0x1

    iget-object v2, p0, Lz87;->a:Lo22;

    invoke-static {v0, v2, v1}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object v0

    sget-object v1, Lqo2;->a:Loi2;

    if-eq v0, v1, :cond_0

    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    :cond_0
    new-instance v1, Ly87;

    invoke-direct {v1, v0, p1}, Ly87;-><init>(Lo22;Lvp1$a;)V

    new-instance v0, Lx87;

    invoke-direct {v0, v1}, Lx87;-><init>(La0;)V

    new-instance v2, Lf31;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    sget-object p1, Lc32;->DEFAULT:Lc32;

    iget-object p0, p0, Lz87;->b:Lbm3;

    invoke-virtual {v1, p1, v1, p0}, La0;->m0(Lc32;La0;Lbm3;)V

    return-void
.end method
