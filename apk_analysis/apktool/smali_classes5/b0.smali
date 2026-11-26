.class public abstract Lb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$a;


# instance fields
.field private final key:Lo22$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo22$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo22$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0;->key:Lo22$b;

    return-void
.end method


# virtual methods
.method public bridge fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
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

    invoke-static {p0, p1, p2}, Lo22$a$a;->a(Lo22$a;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Lo22$b;)Lo22$a;
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

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lb0;->key:Lo22$b;

    return-object p0
.end method

.method public bridge minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public bridge plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
