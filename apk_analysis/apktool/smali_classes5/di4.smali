.class public final Ldi4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldi4$a;,
        Ldi4$b;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Ldi4$b;


# instance fields
.field private final a:Ljv4;
    .annotation runtime Lbq7;
        value = "previewBlock"
    .end annotation
.end field

.field private final b:Ljv4;
    .annotation runtime Lbq7;
        value = "headerBlock"
    .end annotation
.end field

.field private final c:Lji0;
    .annotation runtime Lbq7;
        value = "benefitsBlock"
    .end annotation
.end field

.field private final d:Lx88;
    .annotation runtime Lbq7;
        value = "stepsBlock"
    .end annotation
.end field

.field private final e:Lpf9;
    .annotation runtime Lbq7;
        value = "warningBlock"
    .end annotation
.end field

.field private final f:Lsn0;
    .annotation runtime Lbq7;
        value = "bonusesBlock"
    .end annotation
.end field

.field private final g:Liv0;
    .annotation runtime Lbq7;
        value = "buttonBlock"
    .end annotation
.end field

.field private final h:Lso4;
    .annotation runtime Lbq7;
        value = "legalBlock"
    .end annotation
.end field

.field private final i:Lt6;
    .annotation runtime Lbq7;
        value = "activationBlock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldi4$b;

    invoke-direct {v0}, Ldi4$b;-><init>()V

    sput-object v0, Ldi4;->Companion:Ldi4$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjv4;Ljv4;Lji0;Lx88;Lpf9;Lsn0;Liv0;Lso4;Lt6;Lwp7;)V
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    and-int/lit16 p11, p1, 0x1ff

    const/16 v0, 0x1ff

    if-ne v0, p11, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldi4;->a:Ljv4;

    iput-object p3, p0, Ldi4;->b:Ljv4;

    iput-object p4, p0, Ldi4;->c:Lji0;

    iput-object p5, p0, Ldi4;->d:Lx88;

    iput-object p6, p0, Ldi4;->e:Lpf9;

    iput-object p7, p0, Ldi4;->f:Lsn0;

    iput-object p8, p0, Ldi4;->g:Liv0;

    iput-object p9, p0, Ldi4;->h:Lso4;

    iput-object p10, p0, Ldi4;->i:Lt6;

    return-void

    :cond_0
    sget-object p0, Ldi4$a;->a:Ldi4$a;

    invoke-virtual {p0}, Ldi4$a;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljv4;Ljv4;Lji0;Lx88;Lpf9;Lsn0;Liv0;Lso4;Lt6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Ldi4;->a:Ljv4;

    .line 41
    iput-object p2, p0, Ldi4;->b:Ljv4;

    .line 42
    iput-object p3, p0, Ldi4;->c:Lji0;

    .line 43
    iput-object p4, p0, Ldi4;->d:Lx88;

    .line 44
    iput-object p5, p0, Ldi4;->e:Lpf9;

    .line 45
    iput-object p6, p0, Ldi4;->f:Lsn0;

    .line 46
    iput-object p7, p0, Ldi4;->g:Liv0;

    .line 47
    iput-object p8, p0, Ldi4;->h:Lso4;

    .line 48
    iput-object p9, p0, Ldi4;->i:Lt6;

    return-void
.end method

.method public static final synthetic h(Ldi4;Lgu1;Ls96;)V
    .locals 3

    sget-object v0, Ljv4$a;->a:Ljv4$a;

    iget-object v1, p0, Ldi4;->a:Ljv4;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Ldi4;->b:Ljv4;

    invoke-interface {p1, p2, v1, v0, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lji0$a;->a:Lji0$a;

    iget-object v1, p0, Ldi4;->c:Lji0;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lx88$a;->a:Lx88$a;

    iget-object v1, p0, Ldi4;->d:Lx88;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lpf9$a;->a:Lpf9$a;

    iget-object v1, p0, Ldi4;->e:Lpf9;

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lsn0$a;->a:Lsn0$a;

    iget-object v1, p0, Ldi4;->f:Lsn0;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Liv0$a;->a:Liv0$a;

    iget-object v1, p0, Ldi4;->g:Liv0;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lso4$a;->a:Lso4$a;

    iget-object v1, p0, Ldi4;->h:Lso4;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lt6$a;->a:Lt6$a;

    iget-object p0, p0, Ldi4;->i:Lt6;

    const/16 v1, 0x8

    invoke-interface {p1, p2, v1, v0, p0}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lji0;
    .locals 0

    iget-object p0, p0, Ldi4;->c:Lji0;

    return-object p0
.end method

.method public final b()Lsn0;
    .locals 0

    iget-object p0, p0, Ldi4;->f:Lsn0;

    return-object p0
.end method

.method public final c()Liv0;
    .locals 0

    iget-object p0, p0, Ldi4;->g:Liv0;

    return-object p0
.end method

.method public final d()Ljv4;
    .locals 0

    iget-object p0, p0, Ldi4;->b:Ljv4;

    return-object p0
.end method

.method public final e()Lso4;
    .locals 0

    iget-object p0, p0, Ldi4;->h:Lso4;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldi4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldi4;

    iget-object v1, p0, Ldi4;->a:Ljv4;

    iget-object v3, p1, Ldi4;->a:Ljv4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ldi4;->b:Ljv4;

    iget-object v3, p1, Ldi4;->b:Ljv4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ldi4;->c:Lji0;

    iget-object v3, p1, Ldi4;->c:Lji0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ldi4;->d:Lx88;

    iget-object v3, p1, Ldi4;->d:Lx88;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ldi4;->e:Lpf9;

    iget-object v3, p1, Ldi4;->e:Lpf9;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ldi4;->f:Lsn0;

    iget-object v3, p1, Ldi4;->f:Lsn0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ldi4;->g:Liv0;

    iget-object v3, p1, Ldi4;->g:Liv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ldi4;->h:Lso4;

    iget-object v3, p1, Ldi4;->h:Lso4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Ldi4;->i:Lt6;

    iget-object p1, p1, Ldi4;->i:Lt6;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Lx88;
    .locals 0

    iget-object p0, p0, Ldi4;->d:Lx88;

    return-object p0
.end method

.method public final g()Lpf9;
    .locals 0

    iget-object p0, p0, Ldi4;->e:Lpf9;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ldi4;->a:Ljv4;

    invoke-virtual {v0}, Ljv4;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->b:Ljv4;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljv4;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->c:Lji0;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lji0;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->d:Lx88;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lx88;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->e:Lpf9;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lpf9;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->f:Lsn0;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lsn0;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->g:Liv0;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Liv0;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldi4;->h:Lso4;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lso4;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ldi4;->i:Lt6;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lt6;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Ldi4;->a:Ljv4;

    iget-object v1, p0, Ldi4;->b:Ljv4;

    iget-object v2, p0, Ldi4;->c:Lji0;

    iget-object v3, p0, Ldi4;->d:Lx88;

    iget-object v4, p0, Ldi4;->e:Lpf9;

    iget-object v5, p0, Ldi4;->f:Lsn0;

    iget-object v6, p0, Ldi4;->g:Liv0;

    iget-object v7, p0, Ldi4;->h:Lso4;

    iget-object p0, p0, Ldi4;->i:Lt6;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LandingCardResponse(previewBlock="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", headerBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", benefitsBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepsBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", warningBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bonusBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", legalBlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", activationBlockResponse="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
