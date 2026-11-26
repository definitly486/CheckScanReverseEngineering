.class public abstract Lcom/google/protobuf/o$a;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/o<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/o$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected instance:Lcom/google/protobuf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/o$a;->defaultInstance:Lcom/google/protobuf/o;

    invoke-virtual {p1}, Lcom/google/protobuf/o;->isMutable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/o$a;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    return-void

    :cond_0
    const-string p0, "Default instance must be immutable."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private newMutableInstance()Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/o$a;->defaultInstance:Lcom/google/protobuf/o;

    invoke-virtual {p0}, Lcom/google/protobuf/o;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/a0;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/a0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/a0;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/google/protobuf/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/o;->makeImmutable()V

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a0$a;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->clear()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final clear()Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o$a;->defaultInstance:Lcom/google/protobuf/o;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/o$a;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    return-object p0

    :cond_0
    const-string p0, "Default instance must be immutable."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->clone()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a0$a;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->clone()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/o;->newBuilderForType()Lcom/google/protobuf/o$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p0

    iput-object p0, v0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->clone()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final copyOnWrite()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWriteInternal()V

    :cond_0
    return-void
.end method

.method public copyOnWriteInternal()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/o$a;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-static {v0, v1}, Lcom/google/protobuf/o$a;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    return-void
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/a0;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/google/protobuf/o$a;->defaultInstance:Lcom/google/protobuf/o;

    return-object p0
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;
    .locals 0

    check-cast p1, Lcom/google/protobuf/o;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$a;->internalMergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/o;->isInitialized(Lcom/google/protobuf/o;Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/a$a;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/o$a;->mergeFrom([BII)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/o$a;->mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/a0$a;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/a0$a;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/o$a;->mergeFrom([BII)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/a0$a;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/o$a;->mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/f;",
            "Lcom/google/protobuf/j;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    :try_start_0
    sget-object v0, Lrs6;->c:Lrs6;

    iget-object v1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    iget-object v2, p1, Lcom/google/protobuf/f;->d:Lcom/google/protobuf/g;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/protobuf/g;

    invoke-direct {v2, p1}, Lcom/google/protobuf/g;-><init>(Lcom/google/protobuf/f;)V

    :goto_0
    invoke-interface {v0, v1, v2, p2}, Lcom/google/protobuf/f0;->e(Ljava/lang/Object;Lcom/google/protobuf/g;Lcom/google/protobuf/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_1
    throw p0
.end method

.method public mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 58
    iget-object v0, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-static {v0, p1}, Lcom/google/protobuf/o$a;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/o$a;->mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom([BIILcom/google/protobuf/j;)Lcom/google/protobuf/o$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/j;",
            ")TBuilderType;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->copyOnWrite()V

    .line 60
    :try_start_0
    sget-object v0, Lrs6;->c:Lrs6;

    .line 61
    iget-object v1, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/google/protobuf/o$a;->instance:Lcom/google/protobuf/o;

    add-int v6, p2, p3

    new-instance v7, Lcom/google/protobuf/d$b;

    invoke-direct {v7, p4}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/j;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/protobuf/f0;->c(Ljava/lang/Object;[BIILcom/google/protobuf/d$b;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 64
    const-string p1, "Reading from byte array should not throw IOException."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    .line 65
    :catch_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 66
    throw p0
.end method
