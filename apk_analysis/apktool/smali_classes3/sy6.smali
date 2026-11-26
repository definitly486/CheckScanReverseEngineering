.class public final Lsy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr14;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsy6$a;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Lsy6$a;

.field public final b:Lkz1;

.field public final c:Lnj;

.field public final d:Lfs1;

.field public volatile synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsy6;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lsy6$a;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsy6;->a:Lsy6$a;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    new-instance v1, Lzy6;

    sget-object v2, Ls22$a;->b:Ls22$a;

    invoke-direct {v1, v2}, Lb0;-><init>(Lo22$b;)V

    invoke-static {v0, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    iput-object v0, p0, Lsy6;->b:Lkz1;

    new-instance v0, Lgk;

    invoke-direct {v0, p0}, Lgk;-><init>(Lsy6;)V

    new-instance v1, Lnj;

    invoke-direct {v1, v0, p0}, Lnj;-><init>(Lgk;Lsy6;)V

    iput-object v1, p0, Lsy6;->c:Lnj;

    iget-object v2, p1, Lsy6$a;->f:Lfs1;

    new-instance v3, Lfs1$a;

    invoke-direct {v3, v2}, Lfs1$a;-><init>(Lfs1;)V

    iget-object p1, p1, Lsy6$a;->b:Lb24$b;

    iget-object v2, p1, Lb24$b;->n:Lb53;

    sget-object v4, Ls14;->a:Lb53$b;

    iget-object v2, v2, Lb53;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v4, v3, Lfs1$a;->d:Ljava/util/ArrayList;

    iget-object v5, v3, Lfs1$a;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    new-instance v2, Lxy6;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lxy6;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lyy6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lzk;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-class v6, Landroid/net/Uri;

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lfs1$a;->b(Lg05;Lzk1;)V

    new-instance v2, Lp47;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-class v6, Ljava/lang/Integer;

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lfs1$a;->b(Lg05;Lzk1;)V

    new-instance v2, Lpj;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-class v6, Lb99;

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    new-instance v8, Lb36;

    invoke-direct {v8, v2, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lfs1$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lfs$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance v7, Ljy1$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance v7, Lw47$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance v7, Lfs2$a;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const-class v8, Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    sget-object v7, Lt14;->a:Lb53$b;

    iget-object v7, p1, Lb24$b;->n:Lb53;

    sget-object v8, Lt14;->a:Lb53$b;

    iget-object v7, v7, Lb53;->a:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_2
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sget v8, Ljo7;->a:I

    new-instance v8, Lio7;

    invoke-direct {v8, v7}, Lgo7;-><init>(I)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    const/4 v10, 0x1

    sget-object v11, Lk23;->a:Lj23;

    if-lt v7, v9, :cond_5

    iget-object v7, p1, Lb24$b;->n:Lb53;

    sget-object v9, Lt14;->c:Lb53$b;

    iget-object v7, v7, Lb53;->a:Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_3
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p1, Lb24$b;->n:Lb53;

    sget-object v9, Lt14;->b:Lb53$b;

    iget-object v7, v7, Lb53;->a:Ljava/util/Map;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    move-object v7, v11

    :cond_4
    check-cast v7, Lk23;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Le78$a;

    invoke-direct {v7, v8}, Le78$a;-><init>(Lio7;)V

    new-instance v9, Lk51;

    invoke-direct {v9, v7, v10}, Lk51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v7, Laj0$b;

    iget-object p1, p1, Lb24$b;->n:Lb53;

    sget-object v9, Lt14;->b:Lb53$b;

    iget-object p1, p1, Lb53;->a:Ljava/util/Map;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move-object v11, p1

    :goto_0
    check-cast v11, Lk23;

    invoke-direct {v7, v8, v11}, Laj0$b;-><init>(Lio7;Lk23;)V

    new-instance p1, Lk51;

    invoke-direct {p1, v7, v10}, Lk51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lr93;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v7, Ljava/io/File;

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->b(Lg05;Lzk1;)V

    new-instance p1, Leb4$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Luw0$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v7, Ljava/nio/ByteBuffer;

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Ly98;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->b(Lg05;Lzk1;)V

    new-instance p1, Lo46;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v7, Lj46;

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->b(Lg05;Lzk1;)V

    new-instance p1, Laa3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    new-instance v8, Lb36;

    invoke-direct {v8, p1, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc99;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    new-instance v8, Lb36;

    invoke-direct {v8, p1, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lz93$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Lpw0$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v7, [B

    invoke-static {v7}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Le92$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Lcj0$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lfs1$a;->a(Lu83$a;Lzk1;)V

    new-instance p1, Llz2;

    invoke-direct {p1, p0, v0, v1}, Llz2;-><init>(Lsy6;Lgk;Lnj;)V

    iget-object v0, v3, Lfs1$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lfs1;

    invoke-static {v0}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object p1, v3, Lfs1$a;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {v2}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {v4}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-static {v5}, Lrn1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Lfs1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v6, p0, Lsy6;->d:Lfs1;

    return-void
.end method


# virtual methods
.method public final a(Lb24;Lf02;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lb24;->c:Lxk8;

    instance-of v0, v0, Lre9;

    if-nez v0, :cond_1

    iget-object v0, p1, Lb24;->o:Lw18;

    instance-of v0, v0, Loe9;

    if-nez v0, :cond_1

    sget-object v0, Lf24;->e:Lb53$b;

    invoke-static {p1, v0}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lsy6;->b(Lb24;ILf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Luy6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Luy6;-><init>(Lsy6;Lb24;Le02;)V

    invoke-static {v0, p2}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lb24;ILf02;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lvy6;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lvy6;

    iget v3, v1, Lvy6;->r:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_0

    sub-int/2addr v3, v4

    iput v3, v1, Lvy6;->r:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lvy6;

    invoke-direct {v1, v2, v0}, Lvy6;-><init>(Lsy6;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Lvy6;->p:Ljava/lang/Object;

    sget-object v10, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v9, Lvy6;->r:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_2

    if-ne v1, v11, :cond_1

    iget-object v1, v9, Lvy6;->n:La13;

    iget-object v3, v9, Lvy6;->m:Lb24;

    iget-object v4, v9, Lvy6;->l:Ll37;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v14

    :cond_2
    iget-object v1, v9, Lvy6;->o:Lx04;

    iget-object v3, v9, Lvy6;->n:La13;

    iget-object v4, v9, Lvy6;->m:Lb24;

    iget-object v5, v9, Lvy6;->l:Ll37;

    :try_start_1
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v3

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_14

    :cond_3
    iget-object v1, v9, Lvy6;->n:La13;

    iget-object v3, v9, Lvy6;->m:Lb24;

    iget-object v4, v9, Lvy6;->l:Ll37;

    :try_start_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_e

    :cond_4
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v9}, Le02;->getContext()Lo22;

    move-result-object v0

    invoke-static {v0}, Lqb4;->f(Lo22;)Lmb4;

    move-result-object v8

    if-nez p2, :cond_5

    move v0, v13

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v1, v2, Lsy6;->c:Lnj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v5, Lb24;->c:Lxk8;

    instance-of v4, v3, Lre9;

    if-eqz v4, :cond_7

    sget-object v0, Lf24;->e:Lb53$b;

    invoke-static {v5, v0}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-nez v0, :cond_6

    invoke-static {v5}, Lnj;->a(Lb24;)Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    :cond_6
    move-object v7, v0

    move-object v0, v3

    new-instance v3, Lte9;

    iget-object v4, v1, Lnj;->a:Lsy6;

    move-object v6, v0

    check-cast v6, Lre9;

    invoke-direct/range {v3 .. v8}, Lte9;-><init>(Lsy6;Lb24;Lre9;Landroidx/lifecycle/Lifecycle;Lmb4;)V

    move-object v4, v3

    goto :goto_5

    :cond_7
    sget-object v3, Lf24;->e:Lb53$b;

    invoke-static {v5, v3}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/Lifecycle;

    if-nez v3, :cond_9

    if-eqz v0, :cond_8

    invoke-static {v5}, Lnj;->a(Lb24;)Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v14

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    new-instance v0, Lvp4;

    invoke-direct {v0, v3, v8}, Lvp4;-><init>(Landroidx/lifecycle/Lifecycle;Lmb4;)V

    :goto_4
    move-object v4, v0

    goto :goto_5

    :cond_a
    new-instance v0, Lde0;

    invoke-direct {v0, v8}, Lde0;-><init>(Lmb4;)V

    goto :goto_4

    :goto_5
    invoke-interface {v4}, Ll37;->a()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lb24;->a(Lb24;)Lb24$a;

    move-result-object v0

    iget-object v3, v5, Lb24;->c:Lxk8;

    iget-object v1, v1, Lnj;->a:Lsy6;

    iget-object v1, v1, Lsy6;->a:Lsy6$a;

    iget-object v1, v1, Lsy6$a;->b:Lb24$b;

    iput-object v1, v0, Lb24$a;->b:Lb24$b;

    iget-object v1, v5, Lb24;->s:Lb24$c;

    iget-object v6, v1, Lb24$c;->d:Lw18;

    if-nez v6, :cond_e

    instance-of v7, v3, Lre9;

    if-eqz v7, :cond_d

    move-object v7, v3

    check-cast v7, Lre9;

    invoke-interface {v7}, Lre9;->getView()Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_c

    move-object v8, v7

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v15, :cond_b

    sget-object v15, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v15, :cond_c

    :cond_b
    sget-object v7, Lw18;->u1:Liz6;

    goto :goto_6

    :cond_c
    new-instance v8, Lkz6;

    invoke-direct {v8, v7}, Lkz6;-><init>(Landroid/view/View;)V

    move-object v7, v8

    goto :goto_6

    :cond_d
    sget-object v7, Lw18;->u1:Liz6;

    :goto_6
    iput-object v7, v0, Lb24$a;->i:Lw18;

    goto :goto_7

    :cond_e
    move-object v7, v6

    :goto_7
    iget-object v8, v1, Lb24$c;->e:Lmd7;

    if-nez v8, :cond_15

    instance-of v8, v3, Lre9;

    if-eqz v8, :cond_f

    move-object v8, v3

    check-cast v8, Lre9;

    goto :goto_8

    :cond_f
    move-object v8, v14

    :goto_8
    if-eqz v8, :cond_10

    invoke-interface {v8}, Lre9;->getView()Landroid/view/View;

    move-result-object v8

    goto :goto_9

    :cond_10
    move-object v8, v14

    :goto_9
    instance-of v15, v8, Landroid/widget/ImageView;

    if-eqz v15, :cond_11

    check-cast v8, Landroid/widget/ImageView;

    goto :goto_a

    :cond_11
    move-object v8, v14

    :goto_a
    if-eqz v8, :cond_14

    sget-object v5, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    if-nez v5, :cond_12

    const/4 v5, -0x1

    goto :goto_b

    :cond_12
    sget-object v8, Lsb9$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    :goto_b
    if-eq v5, v13, :cond_13

    if-eq v5, v12, :cond_13

    if-eq v5, v11, :cond_13

    const/4 v8, 0x4

    if-eq v5, v8, :cond_13

    sget-object v5, Lmd7;->FILL:Lmd7;

    goto :goto_c

    :cond_13
    sget-object v5, Lmd7;->FIT:Lmd7;

    goto :goto_c

    :cond_14
    iget-object v5, v5, Lb24;->p:Lmd7;

    :goto_c
    iput-object v5, v0, Lb24$a;->j:Lmd7;

    :cond_15
    iget-object v1, v1, Lb24$c;->f:Lre6;

    if-nez v1, :cond_18

    if-nez v6, :cond_16

    sget-object v1, Lw18;->u1:Liz6;

    invoke-static {v7, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lre6;->INEXACT:Lre6;

    goto :goto_d

    :cond_16
    instance-of v1, v3, Lre9;

    if-eqz v1, :cond_17

    instance-of v1, v7, Loe9;

    if-eqz v1, :cond_17

    check-cast v3, Lre9;

    invoke-interface {v3}, Lre9;->getView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_17

    invoke-interface {v3}, Lre9;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v7, Loe9;

    invoke-interface {v7}, Loe9;->getView()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_17

    sget-object v1, Lre6;->INEXACT:Lre6;

    goto :goto_d

    :cond_17
    sget-object v1, Lre6;->EXACT:Lre6;

    :goto_d
    iput-object v1, v0, Lb24$a;->k:Lre6;

    :cond_18
    invoke-virtual {v0}, Lb24$a;->a()Lb24;

    move-result-object v3

    sget-object v1, La13;->a:La13$a;

    :try_start_3
    iget-object v0, v3, Lb24;->b:Ljava/lang/Object;

    sget-object v5, Lzp5;->a:Lzp5;

    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {v4}, Ll37;->start()V

    if-nez p2, :cond_19

    iput-object v4, v9, Lvy6;->l:Ll37;

    iput-object v3, v9, Lvy6;->m:Lb24;

    iput-object v1, v9, Lvy6;->n:La13;

    iput v13, v9, Lvy6;->r:I

    invoke-interface {v4, v9}, Ll37;->b(Lvy6;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_19

    goto :goto_10

    :cond_19
    :goto_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lb24;->c:Lxk8;

    if-eqz v0, :cond_1b

    iget-object v5, v3, Lb24;->l:Lnl3;

    invoke-interface {v5, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx04;

    if-nez v5, :cond_1a

    iget-object v5, v3, Lb24;->t:Lb24$b;

    iget-object v5, v5, Lb24$b;->h:Lnl3;

    invoke-interface {v5, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx04;

    :cond_1a
    invoke-interface {v0, v5}, Lxk8;->a(Lx04;)V

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, Lb24;->o:Lw18;

    iput-object v4, v9, Lvy6;->l:Ll37;

    iput-object v3, v9, Lvy6;->m:Lb24;

    iput-object v1, v9, Lvy6;->n:La13;

    iput-object v14, v9, Lvy6;->o:Lx04;

    iput v12, v9, Lvy6;->r:I

    invoke-interface {v0, v9}, Lw18;->a(Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v10, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v7, v4

    move-object v5, v14

    move-object v4, v1

    move-object v1, v3

    :goto_f
    :try_start_4
    move-object v3, v0

    check-cast v3, Lt18;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lb24;->f:Lo22;

    new-instance v0, Lwy6;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lwy6;-><init>(Lb24;Lsy6;Lt18;La13;Lx04;Le02;)V

    iput-object v7, v9, Lvy6;->l:Ll37;

    iput-object v1, v9, Lvy6;->m:Lb24;

    iput-object v4, v9, Lvy6;->n:La13;

    iput-object v14, v9, Lvy6;->o:Lx04;

    iput v11, v9, Lvy6;->r:I

    invoke-static {v8, v0, v9}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v10, :cond_1d

    :goto_10
    return-object v10

    :cond_1d
    move-object v3, v1

    move-object v1, v4

    move-object v4, v7

    :goto_11
    :try_start_5
    check-cast v0, Lg24;

    instance-of v5, v0, Lzc8;

    if-eqz v5, :cond_1f

    move-object v5, v0

    check-cast v5, Lzc8;

    iget-object v6, v3, Lb24;->c:Lxk8;

    iget-object v7, v5, Lzc8;->b:Lb24;

    instance-of v8, v6, Lp29;

    if-nez v8, :cond_1e

    goto :goto_12

    :cond_1e
    sget-object v8, Lf24;->a:Lb53$b;

    invoke-static {v7, v8}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj29;

    check-cast v6, Lp29;

    invoke-interface {v7, v6, v5}, Lj29;->a(Lp29;Lg24;)Lio5;

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    :cond_1f
    instance-of v5, v0, Lu03;

    if-eqz v5, :cond_20

    move-object v5, v0

    check-cast v5, Lu03;

    iget-object v6, v3, Lb24;->c:Lxk8;

    invoke-virtual {v2, v5, v6, v1}, Lsy6;->d(Lu03;Lxk8;La13;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_13
    invoke-interface {v4}, Ll37;->complete()V

    return-object v0

    :cond_20
    :try_start_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v4

    move-object v4, v7

    goto :goto_14

    :cond_21
    new-instance v0, Lcoil3/request/NullRequestDataException;

    invoke-direct {v0}, Lcoil3/request/NullRequestDataException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_14
    :try_start_7
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_22

    invoke-static {v3, v0}, Lrb9;->a(Lb24;Ljava/lang/Throwable;)Lu03;

    move-result-object v0

    iget-object v3, v3, Lb24;->c:Lxk8;

    invoke-virtual {v2, v0, v3, v1}, Lsy6;->d(Lu03;Lxk8;La13;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-interface {v4}, Ll37;->complete()V

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_15

    :cond_22
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_15
    invoke-interface {v4}, Ll37;->complete()V

    throw v0
.end method

.method public final c()Lo95;
    .locals 0

    iget-object p0, p0, Lsy6;->a:Lsy6$a;

    iget-object p0, p0, Lsy6$a;->d:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo95;

    return-object p0
.end method

.method public final d(Lu03;Lxk8;La13;)V
    .locals 1

    iget-object p0, p1, Lu03;->b:Lb24;

    instance-of v0, p2, Lp29;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lf24;->a:Lb53$b;

    invoke-static {p0, v0}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj29;

    check-cast p2, Lp29;

    invoke-interface {v0, p2, p1}, Lj29;->a(Lp29;Lg24;)Lio5;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
