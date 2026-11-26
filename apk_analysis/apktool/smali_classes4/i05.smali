.class public final synthetic Li05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:Lcom/google/common/collect/q$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li05;->b:Lcom/google/common/collect/q$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/p;

    iget-object p0, p0, Li05;->b:Lcom/google/common/collect/q$b;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/p;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/q$b;)V

    return-object v0
.end method
