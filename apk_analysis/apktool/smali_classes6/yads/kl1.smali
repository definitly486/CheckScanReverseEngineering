.class public abstract Lyads/kl1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyads/ll1;
    .locals 1

    instance-of v0, p0, Lyads/il1;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/il1;

    iget-object p0, p0, Lyads/il1;->a:Lyads/pe1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/hl1;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/hl1;

    iget-object p0, p0, Lyads/hl1;->a:Lyads/fa1;

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/jl1;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/jl1;

    iget-object p0, p0, Lyads/jl1;->a:Lyads/ku1;

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
