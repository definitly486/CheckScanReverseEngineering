.class public final Lu9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu9$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lkx5;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Llx5;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lu9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lu9;->f:Lu9;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx5;

    invoke-virtual {v0}, Lkx5;->a()Ldk0;

    move-result-object v0

    sget-object v1, Lu9$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object v0, Llx5$a;->a:Llx5$a;

    goto :goto_1

    :pswitch_1
    sget-object v0, Llx5$c;->a:Llx5$c;

    goto :goto_1

    :pswitch_2
    sget-object v0, Llx5$b;->a:Llx5$b;

    goto :goto_1

    :pswitch_3
    sget-object v0, Llx5$d;->a:Llx5$d;

    goto :goto_1

    :pswitch_4
    sget-object v0, Llx5$f;->a:Llx5$f;

    goto :goto_1

    :pswitch_5
    sget-object v0, Llx5$g;->a:Llx5$g;

    goto :goto_1

    :pswitch_6
    sget-object v0, Llx5$e;->a:Llx5$e;

    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
