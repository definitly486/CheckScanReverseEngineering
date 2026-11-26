.class public final Lta5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lta5;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/HashSet;

.field public c:[Lsa5;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lta5;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lta5;->b:Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v0, v0, [Lsa5;

    iput-object v0, p0, Lta5;->c:[Lsa5;

    return-void
.end method

.method public static declared-synchronized a()Lta5;
    .locals 2

    const-class v0, Lta5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lta5;->e:Lta5;

    if-nez v1, :cond_0

    new-instance v1, Lta5;

    invoke-direct {v1}, Lta5;-><init>()V

    sput-object v1, Lta5;->e:Lta5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsa5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lta5;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lta5;->c:[Lsa5;

    iget p0, p0, Lta5;->d:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lsa5;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lvv4;
    .locals 3

    const-string p2, "Metric with name "

    invoke-static {p1}, Li13;->b(Ljava/lang/String;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "missing metric name"

    invoke-static {p3, v0}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object p3, p0, Lta5;->a:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lta5;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p2, p0, Lta5;->d:I

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lta5;->c:[Lsa5;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, 0x5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsa5;

    iput-object v0, p0, Lta5;->c:[Lsa5;

    :cond_0
    new-instance v0, Lvv4;

    invoke-direct {v0, p2, p1, p4, p5}, Le46;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object p4, p0, Lta5;->c:[Lsa5;

    aput-object v0, p4, p2

    iget-object p2, p0, Lta5;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lta5;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lta5;->d:I

    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
