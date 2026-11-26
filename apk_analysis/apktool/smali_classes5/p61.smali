.class public final Lp61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo17;

.field public final b:Lwk7;

.field public final c:Ljf6;

.field public final d:Lhu4;

.field public final e:Lon2;

.field public final f:Lqe;

.field public final g:Lcf1;

.field public final h:Lfh8;

.field public final i:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ll17;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo17;Lwk7;Ljf6;Lhu4;Lon2;Lqe;Lcf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp61;->a:Lo17;

    iput-object p2, p0, Lp61;->b:Lwk7;

    iput-object p3, p0, Lp61;->c:Ljf6;

    iput-object p4, p0, Lp61;->d:Lhu4;

    iput-object p5, p0, Lp61;->e:Lon2;

    iput-object p6, p0, Lp61;->f:Lqe;

    iput-object p7, p0, Lp61;->g:Lcf1;

    new-instance p1, Lp61$b;

    invoke-direct {p1, p0}, Lp61$b;-><init>(Lp61;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lp61;->h:Lfh8;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lp61;->i:Lct6;

    new-instance p1, Lp61$a;

    invoke-direct {p1, p0}, Lp61$a;-><init>(Lp61;)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p1}, Lfh8;-><init>(Lll3;)V

    return-void
.end method


# virtual methods
.method public final a(Ldu4;)Lp08;
    .locals 10

    if-nez p1, :cond_0

    new-instance v0, Ldu4;

    iget-object p1, p0, Lp61;->c:Ljf6;

    invoke-interface {p1}, Ljf6;->c()D

    move-result-wide v1

    invoke-interface {p1}, Ljf6;->l()D

    move-result-wide v3

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Ldu4;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    move-object p1, v0

    :cond_0
    const/16 v0, 0x14

    iget-object v1, p0, Lp61;->a:Lo17;

    const-string v2, ""

    invoke-interface {v1, v2, p1, v0}, Lo17;->b(Ljava/lang/String;Ldu4;I)Lmz7;

    move-result-object p1

    new-instance v0, Lr61;

    invoke-direct {v0, p0}, Lr61;-><init>(Lp61;)V

    new-instance p0, Lq3;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lq3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final b(Ll17;)V
    .locals 2

    iget-object v0, p0, Lp61;->i:Lct6;

    invoke-virtual {v0, p1}, Lct6;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ll17;->a()I

    move-result v0

    iget-object v1, p0, Lp61;->c:Ljf6;

    invoke-interface {v1, v0}, Ljf6;->l0(I)V

    invoke-virtual {p1}, Ll17;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljf6;->X(Ljava/lang/String;)V

    iget-object p0, p0, Lp61;->f:Lqe;

    invoke-virtual {p1}, Ll17;->a()I

    move-result p1

    invoke-interface {p0, p1}, Lqe;->d(I)V

    return-void
.end method
