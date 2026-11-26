.class public final Lqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll02;


# instance fields
.field public final b:Lix8;


# direct methods
.method public constructor <init>(Lix8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqx;->b:Lix8;

    return-void
.end method


# virtual methods
.method public final a(Lfz3;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfz3;",
            ")",
            "Ljava/util/List<",
            "Lj02;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lqx;->b:Lix8;

    invoke-interface {p0}, Lix8;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object v1, Lj02;->j:Ljava/util/regex/Pattern;

    invoke-static {p1, p0}, Lj02$a;->b(Lfz3;Ljava/lang/String;)Lj02;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final b(Lfz3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfz3;",
            "Ljava/util/List<",
            "Lj02;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
