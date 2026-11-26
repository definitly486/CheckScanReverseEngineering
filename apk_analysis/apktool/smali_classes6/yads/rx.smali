.class public final Lyads/rx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Lyads/t40;

.field public c:Lmb4;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    new-instance v1, Lyads/on;

    invoke-direct {v1}, Lyads/on;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/yandex/mobile/ads/R$color;->monetization_ads_internal_text_color_white:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    new-instance v2, Lyads/vv5;

    invoke-direct {v2, p1}, Lyads/vv5;-><init>(I)V

    const/4 p1, 0x2

    new-array p1, p1, [Lyads/af;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object v2, p1, v1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lyads/t40;

    invoke-direct {v1, p1}, Lyads/t40;-><init>(Ljava/util/List;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/rx;->a:Ly22;

    iput-object v1, p0, Lyads/rx;->b:Lyads/t40;

    return-void
.end method
