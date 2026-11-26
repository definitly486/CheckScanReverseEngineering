.class public final Lpj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnj4;


# instance fields
.field public final a:Loh4;


# direct methods
.method public constructor <init>(Loh4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj4;->a:Loh4;

    return-void
.end method


# virtual methods
.method public final a(Lnh4;I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnh4;",
            "I)",
            "Lmz7<",
            "La57<",
            "Lli4;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpj4;->a:Loh4;

    invoke-interface {p0, p1, p2}, Loh4;->a(Lnh4;I)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljj4;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpj4;->a:Loh4;

    invoke-interface {p0, p1}, Loh4;->b(I)Lmz7;

    move-result-object p0

    return-object p0
.end method
