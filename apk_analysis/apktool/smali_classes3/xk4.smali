.class public final Lxk4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxk4$a;,
        Lxk4$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldy1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lnw4;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lxk4$a;

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li15;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lql;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:Lll;

.field public final r:Lml;

.field public final s:Ldl;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvf4<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:Lxk4$b;

.field public final v:Z

.field public final w:Lik0;

.field public final x:Lft2;

.field public final y:Lbh4;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnw4;Ljava/lang/String;JLxk4$a;JLjava/lang/String;Ljava/util/List;Lql;IIIFFFFLll;Lml;Ljava/util/List;Lxk4$b;Ldl;ZLik0;Lft2;Lbh4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldy1;",
            ">;",
            "Lnw4;",
            "Ljava/lang/String;",
            "J",
            "Lxk4$a;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Li15;",
            ">;",
            "Lql;",
            "IIIFFFF",
            "Lll;",
            "Lml;",
            "Ljava/util/List<",
            "Lvf4<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lxk4$b;",
            "Ldl;",
            "Z",
            "Lik0;",
            "Lft2;",
            "Lbh4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxk4;->a:Ljava/util/List;

    iput-object p2, p0, Lxk4;->b:Lnw4;

    iput-object p3, p0, Lxk4;->c:Ljava/lang/String;

    iput-wide p4, p0, Lxk4;->d:J

    iput-object p6, p0, Lxk4;->e:Lxk4$a;

    iput-wide p7, p0, Lxk4;->f:J

    iput-object p9, p0, Lxk4;->g:Ljava/lang/String;

    iput-object p10, p0, Lxk4;->h:Ljava/util/List;

    iput-object p11, p0, Lxk4;->i:Lql;

    iput p12, p0, Lxk4;->j:I

    iput p13, p0, Lxk4;->k:I

    iput p14, p0, Lxk4;->l:I

    iput p15, p0, Lxk4;->m:F

    move/from16 p1, p16

    iput p1, p0, Lxk4;->n:F

    move/from16 p1, p17

    iput p1, p0, Lxk4;->o:F

    move/from16 p1, p18

    iput p1, p0, Lxk4;->p:F

    move-object/from16 p1, p19

    iput-object p1, p0, Lxk4;->q:Lll;

    move-object/from16 p1, p20

    iput-object p1, p0, Lxk4;->r:Lml;

    move-object/from16 p1, p21

    iput-object p1, p0, Lxk4;->t:Ljava/util/List;

    move-object/from16 p1, p22

    iput-object p1, p0, Lxk4;->u:Lxk4$b;

    move-object/from16 p1, p23

    iput-object p1, p0, Lxk4;->s:Ldl;

    move/from16 p1, p24

    iput-boolean p1, p0, Lxk4;->v:Z

    move-object/from16 p1, p25

    iput-object p1, p0, Lxk4;->w:Lik0;

    move-object/from16 p1, p26

    iput-object p1, p0, Lxk4;->x:Lft2;

    move-object/from16 p1, p27

    iput-object p1, p0, Lxk4;->y:Lbh4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxk4;->f:J

    iget-object v4, p0, Lxk4;->b:Lnw4;

    iget-object v5, v4, Lnw4;->i:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxk4;

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lxk4;->f:J

    iget-object v5, v4, Lnw4;->i:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxk4;

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lxk4;->f:J

    iget-object v5, v4, Lnw4;->i:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxk4;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lxk4;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tMasks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lxk4;->j:I

    if-eqz v2, :cond_3

    iget v3, p0, Lxk4;->k:I

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tBackground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lxk4;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%dx%d %X\n"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p0, p0, Lxk4;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lxk4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
