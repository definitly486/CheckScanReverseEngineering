.class public final synthetic Lig5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:Lcom/google/common/collect/r;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/r;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig5;->b:Lcom/google/common/collect/r;

    iput-object p2, p0, Lig5;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lig5;->b:Lcom/google/common/collect/r;

    iget-object p0, p0, Lcom/google/common/collect/s;->g:Lia5;

    iget-object p0, p0, Lia5;->b:Ljava/lang/Object;

    check-cast p0, Lh95;

    invoke-virtual {p0, p1}, Lh95;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
