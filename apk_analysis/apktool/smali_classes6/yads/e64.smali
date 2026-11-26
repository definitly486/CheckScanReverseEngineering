.class public final Lyads/e64;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lyads/x54;

.field public d:Lyads/o24;

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyads/g64;

.field public h:I


# direct methods
.method public constructor <init>(Lyads/g64;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/e64;->g:Lyads/g64;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lyads/e64;->f:Ljava/lang/Object;

    iget p1, p0, Lyads/e64;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/e64;->h:I

    iget-object v0, p0, Lyads/e64;->g:Lyads/g64;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lyads/g64;->a(Landroid/content/Context;Lyads/sl5;Lyads/x54;Lyads/o24;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
