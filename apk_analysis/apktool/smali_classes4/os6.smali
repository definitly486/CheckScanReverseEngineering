.class public final synthetic Los6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

.field public final synthetic c:Lcom/google/protobuf/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los6;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Los6;->c:Lcom/google/protobuf/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Los6;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object p0, p0, Los6;->c:Lcom/google/protobuf/a;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->a(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
