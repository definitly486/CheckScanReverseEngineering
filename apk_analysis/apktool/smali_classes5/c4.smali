.class public final Lc4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4$a;
    }
.end annotation


# instance fields
.field public final a:Ljf6;

.field public final b:Lj5;

.field public final c:Lzg1;

.field public final d:Ls67;

.field public final e:Lqe;

.field public final f:Lhm2;

.field public final g:Lhu4;

.field public final h:Lu51;

.field public final i:Lfu1;

.field public final j:Lvp;

.field public final k:Ln60;

.field public final l:Lb16;

.field public final m:Ld82;

.field public final n:Lk5;

.field public final o:Ldc7;


# direct methods
.method public constructor <init>(Ljf6;Lj5;Lzg1;Ls67;Lqe;Lhm2;Lhu4;Lu51;Lfu1;Lvp;Ln60;Lb16;Ld82;Lk5;Ldc7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4;->a:Ljf6;

    iput-object p2, p0, Lc4;->b:Lj5;

    iput-object p3, p0, Lc4;->c:Lzg1;

    iput-object p4, p0, Lc4;->d:Ls67;

    iput-object p5, p0, Lc4;->e:Lqe;

    iput-object p6, p0, Lc4;->f:Lhm2;

    iput-object p7, p0, Lc4;->g:Lhu4;

    iput-object p8, p0, Lc4;->h:Lu51;

    iput-object p9, p0, Lc4;->i:Lfu1;

    iput-object p10, p0, Lc4;->j:Lvp;

    iput-object p11, p0, Lc4;->k:Ln60;

    iput-object p12, p0, Lc4;->l:Lb16;

    iput-object p13, p0, Lc4;->m:Ld82;

    iput-object p14, p0, Lc4;->n:Lk5;

    iput-object p15, p0, Lc4;->o:Ldc7;

    return-void
.end method


# virtual methods
.method public final a()Lyz7;
    .locals 3

    iget-object v0, p0, Lc4;->b:Lj5;

    invoke-interface {v0}, Lj5;->b()Lmz7;

    move-result-object v0

    new-instance v1, Lh4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh4;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lt3;

    invoke-direct {p0, v1, v2}, Lt3;-><init>(Lgh4;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyz7;

    invoke-direct {v1, v0, p0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    return-object v1
.end method

.method public final b()Lrp1;
    .locals 3

    iget-object v0, p0, Lc4;->b:Lj5;

    invoke-interface {v0}, Lj5;->g()Lmz7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfq1;

    invoke-direct {v1, v0}, Lfq1;-><init>(Lmz7;)V

    iget-object v0, p0, Lc4;->h:Lu51;

    invoke-interface {v0}, Lu51;->d()Lqp1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v0

    new-instance v1, Lp3;

    invoke-direct {v1, p0}, Lp3;-><init>(Lc4;)V

    new-instance v2, Lcq1;

    invoke-direct {v2, v1}, Lcq1;-><init>(Lh6;)V

    invoke-virtual {v0, v2}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v0

    iget-object p0, p0, Lc4;->c:Lzg1;

    invoke-interface {p0}, Lzg1;->e()Lqp1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    return-object p0
.end method

.method public final c()Loq1;
    .locals 5

    iget-object v0, p0, Lc4;->f:Lhm2;

    invoke-interface {v0}, Lhm2;->getDeviceInfo()Lp08;

    move-result-object v0

    new-instance v1, Lp4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lp4;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Ll3;

    invoke-direct {v3, v1, v2}, Ll3;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lh08;

    invoke-direct {v1, v0, v3}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lnq1;

    invoke-direct {v0, v1}, Lnq1;-><init>(Lqp1;)V

    iget-object v1, p0, Lc4;->b:Lj5;

    invoke-interface {v1}, Lj5;->s()Lmz7;

    move-result-object v1

    new-instance v3, Lt4;

    invoke-direct {v3, p0}, Lt4;-><init>(Lc4;)V

    new-instance v4, Lm3;

    invoke-direct {v4, v3, v2}, Lm3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lh08;

    invoke-direct {v3, v1, v4}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance v1, Lnq1;

    invoke-direct {v1, v3}, Lnq1;-><init>(Lqp1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lqq1;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    new-instance v0, Liq1;

    invoke-direct {v0, v3}, Liq1;-><init>([Lqq1;)V

    new-instance v1, Lu3;

    invoke-direct {v1, p0}, Lu3;-><init>(Lc4;)V

    invoke-virtual {v0, v1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lnq1;
    .locals 7

    iget-object v0, p0, Lc4;->a:Ljf6;

    invoke-interface {v0}, Ljf6;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lc4;->b:Lj5;

    if-eqz v1, :cond_0

    sget-object v0, Laq1;->b:Laq1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljf6;->P()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lj5;->o(Ljava/lang/String;)Lqp1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Ltm3;

    if-eqz v1, :cond_1

    check-cast v0, Ltm3;

    invoke-interface {v0}, Ltm3;->c()Lgg3;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Luq1;

    invoke-direct {v1, v0}, Luq1;-><init>(Lqp1;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lmh3;

    invoke-direct {v1, v0}, Lmh3;-><init>(Lgg3;)V

    new-instance v0, Leq1;

    invoke-direct {v0, v1}, Leq1;-><init>(Lmh3;)V

    new-instance v1, Lo3;

    invoke-direct {v1, p0}, Lo3;-><init>(Lc4;)V

    invoke-virtual {v0, v1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object v0

    :goto_1
    invoke-interface {v2}, Lj5;->e()La75;

    move-result-object v1

    const-string v2, "next is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le75;

    invoke-direct {v2, v1, v0}, Le75;-><init>(La75;Lqp1;)V

    sget-object v0, Lne7;->b:Lhe7;

    const-string v1, "unit is null"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduler is null"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ld75;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1e

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Ld75;-><init>(Le75;JLhe7;)V

    new-instance v0, Lr4;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lr4;-><init>(Ljava/lang/Object;I)V

    new-instance p0, La4;

    invoke-direct {p0, v0}, La4;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lj75;

    invoke-direct {v0, v1, p0}, Lj75;-><init>(La75;Lxl3;)V

    new-instance p0, Lnq1;

    invoke-direct {p0, v0}, Lnq1;-><init>(Lqp1;)V

    return-object p0
.end method
