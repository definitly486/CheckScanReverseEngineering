.class public final Lh88;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh88$c;,
        Lh88$b;,
        Lh88$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh88;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lh88;

.field public static final f:Lh88;

.field public static final g:Lh88;

.field public static final h:Lh88;

.field public static final i:Lh88;

.field public static final j:Lh88;

.field public static final k:Lh88;

.field public static final l:Lh88;

.field public static final m:Lh88;

.field public static final n:Lla5$f;

.field public static final o:Lla5$f;


# instance fields
.field public final a:Lh88$a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {}, Lh88$a;->values()[Lh88$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lh88$a;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lh88;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v8}, Lh88;-><init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh88;

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lh88;->a:Lh88$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, " & "

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Code value duplication between "

    invoke-static {v3, v0, v1, v2}, Ln2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lh88;->d:Ljava/util/List;

    sget-object v0, Lh88$a;->OK:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->e:Lh88;

    sget-object v0, Lh88$a;->CANCELLED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->f:Lh88;

    sget-object v0, Lh88$a;->UNKNOWN:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->g:Lh88;

    sget-object v0, Lh88$a;->INVALID_ARGUMENT:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->DEADLINE_EXCEEDED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->h:Lh88;

    sget-object v0, Lh88$a;->NOT_FOUND:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->ALREADY_EXISTS:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->PERMISSION_DENIED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->i:Lh88;

    sget-object v0, Lh88$a;->UNAUTHENTICATED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->RESOURCE_EXHAUSTED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->j:Lh88;

    sget-object v0, Lh88$a;->FAILED_PRECONDITION:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->k:Lh88;

    sget-object v0, Lh88$a;->ABORTED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->OUT_OF_RANGE:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->UNIMPLEMENTED:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    sget-object v0, Lh88$a;->INTERNAL:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->l:Lh88;

    sget-object v0, Lh88$a;->UNAVAILABLE:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    sput-object v0, Lh88;->m:Lh88;

    sget-object v0, Lh88$a;->DATA_LOSS:Lh88$a;

    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    new-instance v0, Lh88$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lla5$d;->d:Ljava/util/BitSet;

    new-instance v1, Lla5$f;

    const-string v2, "grpc-status"

    invoke-direct {v1, v2, v3, v0}, Lla5$f;-><init>(Ljava/lang/String;ZLla5$g;)V

    sput-object v1, Lh88;->n:Lla5$f;

    new-instance v0, Lh88$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lla5$f;

    const-string v2, "grpc-message"

    invoke-direct {v1, v2, v3, v0}, Lla5$f;-><init>(Ljava/lang/String;ZLla5$g;)V

    sput-object v1, Lh88;->o:Lla5$f;

    return-void
.end method

.method public constructor <init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh88;->a:Lh88$a;

    iput-object p2, p0, Lh88;->b:Ljava/lang/String;

    iput-object p3, p0, Lh88;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static c(Lh88;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lh88;->b:Ljava/lang/String;

    iget-object v1, p0, Lh88;->a:Lh88$a;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh88;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lh88;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lh88;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh88;

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lh88;->g:Lh88;

    invoke-virtual {v0, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Lh88;
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    check-cast v0, Lio/grpc/StatusException;

    iget-object p0, v0, Lio/grpc/StatusException;->b:Lh88;

    return-object p0

    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Lio/grpc/StatusRuntimeException;

    iget-object p0, v0, Lio/grpc/StatusRuntimeException;->b:Lh88;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lh88;->g:Lh88;

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lio/grpc/StatusRuntimeException;
    .locals 2

    new-instance v0, Lio/grpc/StatusRuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/StatusRuntimeException;-><init>(Lh88;Lla5;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lh88;
    .locals 4

    iget-object v0, p0, Lh88;->c:Ljava/lang/Throwable;

    iget-object v1, p0, Lh88;->b:Ljava/lang/String;

    iget-object p0, p0, Lh88;->a:Lh88$a;

    if-nez v1, :cond_0

    new-instance v1, Lh88;

    invoke-direct {v1, p0, p1, v0}, Lh88;-><init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    new-instance v2, Lh88;

    const-string v3, "\n"

    invoke-static {v1, v3, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lh88;-><init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 1

    sget-object v0, Lh88$a;->OK:Lh88$a;

    iget-object p0, p0, Lh88;->a:Lh88$a;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Ljava/lang/Throwable;)Lh88;
    .locals 2

    iget-object v0, p0, Lh88;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lh88;

    iget-object v1, p0, Lh88;->a:Lh88$a;

    iget-object p0, p0, Lh88;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lh88;-><init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lh88;
    .locals 2

    iget-object v0, p0, Lh88;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lh88;

    iget-object v1, p0, Lh88;->a:Lh88$a;

    iget-object p0, p0, Lh88;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, p0}, Lh88;-><init>(Lh88$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget-object v1, p0, Lh88;->a:Lh88$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    iget-object v2, p0, Lh88;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh88;->c:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    sget-object v1, Lxt8;->a:Ljava/lang/Object;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "cause"

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
