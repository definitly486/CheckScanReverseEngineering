.class public final Lb24$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final o:Lb24$b;


# instance fields
.field public final a:Lw93;

.field public final b:Lo22;

.field public final c:Lo22;

.field public final d:Lo22;

.field public final e:Lsx0;

.field public final f:Lsx0;

.field public final g:Lsx0;

.field public final h:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lb24;",
            "Lx04;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lb24;",
            "Lx04;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lb24;",
            "Lx04;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lw18;

.field public final l:Lmd7;

.field public final m:Lre6;

.field public final n:Lb53;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lb24$b;

    sget-object v1, Lw93;->b:Lke4;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    sget-object v5, Lsx0;->ENABLED:Lsx0;

    sget-object v11, Lw18;->u1:Liz6;

    sget-object v12, Lmd7;->FIT:Lmd7;

    sget-object v13, Lre6;->EXACT:Lre6;

    sget-object v14, Lb53;->b:Lb53;

    sget-object v2, Lgx2;->b:Lgx2;

    sget-object v8, Lrb9$a;->b:Lrb9$a;

    move-object v4, v3

    move-object v6, v5

    move-object v7, v5

    move-object v9, v8

    move-object v10, v8

    invoke-direct/range {v0 .. v14}, Lb24$b;-><init>(Lw93;Lo22;Lo22;Lo22;Lsx0;Lsx0;Lsx0;Lnl3;Lnl3;Lnl3;Lw18;Lmd7;Lre6;Lb53;)V

    sput-object v0, Lb24$b;->o:Lb24$b;

    return-void
.end method

.method public constructor <init>(Lw93;Lo22;Lo22;Lo22;Lsx0;Lsx0;Lsx0;Lnl3;Lnl3;Lnl3;Lw18;Lmd7;Lre6;Lb53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw93;",
            "Lo22;",
            "Lo22;",
            "Lo22;",
            "Lsx0;",
            "Lsx0;",
            "Lsx0;",
            "Lnl3<",
            "-",
            "Lb24;",
            "+",
            "Lx04;",
            ">;",
            "Lnl3<",
            "-",
            "Lb24;",
            "+",
            "Lx04;",
            ">;",
            "Lnl3<",
            "-",
            "Lb24;",
            "+",
            "Lx04;",
            ">;",
            "Lw18;",
            "Lmd7;",
            "Lre6;",
            "Lb53;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb24$b;->a:Lw93;

    iput-object p2, p0, Lb24$b;->b:Lo22;

    iput-object p3, p0, Lb24$b;->c:Lo22;

    iput-object p4, p0, Lb24$b;->d:Lo22;

    iput-object p5, p0, Lb24$b;->e:Lsx0;

    iput-object p6, p0, Lb24$b;->f:Lsx0;

    iput-object p7, p0, Lb24$b;->g:Lsx0;

    iput-object p8, p0, Lb24$b;->h:Lnl3;

    iput-object p9, p0, Lb24$b;->i:Lnl3;

    iput-object p10, p0, Lb24$b;->j:Lnl3;

    iput-object p11, p0, Lb24$b;->k:Lw18;

    iput-object p12, p0, Lb24$b;->l:Lmd7;

    iput-object p13, p0, Lb24$b;->m:Lre6;

    iput-object p14, p0, Lb24$b;->n:Lb53;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb24$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb24$b;

    iget-object v1, p0, Lb24$b;->a:Lw93;

    iget-object v3, p1, Lb24$b;->a:Lw93;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lb24$b;->b:Lo22;

    iget-object v3, p1, Lb24$b;->b:Lo22;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lb24$b;->c:Lo22;

    iget-object v3, p1, Lb24$b;->c:Lo22;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lb24$b;->d:Lo22;

    iget-object v3, p1, Lb24$b;->d:Lo22;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lb24$b;->e:Lsx0;

    iget-object v3, p1, Lb24$b;->e:Lsx0;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lb24$b;->f:Lsx0;

    iget-object v3, p1, Lb24$b;->f:Lsx0;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lb24$b;->g:Lsx0;

    iget-object v3, p1, Lb24$b;->g:Lsx0;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lb24$b;->h:Lnl3;

    iget-object v3, p1, Lb24$b;->h:Lnl3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lb24$b;->i:Lnl3;

    iget-object v3, p1, Lb24$b;->i:Lnl3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lb24$b;->j:Lnl3;

    iget-object v3, p1, Lb24$b;->j:Lnl3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lb24$b;->k:Lw18;

    iget-object v3, p1, Lb24$b;->k:Lw18;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lb24$b;->l:Lmd7;

    iget-object v3, p1, Lb24$b;->l:Lmd7;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lb24$b;->m:Lre6;

    iget-object v3, p1, Lb24$b;->m:Lre6;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lb24$b;->n:Lb53;

    iget-object p1, p1, Lb24$b;->n:Lb53;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lb24$b;->a:Lw93;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->b:Lo22;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->c:Lo22;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->d:Lo22;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->e:Lsx0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->f:Lsx0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->g:Lsx0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->h:Lnl3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->i:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->j:Lnl3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->k:Lw18;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb24$b;->l:Lmd7;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb24$b;->m:Lre6;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lb24$b;->n:Lb53;

    iget-object p0, p0, Lb53;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Defaults(fileSystem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb24$b;->a:Lw93;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interceptorCoroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->b:Lo22;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fetcherCoroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->c:Lo22;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoderCoroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->d:Lo22;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", memoryCachePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->e:Lsx0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diskCachePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->f:Lsx0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkCachePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->g:Lsx0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->h:Lnl3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->i:Lnl3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->j:Lnl3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->k:Lw18;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->l:Lmd7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb24$b;->m:Lre6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb24$b;->n:Lb53;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
