.class public final Lm37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm37$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Lfz3;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljv3;

.field public final g:Lj95;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:[Lh36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lh36<",
            "*>;"
        }
    .end annotation
.end field

.field public final l:Z


# direct methods
.method public constructor <init>(Lm37$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lm37$a;->b:Ljava/lang/Class;

    iput-object v0, p0, Lm37;->a:Ljava/lang/Class;

    iget-object v0, p1, Lm37$a;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lm37;->b:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lm37$a;->a:Ln67;

    iget-object v0, v0, Ln67;->c:Lfz3;

    iput-object v0, p0, Lm37;->c:Lfz3;

    iget-object v0, p1, Lm37$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lm37;->d:Ljava/lang/String;

    iget-object v0, p1, Lm37$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lm37;->e:Ljava/lang/String;

    iget-object v0, p1, Lm37$a;->t:Ljv3;

    iput-object v0, p0, Lm37;->f:Ljv3;

    iget-object v0, p1, Lm37$a;->u:Lj95;

    iput-object v0, p0, Lm37;->g:Lj95;

    iget-boolean v0, p1, Lm37$a;->p:Z

    iput-boolean v0, p0, Lm37;->h:Z

    iget-boolean v0, p1, Lm37$a;->q:Z

    iput-boolean v0, p0, Lm37;->i:Z

    iget-boolean v0, p1, Lm37$a;->r:Z

    iput-boolean v0, p0, Lm37;->j:Z

    iget-object v0, p1, Lm37$a;->w:[Lh36;

    iput-object v0, p0, Lm37;->k:[Lh36;

    iget-boolean p1, p1, Lm37$a;->x:Z

    iput-boolean p1, p0, Lm37;->l:Z

    return-void
.end method
