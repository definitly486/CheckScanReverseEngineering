.class public abstract Lyads/aa2;
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

    instance-of v0, p0, Lyads/y92;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/y92;

    iget-object p0, p0, Lyads/y92;->a:Lyads/ka2;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/z92;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/z92;

    iget-object p0, p0, Lyads/z92;->a:Lyads/qa2;

    return-object p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
