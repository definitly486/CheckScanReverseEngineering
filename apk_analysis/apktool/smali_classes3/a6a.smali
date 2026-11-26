.class public final synthetic La6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/q0;

.field public final synthetic c:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic d:Lcom/android/billingclient/api/QueryProductDetailsResult;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6a;->b:Lcom/my/tracker/obfuscated/q0;

    iput-object p2, p0, La6a;->c:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, La6a;->d:Lcom/android/billingclient/api/QueryProductDetailsResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La6a;->c:Lcom/android/billingclient/api/BillingResult;

    iget-object v1, p0, La6a;->d:Lcom/android/billingclient/api/QueryProductDetailsResult;

    iget-object p0, p0, La6a;->b:Lcom/my/tracker/obfuscated/q0;

    invoke-static {p0, v0, v1}, Lcom/my/tracker/obfuscated/q0;->a(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
