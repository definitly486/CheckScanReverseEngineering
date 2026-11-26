.class public final Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
.super Lcom/google/protobuf/o$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o$a<",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$000()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLimits()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsLimits(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getLimits()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLimitsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getLimitsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object p0

    :cond_0
    return-object p2
.end method

.method public getLimitsOrThrow(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object p0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAllLimits(Ljava/util/Map;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLimits(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLimits(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
