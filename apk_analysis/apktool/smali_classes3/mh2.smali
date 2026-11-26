.class public final synthetic Lmh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->b(Landroid/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
