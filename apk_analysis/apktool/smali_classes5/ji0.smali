.class public final Lji0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji0$a;,
        Lji0$b;,
        Lji0$d;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lji0$d;

.field public static final b:[Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcl4<",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "banners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lji0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lji0$d;

    invoke-direct {v0}, Lji0$d;-><init>()V

    sput-object v0, Lji0;->Companion:Lji0$d;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Lji0$c;->f:Lji0$c;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcl4;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lji0;->b:[Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lji0;-><init>(Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lwp7;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lji0;->a:Ljava/util/List;

    return-void

    :cond_0
    iput-object p2, p0, Lji0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lji0$b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lji0;->a:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 18
    sget-object p1, Lkx2;->b:Lkx2;

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lji0;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lji0;Lgu1;Ls96;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lji0;->a:Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sget-object v1, Lji0;->b:[Lcl4;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxp7;

    iget-object p0, p0, Lji0;->a:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, p0}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lji0$b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lji0;->a:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lji0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lji0;

    iget-object p0, p0, Lji0;->a:Ljava/util/List;

    iget-object p1, p1, Lji0;->a:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lji0;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lji0;->a:Ljava/util/List;

    const-string v0, "BenefitsBlockResponse(banners="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lrs2;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
