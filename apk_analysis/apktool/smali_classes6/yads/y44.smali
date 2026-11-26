.class public final Lyads/y44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n24;


# instance fields
.field public final a:Lyads/x24;


# direct methods
.method public constructor <init>(Lyads/x24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y44;->a:Lyads/x24;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/l24;
    .locals 1

    iget-object p0, p0, Lyads/y44;->a:Lyads/x24;

    const-class v0, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;

    invoke-virtual {p0, p1, v0}, Lyads/x24;->a(Landroid/content/Context;Ljava/lang/Class;)Lyads/l24;

    move-result-object p0

    return-object p0
.end method
