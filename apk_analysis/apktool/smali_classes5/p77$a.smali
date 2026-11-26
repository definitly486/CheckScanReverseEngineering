.class public final Lp77$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.ads.RewardedYandexAdProvider"
    f = "RewardedYandexAdProvider.kt"
    l = {
        0x1c,
        0x50
    }
    m = "loadAd"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp77;->b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Landroid/app/Activity;

.field public m:Lnl3;

.field public n:Lll3;

.field public o:Lll3;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lp77;

.field public r:I


# direct methods
.method public constructor <init>(Lp77;Lf02;)V
    .locals 0

    iput-object p1, p0, Lp77$a;->q:Lp77;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lp77$a;->p:Ljava/lang/Object;

    iget p1, p0, Lp77$a;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp77$a;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lp77$a;->q:Lp77;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lp77;->b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
