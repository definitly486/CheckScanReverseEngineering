.class public abstract Lyads/kv0;
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

    instance-of v0, p0, Lyads/iv0;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/iv0;

    iget-object p0, p0, Lyads/iv0;->a:Lyads/hp4;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/hv0;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/hv0;

    iget-object p0, p0, Lyads/hv0;->a:Lyads/hf3;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/jv0;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/jv0;

    iget-object p0, p0, Lyads/jv0;->a:Lyads/gq5;

    return-object p0

    :cond_2
    instance-of v0, p0, Lyads/gv0;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/gv0;

    iget-object p0, p0, Lyads/gv0;->a:Lyads/pn2;

    return-object p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
