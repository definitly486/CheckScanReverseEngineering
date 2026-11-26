.class public final Llx5$d;
.super Llx5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Llx5$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llx5$d;

    invoke-direct {v0}, Llx5;-><init>()V

    sput-object v0, Llx5$d;->a:Llx5$d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;->a:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    new-instance p1, Ls26;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    new-instance v1, Ldx3;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/f;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    invoke-direct {v1, v2}, Ldx3;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/f;)V

    invoke-direct {p1, v0, v1}, Ls26;-><init>(Lnl3;Ls26$m;)V

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$setHotsPaginator$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Ls26;)V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getHotsPaginator$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ls26;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->c()V

    :cond_0
    return-void
.end method
