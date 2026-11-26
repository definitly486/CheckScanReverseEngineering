.class public final Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;->setSelectDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
