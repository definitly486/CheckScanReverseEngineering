.class public final synthetic Le34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field public final synthetic b:Lj21;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le34;->a:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Le34;->b:Lj21;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le34;->a:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object p0, p0, Le34;->b:Lj21;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->e(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V

    return-void
.end method
