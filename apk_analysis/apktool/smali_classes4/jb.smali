.class public final synthetic Ljb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lgo1;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lgo1;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb;->b:Lgo1;

    iput p2, p0, Ljb;->c:I

    iput-object p3, p0, Ljb;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ljb;->c:I

    iget-object v1, p0, Ljb;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Ljb;->b:Lgo1;

    invoke-virtual {p0, v0, v1}, Llb;->t(ILcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
