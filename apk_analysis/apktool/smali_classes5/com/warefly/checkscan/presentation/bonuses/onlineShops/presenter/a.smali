.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lpz3;",
        "Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a<",
            "TT;TParam;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a<",
            "TT;TParam;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b:I

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lqp1;
    .locals 4

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;

    iget v2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b:I

    invoke-interface {v1, v2, v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;->loadNextPage(ILjava/lang/Object;)Lmz7;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;)V

    new-instance v2, Ly26;

    invoke-direct {v2, v1}, Ly26;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;)V

    new-instance v2, Lv52;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lv52;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lh08;

    invoke-direct {v0, v1, v2}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance v1, Lz26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz26;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Laq1;->b:Laq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b:I

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->d:Z

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->e:Ljava/lang/Object;

    return-void
.end method
