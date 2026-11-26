.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;
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
        "Lcp2;",
        "Lj59;",
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

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcp2;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$b;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->d:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
