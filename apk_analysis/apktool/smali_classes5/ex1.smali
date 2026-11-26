.class public final Lex1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex1$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lex1$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lcx1;


# virtual methods
.method public final a(Lcx1;)V
    .locals 2

    const-string v0, "newState"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lex1;->b:Lcx1;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lex1;->b:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-eq v0, v1, :cond_2

    iput-object p1, p0, Lex1;->b:Lcx1;

    iget-object p1, p0, Lex1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lex1;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lex1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lex1$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
