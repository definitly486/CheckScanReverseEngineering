.class public final Lyads/j90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls22;


# instance fields
.field public final b:Lyads/k75;


# direct methods
.method public constructor <init>(Lyads/k75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j90;->b:Lyads/k75;

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

    sget-object p0, Ls22$a;->b:Ls22$a;

    return-object p0
.end method

.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    iget-object p0, p0, Lyads/j90;->b:Lyads/k75;

    invoke-interface {p0, p1, p2}, Lyads/k75;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
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
