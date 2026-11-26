.class public final Lyads/u44;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/monetization/ads/mediation/base/initialize/a;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/initialize/a;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/u44;->d:Lcom/monetization/ads/mediation/base/initialize/a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/u44;->c:Ljava/lang/Object;

    iget p1, p0, Lyads/u44;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/u44;->e:I

    iget-object p1, p0, Lyads/u44;->d:Lcom/monetization/ads/mediation/base/initialize/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/monetization/ads/mediation/base/initialize/a;->a(Landroid/content/Context;Lyads/x54;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
