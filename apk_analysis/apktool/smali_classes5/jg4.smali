.class public interface abstract Ljg4;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public b()Lhg4;
    .locals 0

    sget-object p0, Lc;->d:Lhg4;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "KoinApplication has not been started"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
