.class public final Lyads/t04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final H:Lyads/t04;

.field public static final I:Lyads/jv;


# instance fields
.field public final A:Ljava/lang/CharSequence;

.field public final B:Ljava/lang/Integer;

.field public final C:Ljava/lang/Integer;

.field public final D:Ljava/lang/CharSequence;

.field public final E:Ljava/lang/CharSequence;

.field public final F:Ljava/lang/CharSequence;

.field public final G:Landroid/os/Bundle;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Lyads/z35;

.field public final j:Lyads/z35;

.field public final k:[B

.field public final l:Ljava/lang/Integer;

.field public final m:Landroid/net/Uri;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Boolean;

.field public final r:Ljava/lang/Integer;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/CharSequence;

.field public final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/s04;

    invoke-direct {v0}, Lyads/s04;-><init>()V

    new-instance v1, Lyads/t04;

    invoke-direct {v1, v0}, Lyads/t04;-><init>(Lyads/s04;)V

    sput-object v1, Lyads/t04;->H:Lyads/t04;

    new-instance v0, Lqg;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    sput-object v0, Lyads/t04;->I:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Lyads/s04;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/s04;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->b:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->c:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->d:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->d:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->e:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->e:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->f:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->f:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->g:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->g:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->h:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->h:Lyads/z35;

    iput-object v0, p0, Lyads/t04;->i:Lyads/z35;

    iget-object v0, p1, Lyads/s04;->i:Lyads/z35;

    iput-object v0, p0, Lyads/t04;->j:Lyads/z35;

    iget-object v0, p1, Lyads/s04;->j:[B

    iput-object v0, p0, Lyads/t04;->k:[B

    iget-object v0, p1, Lyads/s04;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->l:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->l:Landroid/net/Uri;

    iput-object v0, p0, Lyads/t04;->m:Landroid/net/Uri;

    iget-object v0, p1, Lyads/s04;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->n:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->o:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->p:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->p:Ljava/lang/Boolean;

    iput-object v0, p0, Lyads/t04;->q:Ljava/lang/Boolean;

    iget-object v0, p1, Lyads/s04;->q:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->s:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->r:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->t:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->s:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->u:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->t:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->v:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->w:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->v:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->x:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->w:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->y:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->x:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->z:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->y:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->A:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->z:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->B:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->A:Ljava/lang/Integer;

    iput-object v0, p0, Lyads/t04;->C:Ljava/lang/Integer;

    iget-object v0, p1, Lyads/s04;->B:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->D:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->C:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->E:Ljava/lang/CharSequence;

    iget-object v0, p1, Lyads/s04;->D:Ljava/lang/CharSequence;

    iput-object v0, p0, Lyads/t04;->F:Ljava/lang/CharSequence;

    iget-object p1, p1, Lyads/s04;->E:Landroid/os/Bundle;

    iput-object p1, p0, Lyads/t04;->G:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/t04;
    .locals 6

    new-instance v0, Lyads/s04;

    invoke-direct {v0}, Lyads/s04;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->d:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->e:Ljava/lang/CharSequence;

    const/4 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->f:Ljava/lang/CharSequence;

    const/4 v1, 0x6

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->g:Ljava/lang/CharSequence;

    const/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v3, 0x1d

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [B

    :goto_1
    iput-object v5, v0, Lyads/s04;->j:[B

    iput-object v3, v0, Lyads/s04;->k:Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lyads/s04;->l:Landroid/net/Uri;

    const/16 v1, 0x16

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->w:Ljava/lang/CharSequence;

    const/16 v1, 0x17

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->x:Ljava/lang/CharSequence;

    const/16 v1, 0x18

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->y:Ljava/lang/CharSequence;

    const/16 v1, 0x1b

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->B:Ljava/lang/CharSequence;

    const/16 v1, 0x1c

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->C:Ljava/lang/CharSequence;

    const/16 v1, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->D:Ljava/lang/CharSequence;

    const/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->E:Landroid/os/Bundle;

    const/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lyads/z35;->b:Lyads/jv;

    invoke-interface {v3, v1}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v1

    check-cast v1, Lyads/z35;

    iput-object v1, v0, Lyads/s04;->h:Lyads/z35;

    :cond_2
    const/16 v1, 0x9

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v3, Lyads/z35;->b:Lyads/jv;

    invoke-interface {v3, v1}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v1

    check-cast v1, Lyads/z35;

    iput-object v1, v0, Lyads/s04;->i:Lyads/z35;

    :cond_3
    const/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->m:Ljava/lang/Integer;

    :cond_4
    const/16 v1, 0xd

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->n:Ljava/lang/Integer;

    :cond_5
    const/16 v1, 0xe

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->o:Ljava/lang/Integer;

    :cond_6
    const/16 v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->p:Ljava/lang/Boolean;

    :cond_7
    const/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->q:Ljava/lang/Integer;

    :cond_8
    const/16 v1, 0x11

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->r:Ljava/lang/Integer;

    :cond_9
    const/16 v1, 0x12

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->s:Ljava/lang/Integer;

    :cond_a
    const/16 v1, 0x13

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->t:Ljava/lang/Integer;

    :cond_b
    const/16 v1, 0x14

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->u:Ljava/lang/Integer;

    :cond_c
    const/16 v1, 0x15

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->v:Ljava/lang/Integer;

    :cond_d
    const/16 v1, 0x19

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyads/s04;->z:Ljava/lang/Integer;

    :cond_e
    const/16 v1, 0x1a

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lyads/s04;->A:Ljava/lang/Integer;

    :cond_f
    new-instance p0, Lyads/t04;

    invoke-direct {p0, v0}, Lyads/t04;-><init>(Lyads/s04;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/t04;

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lyads/t04;

    iget-object v2, p0, Lyads/t04;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->d:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->e:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->f:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->g:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->h:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->h:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->i:Lyads/z35;

    iget-object v3, p1, Lyads/t04;->i:Lyads/z35;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->j:Lyads/z35;

    iget-object v3, p1, Lyads/t04;->j:Lyads/z35;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->k:[B

    iget-object v3, p1, Lyads/t04;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->l:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->m:Landroid/net/Uri;

    iget-object v3, p1, Lyads/t04;->m:Landroid/net/Uri;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->n:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->o:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->p:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->p:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->q:Ljava/lang/Boolean;

    iget-object v3, p1, Lyads/t04;->q:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->s:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->s:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->t:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->t:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->u:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->v:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->v:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->w:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->x:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->x:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->y:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->y:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->z:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->z:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->A:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->A:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->B:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->B:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->C:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/t04;->C:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->D:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->D:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/t04;->E:Ljava/lang/CharSequence;

    iget-object v3, p1, Lyads/t04;->E:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lyads/t04;->F:Ljava/lang/CharSequence;

    iget-object p1, p1, Lyads/t04;->F:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/t04;->b:Ljava/lang/CharSequence;

    iget-object v2, v0, Lyads/t04;->c:Ljava/lang/CharSequence;

    iget-object v3, v0, Lyads/t04;->d:Ljava/lang/CharSequence;

    iget-object v4, v0, Lyads/t04;->e:Ljava/lang/CharSequence;

    iget-object v5, v0, Lyads/t04;->f:Ljava/lang/CharSequence;

    iget-object v6, v0, Lyads/t04;->g:Ljava/lang/CharSequence;

    iget-object v7, v0, Lyads/t04;->h:Ljava/lang/CharSequence;

    iget-object v8, v0, Lyads/t04;->i:Lyads/z35;

    iget-object v9, v0, Lyads/t04;->j:Lyads/z35;

    iget-object v10, v0, Lyads/t04;->k:[B

    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lyads/t04;->l:Ljava/lang/Integer;

    iget-object v12, v0, Lyads/t04;->m:Landroid/net/Uri;

    iget-object v13, v0, Lyads/t04;->n:Ljava/lang/Integer;

    iget-object v14, v0, Lyads/t04;->o:Ljava/lang/Integer;

    iget-object v15, v0, Lyads/t04;->p:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lyads/t04;->q:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lyads/t04;->s:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lyads/t04;->t:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lyads/t04;->u:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lyads/t04;->v:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lyads/t04;->w:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lyads/t04;->x:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lyads/t04;->y:Ljava/lang/CharSequence;

    move-object/from16 v24, v1

    iget-object v1, v0, Lyads/t04;->z:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-object v1, v0, Lyads/t04;->A:Ljava/lang/CharSequence;

    move-object/from16 v26, v1

    iget-object v1, v0, Lyads/t04;->B:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Lyads/t04;->C:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lyads/t04;->D:Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v1, v0, Lyads/t04;->E:Ljava/lang/CharSequence;

    iget-object v0, v0, Lyads/t04;->F:Ljava/lang/CharSequence;

    move-object/from16 v30, v29

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v0

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
