.class public final synthetic Lm34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm34;->b:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm34;->b:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    check-cast p1, Lf73;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->processCampaignFetch(Lf73;)V

    return-void
.end method
