.class public final Lfs1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le94;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb36<",
            "Lg05<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb36<",
            "Ltf4<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lll3<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "+",
            "Lu83$a<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lll3<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ltd2$a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final f:Lfh8;

.field public final g:Lfh8;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 40
    sget-object v1, Lkx2;->b:Lkx2;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfs1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le94;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "+",
            "Lg05<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "+",
            "Ltf4<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Ljava/util/List<",
            "+",
            "Lll3<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "+",
            "Lu83$a<",
            "+",
            "Ljava/lang/Object;",
            ">;+",
            "Lne4<",
            "+",
            "Ljava/lang/Object;",
            ">;>;>;>;>;",
            "Ljava/util/List<",
            "+",
            "Lll3<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ltd2$a;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs1;->a:Ljava/util/List;

    iput-object p2, p0, Lfs1;->b:Ljava/util/List;

    iput-object p3, p0, Lfs1;->c:Ljava/util/List;

    iput-object p4, p0, Lfs1;->d:Ljava/util/List;

    iput-object p5, p0, Lfs1;->e:Ljava/util/List;

    new-instance p1, Lds1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lds1;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lfs1;->f:Lfh8;

    new-instance p1, Luj;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Luj;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lfs1;->g:Lfh8;

    return-void
.end method
