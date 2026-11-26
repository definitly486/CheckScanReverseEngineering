.class public final Ld05$u;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld05;


# direct methods
.method public constructor <init>(Ld05;)V
    .locals 0

    iput-object p1, p0, Ld05$u;->b:Ld05;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Ld05$u;->b:Ld05;

    invoke-virtual {p0}, Ld05;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ld05$u;->b:Ld05;

    invoke-virtual {p0, p1}, Ld05;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Ld05$u;->b:Ld05;

    invoke-virtual {p0}, Ld05;->isEmpty()Z

    move-result p0

    return p0
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

    new-instance v0, Ld05$t;

    iget-object p0, p0, Ld05$u;->b:Ld05;

    invoke-direct {v0, p0}, Ld05$h;-><init>(Ld05;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Ld05$u;->b:Ld05;

    invoke-virtual {p0}, Ld05;->size()I

    move-result p0

    return p0
.end method
