.class public abstract Lfx0$g;
.super Lfx0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lfx0$a;

    invoke-direct {v0, p0}, Lfx0$a;-><init>(Lfx0;)V

    return-object v0
.end method
