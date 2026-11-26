.class public final Lj79;
.super Li0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Li0<",
        "TTarget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lwr6;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Lc93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc93<",
            "TTarget;>;"
        }
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(Lwr6;IILyu5$c;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lwr6;->a:Lxe4;

    invoke-interface {v1}, Lme4;->getName()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v2, p5, 0x10

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    and-int/lit8 p5, p5, 0x20

    if-eqz p5, :cond_1

    move-object p4, v3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj79;->a:Lwr6;

    iput p2, p0, Lj79;->b:I

    iput p3, p0, Lj79;->c:I

    iput-object v1, p0, Lj79;->d:Ljava/lang/String;

    iput-object v0, p0, Lj79;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lj79;->f:Lc93;

    const/16 p1, 0xa

    if-ge p3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x64

    if-ge p3, p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/16 p1, 0x3e8

    if-ge p3, p1, :cond_4

    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lj79;->g:I

    return-void

    :cond_4
    const-string p0, "Max value "

    const-string p1, " is too large"

    invoke-static {p3, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final a()Ld3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3<",
            "TTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj79;->a:Lwr6;

    return-object p0
.end method

.method public final b()Lc93;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc93<",
            "TTarget;>;"
        }
    .end annotation

    iget-object p0, p0, Lj79;->f:Lc93;

    return-object p0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj79;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj79;->d:Ljava/lang/String;

    return-object p0
.end method
