.class public final synthetic Lcom/my/tracker/obfuscated/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/d$c;

.field public final synthetic c:Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/d$c;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/i3;->b:Lcom/my/tracker/obfuscated/d$c;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/i3;->c:Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/obfuscated/i3;->b:Lcom/my/tracker/obfuscated/d$c;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/i3;->c:Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/d$c;->b(Lcom/my/tracker/obfuscated/d$c;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method
