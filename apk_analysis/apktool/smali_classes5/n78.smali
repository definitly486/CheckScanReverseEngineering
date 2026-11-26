.class public final synthetic Ln78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln78;->b:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->q:[Lze4;

    iget-object p0, p0, Ln78;->b:Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->t()Led5;

    move-result-object p1

    iget p1, p1, Led5;->v:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->r(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->p()V

    return-void
.end method
