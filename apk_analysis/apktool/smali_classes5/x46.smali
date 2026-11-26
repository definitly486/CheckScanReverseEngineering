.class public final Lx46;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final g:Lx46;


# instance fields
.field public final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx46;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx46;-><init>(I)V

    sput-object v0, Lx46;->g:Lx46;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx46;->f:I

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lx9;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lx46;->f:I

    .line 7
    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget p0, p0, Lx46;->f:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrr6;

    new-instance v1, Lgr6;

    invoke-virtual {v0}, Lrr6;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lrr6;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lrr6;->f()Z

    move-result v5

    invoke-virtual {v0}, Lrr6;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lrr6;->d()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    :cond_0
    invoke-virtual {v0}, Lrr6;->a()Lmx5;

    move-result-object v8

    move-object v9, v8

    new-instance v8, Laq6;

    invoke-virtual {v9}, Lmx5;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lmx5;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v10, v9}, Laq6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lrr6;->a()Lmx5;

    move-result-object v0

    invoke-virtual {v0}, Lmx5;->a()Ljx5;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v9, Lq00;

    invoke-virtual {v0}, Ljx5;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljx5;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljx5;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v11, v0}, Lq00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-direct/range {v1 .. v9}, Lgr6;-><init>(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Laq6;Lq00;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0

    :pswitch_0
    check-cast p1, Ll17;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lb36;

    invoke-virtual {p1}, Ll17;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ll17;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
