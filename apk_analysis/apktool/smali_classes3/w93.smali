.class public abstract Lw93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final b:Lke4;

.field public static final c:Lj46;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lqn5;

    invoke-direct {v0}, Lke4;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lke4;

    invoke-direct {v0}, Lke4;-><init>()V

    :goto_0
    sput-object v0, Lw93;->b:Lke4;

    sget-object v0, Lj46;->c:Ljava/lang/String;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object v0

    sput-object v0, Lw93;->c:Lj46;

    new-instance v0, Lo47;

    const-class v1, Lo47;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lo47;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract E(Lj46;)Lm93;
.end method

.method public abstract P(Lj46;Z)Ls18;
.end method

.method public abstract Q(Lj46;)Lv48;
.end method

.method public abstract a(Lj46;)Ls18;
.end method

.method public abstract b(Lj46;Lj46;)V
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final e(Lj46;)V
    .locals 2

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lw93;->n(Lj46;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lfr;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lj46;->d()Lj46;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj46;

    invoke-virtual {p0, v0}, Lw93;->f(Lj46;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract f(Lj46;)V
.end method

.method public abstract g(Lj46;)V
.end method

.method public final m(Lj46;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw93;->g(Lj46;)V

    return-void
.end method

.method public final n(Lj46;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw93;->v(Lj46;)Ls93;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract o(Lj46;)Ljava/util/List;
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
.end method

.method public final p(Lj46;)Ls93;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw93;->v(Lj46;)Ls93;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "no such file: "

    invoke-static {p1, p0}, Lv93;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract v(Lj46;)Ls93;
.end method

.method public abstract y(Lj46;)Lm93;
.end method
