.class public final Ln67$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lokhttp3/a$a;

.field public b:Lfz3;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln67$b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln67$b;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Li02$a;)V
    .locals 1

    const-string v0, "factory == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Ln67$b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lfz3$a;

    invoke-direct {v0}, Lfz3$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfz3$a;->a()Lfz3;

    move-result-object p1

    iget-object v0, p1, Lfz3;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ln67$b;->b:Lfz3;

    return-void

    :cond_0
    const-string p0, "baseUrl must end in /: "

    invoke-static {p1, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ln67;
    .locals 9

    iget-object v0, p0, Ln67$b;->b:Lfz3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln67$b;->a:Lokhttp3/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    :cond_0
    move-object v2, v0

    sget-object v6, La96;->a:Lvi;

    sget-object v0, La96;->c:Ldv0;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ln67$b;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v6}, Ldv0;->a(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ldv0;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Ln67$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v4

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcv0;

    invoke-direct {v4}, Li02$a;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    new-instance v1, Ln67;

    iget-object p0, p0, Ln67$b;->b:Lfz3;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ln67;-><init>(Lokhttp3/a$a;Lfz3;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_1
    const-string p0, "Base URL required."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
