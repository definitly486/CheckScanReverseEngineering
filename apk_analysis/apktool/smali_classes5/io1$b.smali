.class public final Lio1$b;
.super Lio1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public varargs constructor <init>([Ly03;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lio1;-><init>()V

    iget v0, p0, Lio1;->c:I

    iget-object v1, p0, Lio1;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    new-instance v0, Lio1$a;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lio1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lio1;->c()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio1;->a:Ljava/util/ArrayList;

    const-string v0, ", "

    invoke-static {v0, p0}, Lja8;->i(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
