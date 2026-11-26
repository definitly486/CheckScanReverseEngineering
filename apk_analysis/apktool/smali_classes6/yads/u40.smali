.class public final Lyads/u40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls22;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ls22$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/u40;->b:Ljava/util/List;

    sget-object p1, Ls22$a;->b:Ls22$a;

    iput-object p1, p0, Lyads/u40;->c:Ls22$a;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lo22$a$a;->a(Lo22$a;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lo22$b;)Lo22$a;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lo22$b;
    .locals 0

    iget-object p0, p0, Lyads/u40;->c:Ls22$a;

    return-object p0
.end method

.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lyads/u40;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls22;

    :try_start_0
    invoke-interface {v0, p1, p2}, Ls22;->handleException(Lo22;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusKey(Lo22$b;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
