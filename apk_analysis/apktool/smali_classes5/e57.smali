.class public abstract Le57;
.super Lcd0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcd0;-><init>(Le02;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object p0

    sget-object p1, Lgx2;->b:Lgx2;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Lo22;
    .locals 0

    sget-object p0, Lgx2;->b:Lgx2;

    return-object p0
.end method
