.class public final Landroidx/savedstate/internal/CanonicalName_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getCanonicalName(Lne4;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lne4;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
