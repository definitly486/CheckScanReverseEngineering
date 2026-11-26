.class public final synthetic Les9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/d;

.field public final synthetic c:Lcom/huawei/hms/iap/entity/ProductInfoResult;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les9;->b:Lcom/my/tracker/obfuscated/d;

    iput-object p2, p0, Les9;->c:Lcom/huawei/hms/iap/entity/ProductInfoResult;

    iput-object p3, p0, Les9;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Les9;->c:Lcom/huawei/hms/iap/entity/ProductInfoResult;

    iget-object v1, p0, Les9;->d:Ljava/util/List;

    iget-object p0, p0, Les9;->b:Lcom/my/tracker/obfuscated/d;

    invoke-static {p0, v0, v1}, Lcom/my/tracker/obfuscated/d;->b(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V

    return-void
.end method
