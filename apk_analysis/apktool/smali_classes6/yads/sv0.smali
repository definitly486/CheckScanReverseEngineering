.class public abstract Lyads/sv0;
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

    instance-of v0, p0, Lyads/qv0;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/qv0;

    iget-object p0, p0, Lyads/qv0;->a:Lyads/mp4;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/pv0;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/pv0;

    iget-object p0, p0, Lyads/pv0;->a:Lyads/mf3;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/rv0;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/rv0;

    iget-object p0, p0, Lyads/rv0;->a:Lyads/kq5;

    return-object p0

    :cond_2
    instance-of v0, p0, Lyads/ov0;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/ov0;

    iget-object p0, p0, Lyads/ov0;->a:Lyads/tn2;

    return-object p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
