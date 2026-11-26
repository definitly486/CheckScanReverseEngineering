.class public final synthetic Le21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le21;->b:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le21;->b:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->a(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)Lf73;

    move-result-object p0

    return-object p0
.end method
