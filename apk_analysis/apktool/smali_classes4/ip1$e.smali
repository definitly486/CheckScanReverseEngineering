.class public final Lip1$e;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lip1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lip1;


# direct methods
.method public constructor <init>(Lip1;)V
    .locals 0

    iput-object p1, p0, Lip1$e;->b:Lip1;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lip1$e;->b:Lip1;

    invoke-virtual {p0}, Lip1;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lip1$e;->b:Lip1;

    invoke-virtual {p0}, Lip1;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lhp1;

    invoke-direct {v0, p0}, Lhp1;-><init>(Lip1;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lip1$e;->b:Lip1;

    invoke-virtual {p0}, Lip1;->size()I

    move-result p0

    return p0
.end method
