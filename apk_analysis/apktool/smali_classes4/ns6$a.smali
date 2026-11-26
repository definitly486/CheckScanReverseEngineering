.class public final Lns6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lns6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/a0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/Reference<",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/protobuf/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lns6$a;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/a0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultInstance cannot be null"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lns6$a;->b:Lcom/google/protobuf/a0;

    invoke-interface {p1}, Lcom/google/protobuf/a0;->getParserForType()Lx36;

    move-result-object p1

    iput-object p1, p0, Lns6$a;->a:Lx36;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/google/protobuf/a0;
    .locals 7

    instance-of v0, p1, Lms6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lms6;

    iget-object v0, v0, Lms6;->c:Lx36;

    iget-object v1, p0, Lns6$a;->a:Lx36;

    if-ne v0, v1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lms6;

    iget-object v0, v0, Lms6;->b:Lcom/google/protobuf/a0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Lgg4;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_7

    const/high16 v3, 0x400000

    if-gt v1, v3, :cond_7

    sget-object v3, Lns6$a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v1, :cond_3

    goto :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_0
    new-array v4, v1, [B

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v3, v1

    :goto_1
    if-lez v3, :cond_5

    sub-int v5, v1, v3

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    sub-int/2addr v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    invoke-static {v4, v2, v1, v2}, Lcom/google/protobuf/f;->f([BIIZ)Lcom/google/protobuf/f$a;

    move-result-object v0

    goto :goto_3

    :cond_6
    sub-int p0, v1, v3

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size inaccurate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez v1, :cond_8

    iget-object p0, p0, Lns6$a;->b:Lcom/google/protobuf/a0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_8
    :goto_3
    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/f;->g(Ljava/io/InputStream;)Lcom/google/protobuf/f;

    move-result-object v0

    :cond_9
    const p1, 0x7fffffff

    iput p1, v0, Lcom/google/protobuf/f;->c:I

    :try_start_2
    iget-object p0, p0, Lns6$a;->a:Lx36;

    sget-object p1, Lns6;->a:Lcom/google/protobuf/j;

    invoke-interface {p0, v0, p1}, Lx36;->a(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v0, v2}, Lcom/google/protobuf/f;->a(I)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    return-object p0

    :catch_2
    move-exception p1

    :try_start_4
    iput-object p0, p1, Lcom/google/protobuf/InvalidProtocolBufferException;->b:Lcom/google/protobuf/a0;

    throw p1
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p0

    sget-object p1, Lh88;->l:Lh88;

    const-string v0, "Invalid protobuf byte sequence"

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0

    :goto_5
    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lms6;
    .locals 1

    check-cast p1, Lcom/google/protobuf/a0;

    new-instance v0, Lms6;

    iget-object p0, p0, Lns6$a;->a:Lx36;

    invoke-direct {v0, p1, p0}, Lms6;-><init>(Lcom/google/protobuf/a0;Lx36;)V

    return-object v0
.end method
