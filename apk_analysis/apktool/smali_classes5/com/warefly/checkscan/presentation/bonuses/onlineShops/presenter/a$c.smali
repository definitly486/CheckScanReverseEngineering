.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a()Lqp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lk57<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a<",
            "TT;TParam;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a<",
            "TT;TParam;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$c;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lk57;

    iget-object p1, p1, Lk57;->b:Ljava/lang/Object;

    new-instance v0, La36;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$c;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-direct {v0, p0, p1}, La36;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;Ljava/lang/Object;)V

    new-instance p0, Ldq1;

    invoke-direct {p0, v0}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method
