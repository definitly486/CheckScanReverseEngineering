.class public final synthetic Lyads/lo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmm3;


# instance fields
.field public final synthetic a:Lyads/mo6;


# direct methods
.method public constructor <init>(Lyads/mo6;)V
    .locals 0

    iput-object p1, p0, Lyads/lo6;->a:Lyads/mo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/lo6;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    check-cast p1, Lmm3;

    invoke-interface {p1}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFunctionDelegate()Lcm3;
    .locals 7

    new-instance v0, Lqm3;

    iget-object v2, p0, Lyads/lo6;->a:Lyads/mo6;

    const-string v5, "trackVerificationNotExecuted(Lcom/yandex/mobile/ads/video/playback/tracker/verification/omsdk/error/VerificationNotExecutedException;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lyads/mo6;

    const-string v4, "trackVerificationNotExecuted"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
