.class public final Lyads/q64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/q64;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lyads/o64;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lyads/p64;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lyads/q64;->a:Landroid/content/Context;

    sget p1, Lcom/yandex/mobile/ads/R$string;->debug_panel_invalid_mediation_adapter_version:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    :cond_2
    return-object v1
.end method
