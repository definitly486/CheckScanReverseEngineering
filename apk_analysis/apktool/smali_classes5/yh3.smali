.class public final Lyh3;
.super Lo0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo0<",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:[Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(I[Ljava/lang/Iterable;)V
    .locals 0

    iput-object p2, p0, Lyh3;->d:[Ljava/lang/Iterable;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo0;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyh3;->d:[Ljava/lang/Iterable;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
