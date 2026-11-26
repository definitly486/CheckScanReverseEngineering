.class public abstract Lyads/ss1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xq3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lyads/rs1;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/rs1;

    iget-object p0, p0, Lyads/rs1;->a:Lyads/uq1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/ps1;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/ps1;

    iget-object p0, p0, Lyads/ps1;->a:Lyads/zp1;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/qs1;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/qs1;

    iget-object p0, p0, Lyads/qs1;->a:Lyads/pq1;

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
