.class public final Lwa4;
.super Ly19;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly19;"
    }
.end annotation


# instance fields
.field public final synthetic d:Llm3;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Llm3;)V
    .locals 0

    iput-object p2, p0, Lwa4;->d:Llm3;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ly19;-><init>(Ljava/util/Iterator;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lwa4;->d:Llm3;

    invoke-interface {p0, p1}, Llm3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
