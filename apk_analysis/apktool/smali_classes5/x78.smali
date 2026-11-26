.class public final Lx78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Lc81;",
        "Ldk8$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lx78;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    check-cast p2, Lc81;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldk8$a;

    invoke-virtual {p2}, Lc81;->a()Lp71;

    move-result-object p1

    invoke-virtual {p1}, Lp71;->a()I

    move-result v1

    invoke-virtual {p2}, Lc81;->a()Lp71;

    move-result-object p1

    invoke-virtual {p1}, Lp71;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lc81;->b()J

    move-result-wide v3

    iget-object p0, p0, Lx78;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060036

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0604c2

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ldk8$a;-><init>(ILjava/lang/String;JIIZ)V

    return-object v0
.end method
