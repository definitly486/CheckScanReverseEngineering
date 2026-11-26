.class public final synthetic Lps6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

.field public final synthetic c:Lx36;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lx36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps6;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lps6;->c:Lx36;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lps6;->b:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object p0, p0, Lps6;->c:Lx36;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->b(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lx36;)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0
.end method
