.class public abstract Lxb4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb4$a;
    }
.end annotation


# static fields
.field public static final d:Lxb4$a;


# instance fields
.field public final a:Lfc4;

.field public final b:Ljq7;

.field public final c:Lwl2;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lxb4$a;

    new-instance v1, Lfc4;

    sget-object v8, Lyk1;->POLYMORPHIC:Lyk1;

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "    "

    const/4 v5, 0x0

    const-string v6, "type"

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v9}, Lfc4;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLyk1;Z)V

    sget-object v2, Lnq7;->a:Ltp7;

    invoke-direct {v0, v1, v2}, Lxb4;-><init>(Lfc4;Ljq7;)V

    sput-object v0, Lxb4;->d:Lxb4$a;

    return-void
.end method

.method public constructor <init>(Lfc4;Ljq7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxb4;->a:Lfc4;

    iput-object p2, p0, Lxb4;->b:Ljq7;

    new-instance p1, Lwl2;

    invoke-direct {p1}, Lwl2;-><init>()V

    iput-object p1, p0, Lxb4;->c:Lwl2;

    return-void
.end method


# virtual methods
.method public final a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lyp2;->b(Lxb4;Ljava/lang/String;)Lw98;

    move-result-object v3

    new-instance v0, Ln98;

    sget-object v2, Lml9;->OBJ:Lml9;

    invoke-interface {p1}, Lxl2;->getDescriptor()Lmp7;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ln98;-><init>(Lxb4;Lml9;Lw98;Lmp7;Ln98$a;)V

    invoke-virtual {v0, p1}, Ln98;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3}, Lw98;->e()B

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected EOF after parsing, but had "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v3, Lw98;->f:Ljava/lang/String;

    iget p2, v3, Lw98;->b:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {v3, p0, p1, v0, p2}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method public final b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp7<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyd4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lv91;->c:Lv91;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lv91;->a:Lfr;

    invoke-virtual {v2}, Lfr;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lfr;->removeLast()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, [C

    if-eqz v2, :cond_1

    iget v3, v1, Lv91;->b:I

    array-length v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Lv91;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    if-nez v4, :cond_2

    const/16 v1, 0x80

    new-array v4, v1, [C

    :cond_2
    iput-object v4, v0, Lyd4;->a:[C

    :try_start_1
    new-instance v1, Lo98;

    sget-object v2, Lml9;->OBJ:Lml9;

    invoke-static {}, Lml9;->a()Lg03;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lwc4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lau1;

    invoke-direct {v4, v0}, Lau1;-><init>(Lyd4;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lo98;-><init>(Lau1;Lxb4;Lml9;[Lwc4;)V

    invoke-virtual {v1, p1, p2}, Lo98;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyd4;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lyd4;->b()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lyd4;->b()V

    throw p0

    :goto_2
    monitor-exit v1

    throw p0
.end method
