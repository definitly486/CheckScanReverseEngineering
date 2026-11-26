.class public final Lw78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Ljava/lang/Integer;",
        "Lc81;",
        "Ljava/lang/Long;",
        "Ldk8$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lw78;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lc81;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldk8$a;

    invoke-virtual {p2}, Lc81;->a()Lp71;

    move-result-object p3

    invoke-virtual {p3}, Lp71;->a()I

    move-result v1

    invoke-virtual {p2}, Lc81;->a()Lp71;

    move-result-object p3

    invoke-virtual {p3}, Lp71;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lc81;->b()J

    move-result-wide v3

    iget-object p0, p0, Lw78;->f:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0604fc

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const p1, 0x7f0604bf

    goto :goto_0

    :cond_0
    const p1, 0x7f0604c2

    goto :goto_0

    :cond_1
    const p1, 0x7f0604c0

    goto :goto_0

    :cond_2
    const p1, 0x7f0604c3

    goto :goto_0

    :cond_3
    const p1, 0x7f0604c1

    goto :goto_0

    :cond_4
    const p1, 0x7f0604be

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ldk8$a;-><init>(ILjava/lang/String;JIIZ)V

    return-object v0
.end method
