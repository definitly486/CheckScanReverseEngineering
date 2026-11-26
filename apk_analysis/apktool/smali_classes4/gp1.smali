.class public final Lgp1;
.super Lip1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lip1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lip1;


# direct methods
.method public constructor <init>(Lip1;)V
    .locals 0

    iput-object p1, p0, Lgp1;->f:Lip1;

    invoke-direct {p0, p1}, Lip1$b;-><init>(Lip1;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lip1$d;

    iget-object p0, p0, Lgp1;->f:Lip1;

    invoke-direct {v0, p0, p1}, Lip1$d;-><init>(Lip1;I)V

    return-object v0
.end method
