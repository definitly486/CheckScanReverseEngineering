.class public final Lyads/vz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final H:Lyads/vz2;

.field public static final I:Lyads/jv;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Lyads/h84;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Ljava/util/List;

.field public final p:Lyads/ql2;

.field public final q:J

.field public final r:I

.field public final s:I

.field public final t:F

.field public final u:I

.field public final v:F

.field public final w:[B

.field public final x:I

.field public final y:Lyads/x20;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    sput-object v1, Lyads/vz2;->H:Lyads/vz2;

    new-instance v0, Ljs2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/vz2;->I:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Lyads/uz2;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v0, p0, Lyads/vz2;->b:Ljava/lang/String;

    iget-object v0, p1, Lyads/uz2;->b:Ljava/lang/String;

    iput-object v0, p0, Lyads/vz2;->c:Ljava/lang/String;

    iget-object v0, p1, Lyads/uz2;->c:Ljava/lang/String;

    invoke-static {v0}, Lyads/u56;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyads/vz2;->d:Ljava/lang/String;

    iget v0, p1, Lyads/uz2;->d:I

    iput v0, p0, Lyads/vz2;->e:I

    iget v0, p1, Lyads/uz2;->e:I

    iput v0, p0, Lyads/vz2;->f:I

    iget v0, p1, Lyads/uz2;->f:I

    iput v0, p0, Lyads/vz2;->g:I

    iget v1, p1, Lyads/uz2;->g:I

    iput v1, p0, Lyads/vz2;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lyads/vz2;->i:I

    iget-object v0, p1, Lyads/uz2;->h:Ljava/lang/String;

    iput-object v0, p0, Lyads/vz2;->j:Ljava/lang/String;

    iget-object v0, p1, Lyads/uz2;->i:Lyads/h84;

    iput-object v0, p0, Lyads/vz2;->k:Lyads/h84;

    iget-object v0, p1, Lyads/uz2;->j:Ljava/lang/String;

    iput-object v0, p0, Lyads/vz2;->l:Ljava/lang/String;

    iget-object v0, p1, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v0, p0, Lyads/vz2;->m:Ljava/lang/String;

    iget v0, p1, Lyads/uz2;->l:I

    iput v0, p0, Lyads/vz2;->n:I

    iget-object v0, p1, Lyads/uz2;->m:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lyads/vz2;->o:Ljava/util/List;

    iget-object v0, p1, Lyads/uz2;->n:Lyads/ql2;

    iput-object v0, p0, Lyads/vz2;->p:Lyads/ql2;

    iget-wide v3, p1, Lyads/uz2;->o:J

    iput-wide v3, p0, Lyads/vz2;->q:J

    iget v1, p1, Lyads/uz2;->p:I

    iput v1, p0, Lyads/vz2;->r:I

    iget v1, p1, Lyads/uz2;->q:I

    iput v1, p0, Lyads/vz2;->s:I

    iget v1, p1, Lyads/uz2;->r:F

    iput v1, p0, Lyads/vz2;->t:F

    iget v1, p1, Lyads/uz2;->s:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    :cond_2
    iput v1, p0, Lyads/vz2;->u:I

    iget v1, p1, Lyads/uz2;->t:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    iput v1, p0, Lyads/vz2;->v:F

    iget-object v1, p1, Lyads/uz2;->u:[B

    iput-object v1, p0, Lyads/vz2;->w:[B

    iget v1, p1, Lyads/uz2;->v:I

    iput v1, p0, Lyads/vz2;->x:I

    iget-object v1, p1, Lyads/uz2;->w:Lyads/x20;

    iput-object v1, p0, Lyads/vz2;->y:Lyads/x20;

    iget v1, p1, Lyads/uz2;->x:I

    iput v1, p0, Lyads/vz2;->z:I

    iget v1, p1, Lyads/uz2;->y:I

    iput v1, p0, Lyads/vz2;->A:I

    iget v1, p1, Lyads/uz2;->z:I

    iput v1, p0, Lyads/vz2;->B:I

    iget v1, p1, Lyads/uz2;->A:I

    if-ne v1, v2, :cond_4

    move v1, v3

    :cond_4
    iput v1, p0, Lyads/vz2;->C:I

    iget v1, p1, Lyads/uz2;->B:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    iput v3, p0, Lyads/vz2;->D:I

    iget v1, p1, Lyads/uz2;->C:I

    iput v1, p0, Lyads/vz2;->E:I

    iget p1, p1, Lyads/uz2;->D:I

    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    iput p1, p0, Lyads/vz2;->F:I

    return-void

    :cond_6
    iput p1, p0, Lyads/vz2;->F:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/vz2;
    .locals 6

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    if-eqz p0, :cond_0

    const-class v1, Lyads/lv;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget v2, Lyads/u56;->a:I

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyads/vz2;->H:Lyads/vz2;

    iget-object v5, v4, Lyads/vz2;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    iput-object v3, v0, Lyads/uz2;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lyads/vz2;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    iput-object v3, v0, Lyads/uz2;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lyads/vz2;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    iput-object v3, v0, Lyads/uz2;->c:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget v5, v4, Lyads/vz2;->e:I

    invoke-virtual {p0, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lyads/uz2;->d:I

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget v5, v4, Lyads/vz2;->f:I

    invoke-virtual {p0, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lyads/uz2;->e:I

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget v5, v4, Lyads/vz2;->g:I

    invoke-virtual {p0, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lyads/uz2;->f:I

    const/4 v3, 0x6

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget v5, v4, Lyads/vz2;->h:I

    invoke-virtual {p0, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lyads/uz2;->g:I

    const/4 v3, 0x7

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lyads/vz2;->j:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v5

    :goto_3
    iput-object v3, v0, Lyads/uz2;->h:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lyads/h84;

    iget-object v5, v4, Lyads/vz2;->k:Lyads/h84;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v5

    :goto_4
    iput-object v3, v0, Lyads/uz2;->i:Lyads/h84;

    const/16 v3, 0x9

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lyads/vz2;->l:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v5

    :goto_5
    iput-object v3, v0, Lyads/uz2;->j:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    move-object v3, v5

    :goto_6
    iput-object v3, v0, Lyads/uz2;->k:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Lyads/vz2;->n:I

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lyads/uz2;->l:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xc

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_9

    iput-object v3, v0, Lyads/uz2;->m:Ljava/util/List;

    const/16 v1, 0xd

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lyads/ql2;

    iput-object v1, v0, Lyads/uz2;->n:Lyads/ql2;

    const/16 v1, 0xe

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lyads/vz2;->H:Lyads/vz2;

    iget-wide v4, v3, Lyads/vz2;->q:J

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lyads/uz2;->o:J

    const/16 v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->r:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->p:I

    const/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->s:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->q:I

    const/16 v1, 0x11

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->t:F

    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lyads/uz2;->r:F

    const/16 v1, 0x12

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->u:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->s:I

    const/16 v1, 0x13

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->v:F

    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lyads/uz2;->t:F

    const/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lyads/uz2;->u:[B

    const/16 v1, 0x15

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->x:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->v:I

    const/16 v1, 0x16

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v4, Lyads/x20;->g:Lyads/jv;

    invoke-interface {v4, v1}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v1

    check-cast v1, Lyads/x20;

    iput-object v1, v0, Lyads/uz2;->w:Lyads/x20;

    :cond_8
    const/16 v1, 0x17

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->z:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->x:I

    const/16 v1, 0x18

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->A:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->y:I

    const/16 v1, 0x19

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->B:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->z:I

    const/16 v1, 0x1a

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->C:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->A:I

    const/16 v1, 0x1b

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->D:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->B:I

    const/16 v1, 0x1c

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v4, v3, Lyads/vz2;->E:I

    invoke-virtual {p0, v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lyads/uz2;->C:I

    const/16 v1, 0x1d

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iget v2, v3, Lyads/vz2;->F:I

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lyads/uz2;->D:I

    new-instance p0, Lyads/vz2;

    invoke-direct {p0, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    return-object p0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 516
    iget v0, p0, Lyads/vz2;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lyads/vz2;->s:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final a(Lyads/vz2;)Z
    .locals 4

    .line 513
    iget-object v0, p0, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 514
    :goto_0
    iget-object v1, p0, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 515
    iget-object v1, p0, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/vz2;

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lyads/vz2;

    iget v2, p0, Lyads/vz2;->G:I

    if-eqz v2, :cond_2

    iget v3, p1, Lyads/vz2;->G:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lyads/vz2;->e:I

    iget v3, p1, Lyads/vz2;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->f:I

    iget v3, p1, Lyads/vz2;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->g:I

    iget v3, p1, Lyads/vz2;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->h:I

    iget v3, p1, Lyads/vz2;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->n:I

    iget v3, p1, Lyads/vz2;->n:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lyads/vz2;->q:J

    iget-wide v4, p1, Lyads/vz2;->q:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lyads/vz2;->r:I

    iget v3, p1, Lyads/vz2;->r:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->s:I

    iget v3, p1, Lyads/vz2;->s:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->u:I

    iget v3, p1, Lyads/vz2;->u:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->x:I

    iget v3, p1, Lyads/vz2;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->z:I

    iget v3, p1, Lyads/vz2;->z:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->A:I

    iget v3, p1, Lyads/vz2;->A:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->B:I

    iget v3, p1, Lyads/vz2;->B:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->C:I

    iget v3, p1, Lyads/vz2;->C:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->D:I

    iget v3, p1, Lyads/vz2;->D:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->E:I

    iget v3, p1, Lyads/vz2;->E:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->F:I

    iget v3, p1, Lyads/vz2;->F:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lyads/vz2;->t:F

    iget v3, p1, Lyads/vz2;->t:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lyads/vz2;->v:F

    iget v3, p1, Lyads/vz2;->v:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->j:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->l:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->m:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/vz2;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->w:[B

    iget-object v3, p1, Lyads/vz2;->w:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->k:Lyads/h84;

    iget-object v3, p1, Lyads/vz2;->k:Lyads/h84;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->y:Lyads/x20;

    iget-object v3, p1, Lyads/vz2;->y:Lyads/x20;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lyads/vz2;->p:Lyads/ql2;

    iget-object v3, p1, Lyads/vz2;->p:Lyads/ql2;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lyads/vz2;->a(Lyads/vz2;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/vz2;->G:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lyads/vz2;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lyads/vz2;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lyads/vz2;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lyads/vz2;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lyads/vz2;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->k:Lyads/h84;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    iget-object v2, v2, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->l:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/vz2;->m:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/vz2;->q:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->t:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lyads/vz2;->u:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lyads/vz2;->v:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->D:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->E:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/vz2;->F:I

    add-int/2addr v0, v1

    iput v0, p0, Lyads/vz2;->G:I

    :cond_7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyads/vz2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyads/vz2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyads/vz2;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyads/vz2;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyads/vz2;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyads/vz2;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyads/vz2;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyads/vz2;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyads/vz2;->t:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyads/vz2;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lyads/vz2;->A:I

    const-string v1, "])"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
