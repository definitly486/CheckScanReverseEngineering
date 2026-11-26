.class public final Lo47;
.super Lw93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo47$a;
    }
.end annotation


# static fields
.field public static final g:Lj46;


# instance fields
.field public final d:Ljava/lang/ClassLoader;

.field public final e:Lw93;

.field public final f:Lfh8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj46;->c:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object v0

    sput-object v0, Lo47;->g:Lj46;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    sget-object v0, Lw93;->b:Lke4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lw93;-><init>()V

    iput-object p1, p0, Lo47;->d:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lo47;->e:Lw93;

    new-instance p1, Lrr1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lrr1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lo47;->f:Lfh8;

    return-void
.end method


# virtual methods
.method public final E(Lj46;)Lm93;
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "resources are not writable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final P(Lj46;Z)Ls18;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Lj46;)Lv48;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lo47$a;->a(Lj46;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "file not found: "

    if-eqz v0, :cond_2

    sget-object v0, Lo47;->g:Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lf;->a(Lj46;Lj46;Z)Lj46;

    move-result-object v4

    invoke-virtual {v4, v0}, Lj46;->e(Lj46;)Lj46;

    move-result-object v0

    iget-object v0, v0, Lj46;->b:Lgx0;

    invoke-virtual {v0}, Lgx0;->x()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lo47;->d:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    instance-of p1, p0, Ljava/net/JarURLConnection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/net/JarURLConnection;

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lvp3;->g(Ljava/io/InputStream;)Lt54;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1, v2}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-static {p1, v2}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Lj46;)Ls18;
    .locals 1

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lj46;Lj46;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lj46;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lj46;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is read-only"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lj46;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj46;",
            ")",
            "Ljava/util/List<",
            "Lj46;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lo47;->g:Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf;->a(Lj46;Lj46;Z)Lj46;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj46;->e(Lj46;)Lj46;

    move-result-object v2

    iget-object v2, v2, Lj46;->b:Lgx0;

    invoke-virtual {v2}, Lgx0;->x()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, Lo47;->f:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb36;

    iget-object v6, v5, Lb36;->b:Ljava/lang/Object;

    check-cast v6, Lw93;

    iget-object v5, v5, Lb36;->c:Ljava/lang/Object;

    check-cast v5, Lj46;

    :try_start_0
    invoke-virtual {v5, v2}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object v7

    invoke-virtual {v6, v7}, Lw93;->o(Lj46;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lj46;

    invoke-static {v9}, Lo47$a;->a(Lj46;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj46;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v5, Lj46;->b:Lgx0;

    invoke-virtual {v9}, Lgx0;->x()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lj46;->b:Lgx0;

    invoke-virtual {v8}, Lgx0;->x()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lta8;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5c

    const/16 v10, 0x2f

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v8}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v6, v3}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "file not found: "

    invoke-static {p1, p0}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final v(Lj46;)Ls93;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lo47$a;->a(Lj46;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lo47;->g:Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf;->a(Lj46;Lj46;Z)Lj46;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj46;->e(Lj46;)Lj46;

    move-result-object p1

    iget-object p1, p1, Lj46;->b:Lgx0;

    invoke-virtual {p1}, Lgx0;->x()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lo47;->f:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Lw93;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lj46;

    invoke-virtual {v0, p1}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw93;->v(Lj46;)Ls93;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final y(Lj46;)Lm93;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lo47$a;->a(Lj46;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "file not found: "

    if-eqz v0, :cond_1

    sget-object v0, Lo47;->g:Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lf;->a(Lj46;Lj46;Z)Lj46;

    move-result-object v3

    invoke-virtual {v3, v0}, Lj46;->e(Lj46;)Lj46;

    move-result-object v0

    iget-object v0, v0, Lj46;->b:Lgx0;

    invoke-virtual {v0}, Lgx0;->x()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lo47;->f:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb36;

    iget-object v4, v3, Lb36;->b:Ljava/lang/Object;

    check-cast v4, Lw93;

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Lj46;

    :try_start_0
    invoke-virtual {v3, v0}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object v3

    invoke-virtual {v4, v3}, Lw93;->y(Lj46;)Lm93;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    invoke-static {p1, v2}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {p1, v2}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
