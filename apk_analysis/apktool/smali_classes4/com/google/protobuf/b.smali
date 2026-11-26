.class public abstract Lcom/google/protobuf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx36;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/a0;",
        ">",
        "Ljava/lang/Object;",
        "Lx36<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/b;->a:Lcom/google/protobuf/j;

    return-void
.end method

.method public static c(Lcom/google/protobuf/o;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lha5;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0

    check-cast p0, Lcom/google/protobuf/o$b;

    iget-object p0, p0, Lcom/google/protobuf/o$b;->b:Lcom/google/protobuf/o;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/b;->c(Lcom/google/protobuf/o;)V

    return-object p0
.end method

.method public final b(Ljava/io/FileInputStream;)Lcom/google/protobuf/o;
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/f;->g(Ljava/io/InputStream;)Lcom/google/protobuf/f;

    move-result-object p1

    check-cast p0, Lcom/google/protobuf/o$b;

    iget-object p0, p0, Lcom/google/protobuf/o$b;->b:Lcom/google/protobuf/o;

    sget-object v0, Lcom/google/protobuf/b;->a:Lcom/google/protobuf/j;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/f;->a(I)V

    invoke-static {p0}, Lcom/google/protobuf/b;->c(Lcom/google/protobuf/o;)V

    return-object p0
.end method
