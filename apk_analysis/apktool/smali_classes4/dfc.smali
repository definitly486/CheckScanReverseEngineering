.class public final synthetic Ldfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Llm3;


# direct methods
.method public synthetic constructor <init>(Llm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfc;->a:Llm3;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Ldfc;->a:Llm3;

    invoke-interface {p0, p1}, Llm3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object p0

    return-object p0
.end method
