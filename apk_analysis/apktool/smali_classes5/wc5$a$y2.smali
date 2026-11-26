.class public final Lwc5$a$y2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Lv05;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$y2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$y2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$y2;->f:Lwc5$a$y2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lgr3;->b(Lze7;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lw05;

    invoke-direct {p1, p0}, Lw05;-><init>(Landroid/content/Context;)V

    new-instance p0, Ld12;

    invoke-direct {p0}, Ld12;-><init>()V

    iget-object p2, p1, Lw05;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lz05;->k:Ljava/util/regex/Pattern;

    new-instance p0, Lz05$b;

    invoke-direct {p0}, Lz05$b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz05$b;->c:Z

    new-instance v1, Ljz;

    invoke-direct {v1}, Lp54;-><init>()V

    new-instance v2, Lo00;

    invoke-direct {v2}, Lp54;-><init>()V

    new-instance v3, Lp00;

    invoke-direct {v3}, Lp54;-><init>()V

    new-instance v4, Lw80;

    invoke-direct {v4}, Lp54;-><init>()V

    new-instance v5, Ljm1;

    invoke-direct {v5}, Lp54;-><init>()V

    new-instance v6, Ld03;

    invoke-direct {v6}, Lp54;-><init>()V

    new-instance v7, Lvx3;

    invoke-direct {v7}, Lp54;-><init>()V

    new-instance v8, Ldn5;

    invoke-direct {v8}, Lp54;-><init>()V

    new-instance v9, Lgy5;

    invoke-direct {v9}, Lp54;-><init>()V

    const/16 v10, 0x9

    new-array v10, v10, [Lp54;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    aput-object v2, v10, v0

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v2, 0x3

    aput-object v4, v10, v2

    const/4 v2, 0x4

    aput-object v5, v10, v2

    const/4 v2, 0x5

    aput-object v6, v10, v2

    const/4 v2, 0x6

    aput-object v7, v10, v2

    const/4 v2, 0x7

    aput-object v8, v10, v2

    const/16 v2, 0x8

    aput-object v9, v10, v2

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lz05$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lis;

    invoke-direct {v2}, Lis;-><init>()V

    new-instance v3, Lf59;

    invoke-direct {v3}, Lf59;-><init>()V

    new-array v1, v1, [Lbx2;

    aput-object v2, v1, v11

    aput-object v3, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz05$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, La15;

    invoke-direct {v0, p0}, La15;-><init>(Lz05$b;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lw05;->a()Ly05;

    move-result-object p0

    return-object p0
.end method
