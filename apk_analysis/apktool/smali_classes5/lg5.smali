.class public final Llg5;
.super Lg37;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg5$a;,
        Llg5$b;,
        Llg5$c;
    }
.end annotation


# static fields
.field public static final e:Lj95;

.field public static final f:Lj95;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lgx0;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llg5$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lj95;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0

    sput-object v0, Llg5;->e:Lj95;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0

    sput-object v0, Llg5;->f:Lj95;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Llg5;->g:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Llg5;->h:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Llg5;->i:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lgx0;Lj95;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx0;",
            "Lj95;",
            "Ljava/util/List<",
            "Llg5$c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lg37;-><init>()V

    iput-object p1, p0, Llg5;->a:Lgx0;

    iput-object p3, p0, Llg5;->b:Ljava/util/List;

    sget-object p3, Lj95;->e:Ljava/util/regex/Pattern;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgx0;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object p1

    iput-object p1, p0, Llg5;->c:Lj95;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Llg5;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Llg5;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Llg5;->d(Lvu0;Z)J

    move-result-wide v0

    iput-wide v0, p0, Llg5;->d:J

    :cond_0
    return-wide v0
.end method

.method public final b()Lj95;
    .locals 0

    iget-object p0, p0, Llg5;->c:Lj95;

    return-object p0
.end method

.method public final c(Lvu0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llg5;->d(Lvu0;Z)J

    return-void
.end method

.method public final d(Lvu0;Z)J
    .locals 16

    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    new-instance v1, Lbu0;

    invoke-direct {v1}, Lbu0;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v3, v0, Llg5;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    :goto_1
    iget-object v9, v0, Llg5;->a:Lgx0;

    sget-object v10, Llg5;->i:[B

    sget-object v11, Llg5;->h:[B

    if-ge v8, v4, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llg5$c;

    iget-object v13, v12, Llg5$c;->a:Ljv3;

    iget-object v12, v12, Llg5$c;->b:Lg37;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v10}, Lvu0;->write([B)Lvu0;

    invoke-interface {v1, v9}, Lvu0;->d(Lgx0;)Lvu0;

    invoke-interface {v1, v11}, Lvu0;->write([B)Lvu0;

    invoke-virtual {v13}, Ljv3;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {v13, v10}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v14

    sget-object v15, Llg5;->g:[B

    invoke-interface {v14, v15}, Lvu0;->write([B)Lvu0;

    move-result-object v14

    invoke-virtual {v13, v10}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v14

    invoke-interface {v14, v11}, Lvu0;->write([B)Lvu0;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lg37;->b()Lj95;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v10, "Content-Type: "

    invoke-interface {v1, v10}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v10

    iget-object v9, v9, Lj95;->a:Ljava/lang/String;

    invoke-interface {v10, v9}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v9

    invoke-interface {v9, v11}, Lvu0;->write([B)Lvu0;

    :cond_2
    invoke-virtual {v12}, Lg37;->a()J

    move-result-wide v9

    const-wide/16 v13, -0x1

    cmp-long v15, v9, v13

    if-eqz v15, :cond_3

    const-string v13, "Content-Length: "

    invoke-interface {v1, v13}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    move-result-object v13

    invoke-interface {v13, v9, v10}, Lvu0;->h(J)Lvu0;

    move-result-object v13

    invoke-interface {v13, v11}, Lvu0;->write([B)Lvu0;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lbu0;->p()V

    return-wide v13

    :cond_4
    :goto_3
    invoke-interface {v1, v11}, Lvu0;->write([B)Lvu0;

    if-eqz p2, :cond_5

    add-long/2addr v6, v9

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v1}, Lg37;->c(Lvu0;)V

    :goto_4
    invoke-interface {v1, v11}, Lvu0;->write([B)Lvu0;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v10}, Lvu0;->write([B)Lvu0;

    invoke-interface {v1, v9}, Lvu0;->d(Lgx0;)Lvu0;

    invoke-interface {v1, v10}, Lvu0;->write([B)Lvu0;

    invoke-interface {v1, v11}, Lvu0;->write([B)Lvu0;

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v2, Lbu0;->c:J

    add-long/2addr v6, v0

    invoke-virtual {v2}, Lbu0;->p()V

    :cond_7
    return-wide v6
.end method
