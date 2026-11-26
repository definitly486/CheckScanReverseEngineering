.class public abstract Lcs6;
.super Les6;
.source "SourceFile"

# interfaces
.implements Lcf4;


# virtual methods
.method public final computeReflected()Lme4;
    .locals 1

    sget-object v0, Lx07;->a:La17;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getGetter()V
    .locals 0

    invoke-virtual {p0}, Les6;->getReflected()Lze4;

    move-result-object p0

    check-cast p0, Lcf4;

    invoke-interface {p0}, Lcf4;->getGetter()V

    return-void
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lds6;

    invoke-virtual {p0}, Lcs6;->getGetter()V

    const/4 p0, 0x0

    throw p0
.end method
