.class public final synthetic Lmx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze6;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field public final synthetic c:Lcom/google/firebase/inappmessaging/model/RateLimit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx6;->b:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p2, p0, Lmx6;->c:Lcom/google/firebase/inappmessaging/model/RateLimit;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmx6;->c:Lcom/google/firebase/inappmessaging/model/RateLimit;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    iget-object p0, p0, Lmx6;->b:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    invoke-static {p0, v0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->d(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z

    move-result p0

    return p0
.end method
