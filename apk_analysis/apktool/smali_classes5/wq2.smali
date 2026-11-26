.class public final Lwq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22;


# instance fields
.field public final synthetic b:Lo22;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwq2;->b:Lo22;

    iput-object p2, p0, Lwq2;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lwq2;->b:Lo22;

    invoke-interface {p0, p1, p2}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object p0, p0, Lwq2;->b:Lo22;

    invoke-interface {p0, p1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    iget-object p0, p0, Lwq2;->b:Lo22;

    invoke-interface {p0, p1}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lo22;)Lo22;
    .locals 0

    iget-object p0, p0, Lwq2;->b:Lo22;

    invoke-interface {p0, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
