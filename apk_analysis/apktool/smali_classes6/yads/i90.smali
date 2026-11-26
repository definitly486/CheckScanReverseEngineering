.class public final Lyads/i90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls22;


# instance fields
.field public final b:Ls22$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ls22$a;->b:Ls22$a;

    iput-object v0, p0, Lyads/i90;->b:Ls22$a;

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

    iget-object p0, p0, Lyads/i90;->b:Ls22$a;

    return-object p0
.end method

.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
