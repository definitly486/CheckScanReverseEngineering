.class public final synthetic Ld21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field public final synthetic b:Lf73;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld21;->a:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iput-object p2, p0, Ld21;->b:Lf73;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld21;->a:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object p0, p0, Ld21;->b:Lf73;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->e(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lf73;)V

    return-void
.end method
