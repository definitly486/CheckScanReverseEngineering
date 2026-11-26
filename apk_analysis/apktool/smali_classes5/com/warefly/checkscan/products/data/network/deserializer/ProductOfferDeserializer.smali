.class public final Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lzh6;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/gson/Gson;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "kind"

    iput-object p1, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->a:Ljava/lang/String;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->b:Lcom/google/gson/Gson;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Lpc4;->d()Lkd4;

    move-result-object p1

    iget-object p2, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object p2

    iget-object p3, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lpc4;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/products/data/network/deserializer/ProductOfferDeserializer;->b:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->b(Lkd4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lzh6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    sget-object p1, Lyh6;->a:Lyh6;

    instance-of p2, p0, Lk57$a;

    if-eqz p2, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Lzh6;

    return-object p0
.end method
