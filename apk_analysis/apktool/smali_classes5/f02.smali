.class public abstract Lf02;
.super Lcd0;
.source "SourceFile"


# instance fields
.field private final _context:Lo22;

.field private transient intercepted:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lf02;-><init>(Le02;Lo22;)V

    return-void
.end method

.method public constructor <init>(Le02;Lo22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "Ljava/lang/Object;",
            ">;",
            "Lo22;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcd0;-><init>(Le02;)V

    .line 13
    iput-object p2, p0, Lf02;->_context:Lo22;

    return-void
.end method


# virtual methods
.method public getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lf02;->_context:Lo22;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final intercepted()Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le02<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf02;->intercepted:Le02;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lf02;->getContext()Lo22;

    move-result-object v0

    sget-object v1, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Lg02;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lg02;->interceptContinuation(Le02;)Le02;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lf02;->intercepted:Le02;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lf02;->intercepted:Le02;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lf02;->getContext()Lo22;

    move-result-object v1

    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-interface {v1, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lg02;

    invoke-interface {v1, v0}, Lg02;->releaseInterceptedContinuation(Le02;)V

    :cond_0
    sget-object v0, Lxq1;->b:Lxq1;

    iput-object v0, p0, Lf02;->intercepted:Le02;

    return-void
.end method
