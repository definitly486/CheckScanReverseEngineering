.class public abstract Lyads/ls1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lyads/ks1;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/ks1;

    iget-object p0, p0, Lyads/ks1;->a:Lyads/qq1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/is1;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/is1;

    iget-object p0, p0, Lyads/is1;->a:Lyads/vp1;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/js1;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/js1;

    iget-object p0, p0, Lyads/js1;->a:Lyads/lq1;

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
