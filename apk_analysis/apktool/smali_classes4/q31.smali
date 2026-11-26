.class public final synthetic Lq31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Config$OptionMatcher;
.implements Lxl3;
.implements Lyads/tt3;
.implements Lgv9;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq31;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq31;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq31;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    iget-object p0, p0, Lq31;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/model/RateLimit;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->f(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lq31;->b:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/j0;

    iget-object p0, p0, Lq31;->c:Ljava/lang/Object;

    check-cast p0, Lvy9;

    iget-object v0, v0, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    iget-object v0, v0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    invoke-virtual {v0, p0}, Lcom/my/target/r;->b(Lao9;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lq31;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Lq31;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ye6;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/ye6;Lyads/pe;)V

    return-void
.end method

.method public onOptionMatched(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 1

    iget-object v0, p0, Lq31;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    iget-object p0, p0, Lq31;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/Config;

    invoke-static {v0, p0, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->a(Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    return p0
.end method
