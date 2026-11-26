.class public abstract Lfd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx83<",
        "TTarget;>;"
    }
.end annotation


# instance fields
.field public final a:Ld93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld93<",
            "TTarget;",
            "Led2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld93;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd2;->a:Ld93;

    iput-object p2, p0, Lfd2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, Lgd2;

    new-instance v1, Lfd2$a;

    iget-object v2, p0, Lfd2;->a:Ld93;

    invoke-interface {v2}, Ld93;->a()Ld3;

    move-result-object v3

    const-string v6, "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Ld3;

    const-string v5, "getterNotNull"

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lfd2;->b:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lgd2;-><init>(Lfd2$a;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()La46;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, La46;

    new-instance v1, Lhq5;

    new-instance v2, Ltj3;

    iget-object p0, p0, Lfd2;->a:Ld93;

    invoke-interface {p0}, Ld93;->a()Ld3;

    move-result-object v3

    invoke-interface {p0}, Ld93;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ltj3;-><init>(Ld3;Ljava/lang/String;)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {v0, p0, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final c()Ld93;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld93<",
            "TTarget;",
            "Led2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfd2;->a:Ld93;

    return-object p0
.end method
