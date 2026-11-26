.class public final Lyads/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/x2;Lyads/i2;Landroid/view/Window;Lyads/f2;)Lyads/n2;
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 p4, 0x0

    if-eqz p0, :cond_0

    const-string p6, "extra_browser_url"

    invoke-virtual {p0, p6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    :try_start_0
    new-instance v0, Lyads/a2;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lyads/a2;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lyads/x2;Landroid/view/Window;Ljava/lang/String;)V
    :try_end_0
    .catch Lyads/bk6; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object p4
.end method
