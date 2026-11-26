.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->searchItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->access$setLoadShop$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
