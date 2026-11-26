.class public final Lyads/dk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls22;


# instance fields
.field public final b:Lyads/ye4;

.field public final c:Ls22$a;


# direct methods
.method public constructor <init>(Lyads/ye4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dk4;->b:Lyads/ye4;

    sget-object p1, Ls22$a;->b:Ls22$a;

    iput-object p1, p0, Lyads/dk4;->c:Ls22$a;

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

    iget-object p0, p0, Lyads/dk4;->c:Ls22$a;

    return-object p0
.end method

.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/dk4;->b:Lyads/ye4;

    sget-object p1, Lyads/o8;->w:Lyads/m4;

    invoke-interface {p0, p1}, Lyads/ye4;->a(Lyads/m4;)V

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
