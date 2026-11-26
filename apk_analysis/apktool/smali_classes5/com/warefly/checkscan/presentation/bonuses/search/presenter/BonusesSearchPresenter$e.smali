.class public final Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    new-instance p0, Lkd$e$c$f$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "text"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkd$e$c$f;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
