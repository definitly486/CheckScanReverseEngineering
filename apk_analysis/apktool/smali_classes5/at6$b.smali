.class public final Lat6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkd8<",
        "Ljava/net/ProxySelector;",
        ">;"
    }
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p0

    return-object p0
.end method
