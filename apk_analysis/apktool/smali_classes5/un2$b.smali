.class public final Lun2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lun2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Z

.field public f:Z

.field public g:Lun2$a;

.field public h:I

.field public i:J

.field public final synthetic j:Lun2;


# direct methods
.method public constructor <init>(Lun2;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lun2$b;->j:Lun2;

    iput-object p2, p0, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array v0, p1, [J

    iput-object v0, p0, Lun2$b;->b:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lun2$b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lun2$b;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lun2$b;->c:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lun2$b;->j:Lun2;

    iget-object v4, v4, Lun2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lun2$b;->d:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lun2$b;->j:Lun2;

    iget-object v4, v4, Lun2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lun2$c;
    .locals 9

    sget-object v0, Lgb9;->a:[B

    iget-boolean v0, p0, Lun2$b;->e:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lun2$b;->j:Lun2;

    iget-boolean v1, v0, Lun2;->k:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lun2$b;->g:Lun2$a;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lun2$b;->f:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lun2$b;->b:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [J

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lun2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lt54;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lwv8;->d:Lwv8$a;

    invoke-direct {v3, v4, v2}, Lt54;-><init>(Ljava/io/InputStream;Lwv8;)V

    iget-boolean v2, v0, Lun2;->k:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lun2$b;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lun2$b;->h:I

    new-instance v2, Lwn2;

    invoke-direct {v2, v3, v0, p0}, Lwn2;-><init>(Lv48;Lun2;Lun2$b;)V

    move-object v3, v2

    :goto_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Lun2$c;

    iget-object v3, p0, Lun2$b;->j:Lun2;

    iget-object v4, p0, Lun2$b;->a:Ljava/lang/String;

    iget-wide v5, p0, Lun2$b;->i:J

    invoke-direct/range {v2 .. v8}, Lun2$c;-><init>(Lun2;Ljava/lang/String;JLjava/util/ArrayList;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv48;

    invoke-static {v2}, Lgb9;->d(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v0, p0}, Lun2;->V(Lun2$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
