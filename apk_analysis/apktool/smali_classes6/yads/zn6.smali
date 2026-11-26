.class public final Lyads/zn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/rewarded/Reward;


# instance fields
.field public final a:Lyads/s95;


# direct methods
.method public constructor <init>(Lyads/s95;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zn6;->a:Lyads/s95;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/zn6;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/zn6;

    iget-object p1, p1, Lyads/zn6;->a:Lyads/s95;

    iget-object p0, p0, Lyads/zn6;->a:Lyads/s95;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/zn6;->a:Lyads/s95;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
