.class public abstract Lyads/h92;
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

    instance-of v0, p0, Lyads/g92;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/g92;

    iget-object p0, p0, Lyads/g92;->a:Lyads/t22;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/f92;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/f92;

    iget-object p0, p0, Lyads/f92;->a:Lyads/w61;

    return-object p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
