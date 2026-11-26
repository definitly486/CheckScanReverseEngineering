.class public final Lz7;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.ads.AdLoaderManager"
    f = "AdLoaderManager.kt"
    l = {
        0x37
    }
    m = "showFirstAvailable"
.end annotation


# instance fields
.field public l:Landroid/app/Activity;

.field public m:Lll3;

.field public n:Lnl3;

.field public o:Lll3;

.field public p:Lll3;

.field public q:Ljava/util/List;

.field public r:Ljava/util/Iterator;

.field public s:Ld8;

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:La8;

.field public v:I


# direct methods
.method public constructor <init>(La8;Lf02;)V
    .locals 0

    iput-object p1, p0, Lz7;->u:La8;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lz7;->t:Ljava/lang/Object;

    iget p1, p0, Lz7;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz7;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lz7;->u:La8;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, La8;->b(Landroid/app/Activity;Lll3;Lnl3;Lll3;Lll3;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
