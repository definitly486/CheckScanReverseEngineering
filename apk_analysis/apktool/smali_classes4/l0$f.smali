.class public abstract Ll0$f;
.super Ll0;
.source "SourceFile"

# interfaces
.implements Ll0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ll0<",
        "TV;>;",
        "Ll0$e<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lm0;->b:Ljava/lang/Object;

    instance-of p0, p0, Ll0$a;

    return p0
.end method
