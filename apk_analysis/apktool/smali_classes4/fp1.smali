.class public final Lfp1;
.super Lip1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lip1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lip1;


# direct methods
.method public constructor <init>(Lip1;)V
    .locals 0

    iput-object p1, p0, Lfp1;->f:Lip1;

    invoke-direct {p0, p1}, Lip1$b;-><init>(Lip1;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lfp1;->f:Lip1;

    invoke-virtual {p0}, Lip1;->p()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method
